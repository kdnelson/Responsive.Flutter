import 'dart:convert';
import 'dart:io';
import 'dart:isolate';

import 'isolateDto.dart';

class IsolateHelper {
  List<Isolate> isolates;

  IsolateHelper() {
    isolates = new List();
  }

  void start() async {
    ReceivePort receivePort = ReceivePort();

    IsolateDto iso1 = new IsolateDto('1', receivePort.sendPort);
    IsolateDto iso2 = new IsolateDto('2', receivePort.sendPort);
    IsolateDto iso3 = new IsolateDto('3', receivePort.sendPort);

    isolates.add(await Isolate.spawn(isolatePayload, iso1));
    isolates.add(await Isolate.spawn(isolatePayload, iso2));
    isolates.add(await Isolate.spawn(isolatePayload, iso3));

    receivePort.listen((data) {
      print('Data: $data');
    });
  }

  static void isolatePayload(IsolateDto dto) async {
    print('https://swapi.dev/api/people/${dto.message}');
    var request = await HttpClient()
        .getUrl(Uri.parse('https://swapi.dev/api/people/${dto.message}'));
    var response = await request.close();

    await for (var contents in response.transform(Utf8Decoder())) {
      dto.sendPort.send(contents);
    }
  }

  void stop() {
    for (Isolate i in isolates) {
      if (i != null) {
        i.kill(priority: Isolate.immediate);
        i = null;
        print('Killed: ' + i.debugName);
      }
    }
  }
}

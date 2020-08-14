import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:isolate';

import 'isolateDto.dart';

class IsolateHelper {
  List<Isolate> isolates;

  IsolateHelper() {
    isolates = new List();
  }

  Future<dynamic> spawnIsolate() async {
    ReceivePort receivePort = ReceivePort();
    IsolateDto iso1 = new IsolateDto('8', receivePort.sendPort);
    isolates.add(await Isolate.spawn(isolatePayload, iso1));
    return receivePort.first;
  }

  static void isolatePayload(IsolateDto dto) async {
    print('Send: https://swapi.dev/api/people/${dto.message}');
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
        print('Killing Isolate...');
      }
    }
  }
}

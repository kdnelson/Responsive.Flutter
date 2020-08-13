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

  void start() async {
    ReceivePort receivePort = ReceivePort();

    IsolateDto iso1 = new IsolateDto('1', receivePort.sendPort);
    IsolateDto iso2 = new IsolateDto('2', receivePort.sendPort);
    IsolateDto iso3 = new IsolateDto('8', receivePort.sendPort);

    isolates.add(await Isolate.spawn(isolatePayload, iso1));
    isolates.add(await Isolate.spawn(isolatePayload, iso2));
    isolates.add(await Isolate.spawn(isolatePayload, iso3));

    receivePort.listen((data) {
      print('Recieved: $data');
    });
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
        print('Killing...');
      }
    }
  }

  Future<String> run() async {
    var receivePort = new ReceivePort();
    await Isolate.spawn(echo, receivePort.sendPort);
    var sendPort = await receivePort.first;
    var msg = await sendReceive(sendPort, "Some Great Message...");
    return 'received $msg';
  }

  static echo(SendPort sendPort) async {
    var port = new ReceivePort();
    sendPort.send(port.sendPort);

    await for (var msg in port) {
      var data = msg[0];
      SendPort replyTo = msg[1];
      replyTo.send(data);
      if (data == "bar") port.close();
    }
  }

  Future sendReceive(SendPort port, msg) {
    ReceivePort response = new ReceivePort();
    port.send([msg, response.sendPort]);
    return response.first;
  }
}

import 'dart:isolate';

class IsolateDto {
  String message;
  SendPort sendPort;

  IsolateDto(this.message, this.sendPort);
}

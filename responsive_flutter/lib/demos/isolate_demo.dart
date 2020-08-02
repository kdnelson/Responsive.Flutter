import '../utilities/isolate_helper.dart';

class IsolateDemo {
  IsolateHelper isoHelper = new IsolateHelper();
  IsolateDemo() {
    isoHelper.start();
    isoHelper.stop();
  }
}

import 'package:stacked/stacked.dart';

class StreamsViewModel extends StreamViewModel<int> {
  String title = 'Streams';
  String streamLabel = 'Switch Stream';
  bool _otherSource = false;
  String get epochTitle => 'Epoch in seconds \n $data';

  @override
  Stream<int> get stream =>
      _otherSource ? epochUpdates() : epochFasterUpdates();

  void swapSources() {
    _otherSource = !_otherSource;
    notifySourceChanged();
  }

  void initialize() {
    // Get state from Database...
    notifyListeners();
  }

  Stream<int> epochUpdates() async* {
    while (true) {
      await Future.delayed(const Duration(seconds: 2));
      yield DateTime.now().millisecondsSinceEpoch;
    }
  }

  Stream<int> epochFasterUpdates() async* {
    while (true) {
      await Future.delayed(const Duration(milliseconds: 200));
      yield DateTime.now().millisecondsSinceEpoch;
    }
  }
}

class FutureDemo {
  FutureDemo() {
    run();
  }

  void run() async {
    methodA();
    await methodB();
    await methodC('main');
    methodD();

    await Future.delayed(Duration(seconds: 4));

    method1();
    method2();
  }

  methodA() {
    print('A');
  }

  methodB() async {
    print('B start');
    await methodC('B');
    print('B end');
  }

  methodC(String from) async {
    print('C start from $from');

    Future(() {
      print('C running Future from $from');
    }).then((_) {
      print('C end of Future from $from');
    });

    print('C end from $from');
  }

  // Notice 'MethodD' is not called last.
  // If this is your intention, simply add await Future(() {} in the 'methodC'
  methodD() {
    print('D');
  }

  // Notice the .forEach collects all values in the loop, exits the loop,
  // then pushes all the values as callbacks to the Event Queue to run sequencially
  void method1() {
    List<String> myArray = <String>['a', 'b', 'c'];
    print('\nMethod1: before loop');
    myArray.forEach((String value) async {
      await delayedPrint('Method1: ' + value);
    });
    print('Method1: end of loop');
  }

  // Notice the .for iterates all values in the loop, pushes each value as a callback
  // to the Event Queue to run sequencially.  Then calls 'End of loop'
  void method2() async {
    List<String> myArray = <String>['a', 'b', 'c'];
    print('Method2: before loop');
    for (int i = 0; i < myArray.length; i++) {
      await delayedPrint('Method2: ' + myArray[i]);
    }
    print('Method2: end of loop');
  }

  Future<void> delayedPrint(String value) async {
    await Future.delayed(Duration(seconds: 1));
    print('delayedPrint: $value');
  }
}

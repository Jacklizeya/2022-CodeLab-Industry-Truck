import 'dart:async';


// When code hooks up with Timer, it generates 发报机
// When code meets Art and Business, UX UI, it generates 产品

class NumberCreator {
  var _count = 1;
  // one of its field, one of its element, Generic types
  final _controller = StreamController<int>();

  get stream => _controller.stream;

  NumberCreator() {
    Timer.periodic(Duration(seconds: 1), (_) {
      _controller.sink.add(_count);
      _count++;
    });
  }
}

void main() {
  final myStream = NumberCreator().stream;

  final mySubscription = myStream.listen((data) {
    print(data);
  });

}


subscription.pause();
subscription.resume();
subscription.cancel();

class NumberCreator{
  var _count = 1;
  
  final _controller = StreamController<int>();
  
  NumberCreator() {
   Timer.periodic(Duration(seconds: 1), (t) {
     _controller.sink.add(_count);
     _count++;
   }); 
  }
}

final myStream = NumberCreator().stream;
final subscription = myStream.listen(
  (data) {print('Data: $data');},
  onError: (err) {print('Error!');},
  cancelOnError: false,
  onDone: () {print('Done');},
);

subscription.pause();
subscription.resume();
subscription.cancel();

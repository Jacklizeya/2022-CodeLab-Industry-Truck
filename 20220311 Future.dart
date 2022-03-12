import 'dart:async';

void main() {
  
  // assign an uncompleted future first
  final myFuture = Future(() {
    print('start working on the future');
    return 12;
  });
  // If you print now, you will see an uncompleted Future
  final anotherFuture = Future.value(12);
  final thirdFuture = Future.delayed(Duration(seconds: 5), 
       () {print('Five seconds'); return 100;})
          .then((returnValue){print(returnValue);});
  
  print(myFuture);
  print(anotherFuture);
  print(thirdFuture);
  // keep processing
  print('last line of this code');
  // Now I will run the callback
  // Once I get the value, Future.status will be completed
  // Future.value will be 12 
}
  

Future<int> createData () async {
  print('Just enter the outtakes time function');
  // do it now
  await innerTakesTime();
  return 1000;
}

Future<int> innerTakesTime () async {
  print('Just enter the inner takes time function');
  // do it now
  await Future.delayed(
    Duration(seconds: 5),
    () {print('Duration is done');});
  return 100;
}


void main () {
  // do it later
  final aFuture = createData();
  print(aFuture);
  print('Main');
}

// Just enter the outtakes time function
// Just enter the inner takes time function
// Instance of '_Future<int>'
// Main
// Duration is done

// Conclusion: it will enter the body, and proceed as much as it can, like activating the network request, file reading...
// It will await the result AFTER it activate that function.







// There is another version, shut down operation at Main by using await

Future<int> createData () async {
  print('Just enter the outtakes time function');
  // do it now
  await innerTakesTime();
  return 1000;
}

Future<int> innerTakesTime () async {
  print('Just enter the inner takes time function');
  // do it now
  await Future.delayed(
    Duration(seconds: 5),
    () {print('Duration is done');});
  return 100;
}


void main () async {
  // do it later
  final aFuture = await createData();
  print(aFuture);
  print('Main');
}

// Just enter the outtakes time function
// Just enter the inner takes time function
// Instance of '_Future<int>'
// Main
// Duration is done

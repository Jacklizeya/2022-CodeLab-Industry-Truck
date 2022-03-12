Future<int> createData () async {
  print('Just enter the function');
  // do it now
  await Future.delayed(
    Duration(seconds: 5),
    () {print('Duration is done');});
  print('inside creating data');
  return 100;
}

void main () {
  // do it later
  final aFuture = createData();
  print('Main');
}

// Just enter the function
// Main
// Duration is done
// inside creating data

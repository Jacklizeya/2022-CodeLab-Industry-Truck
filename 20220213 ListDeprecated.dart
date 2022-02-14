void main() {
  // All of these are OK
  List<int> listA = [3, 4, 5, 6];
  var listB = <int>[7, 8, 9, 10];
  List<int> listC = <int> [11, 12, 13, 14];

  //This is not OK: warning list literal can not be prefixed
  List<int> listD = List<int> [22, 23, 24, 25];

  print(listA);
  print(listB);
  print(listC);
}


// The tutorial is using some outdated!

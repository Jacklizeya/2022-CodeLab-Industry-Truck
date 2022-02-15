String longest(String a, String b) {
  var setA = <String> {};
  for (int i = 0; i < a.length; i++) {
    if (!setA.contains(a[i])) {setA.add(a[i]);}
  }
  
  var setB = <String> {};
  for (int j = 0; j < b.length; j++) {
    if (!setB.contains(b[j])) {setB.add(b[j]);}
  }
  
  var sequence = "abcdefghijklmnopqrstuvwxyz";
  var result = "";
  for (int k =0; k < 26; k++) {
    if (setA.contains(sequence[k]) || setB.contains(sequence[k])) {
      result += sequence[k];
    }
  }
  
  return result;
}

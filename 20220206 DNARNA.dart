String rnaToDna(String dna) {
  // your code here
  if (dna.length == 0) {return "";}
  print(dna);
  String result = "";
  
  for (int i = 0; i < dna.length; i++) {
    if (dna[i] == "T") {result += "U";} else {result += dna[i];}
  }
  
  return result;
}

// Other people:
string.replaceAll("a", "b");


int? firstNonConsecutive(List<int> arr) { 
  
  for (int i = 1; i < arr.length; i++){
    if (arr[i] != arr[i-1] + 1) {return arr[i];}
  }
  
  return null;
}

String getMiddle(String s) {
  //Code goes here!
  
  if (s.length % 2 == 1) {
    return s[(s.length/2).ceil() - 1];
  } else {
    return s.substring((s.length / 2).ceil() - 1, (s.length/ 2).ceil() + 1);
  }
  
  
  
}


// Key take away: int/int is double

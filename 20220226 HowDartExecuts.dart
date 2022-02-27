int log(int value) {
    print(value);
    return value;
  }

  class Super {
    int superField6 = log(6);
    int superField9;
    Super(this.superField5) : superField8 = log(8), superField9 = log(9) {
      log(10);
    }
    var superField7 = log(7);
    var superField8;
    var superField5;
  }

  class Sub extends Super {
    var subField1 = log(1);
    var subField4;
    Sub() : subField3 = log(3), subField4 = log(4), super(log(5)) {
      log(11);
    }
    var subField2 = log(2);
    var subField3;
  }

  
  main() {
    new Sub();
  }

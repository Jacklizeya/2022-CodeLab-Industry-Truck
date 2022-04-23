Extend its daddy

with its mum
Something a class can with
Mixin 

implement something abstract (just a bunch of interface, no implementation)


class mum {
  cook() {
    print("I can cook");
  }
}

mixin dad {
  work() {
    print("I can make money");
  }
}

abstract class human {
  walk();
}

class futureSon extends mum with dad implements human {
  @override
  walk() {
    print("I can walk very fast");
  }
}

void main() {
  var son1 = futureSon();
  son1.work();
  son1.walk();
  son1.cook();
}

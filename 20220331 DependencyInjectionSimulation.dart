// Dumb Version

class Laptop {
  // Tightly connected to Japan Hard Drive: Not smart
  // We are doing very badly
  HardDrive hardDrive = JapanHardDrive();
}

class HardDrive {
  String name = 'hardDrive';
}

class JapanHardDrive extends HardDrive {
  @override
  String name = 'JapanHardDrive';
}

class KoreaHardDrive extends HardDrive {
  @override
  String name = 'KoreaHardDrive';
}

// This is to simulate Angular 
void main() {
  Laptop jackLaptop = Laptop();
  print(jackLaptop.hardDrive.name);
}


// Better Version

class Laptop {
  HardDrive? hardDrive;

  Laptop(this.hardDrive);
  // Simulate passing parameter to this.hardDrive, Abstraction is here
}

class HardDrive {
  String name = 'hardDrive';
}

class JapanHardDrive extends HardDrive {
  String name = 'JapanHardDrive';
}

class KoreaHardDrive extends HardDrive {
  String name = 'KoreaHardDrive';
}

// This Main is to simulate Angular BootStrap
void main() {
  // Simulate the provider here as Global provider
  // DI used here
  HardDrive fakeHardDrive1 = JapanHardDrive();
  HardDrive fakeHardDrive2 = KoreaHardDrive();
  // Simulate the Bootstrap process
  // Can't really simulate 
  Laptop jackLaptop = Laptop(fakeHardDrive1);
  Laptop kellyLaptop = Laptop(fakeHardDrive2);
  print(jackLaptop.hardDrive?.name);
  print(kellyLaptop.hardDrive?.name);
}

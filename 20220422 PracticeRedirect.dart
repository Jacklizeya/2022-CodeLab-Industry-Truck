class Spacecraft {
  String name;
  DateTime? launchDate;

  Spacecraft(this.name, this.launchDate);

  // This is called redirect
  Spacecraft.notLaunched(name) : this(name, null);

  describe() {
    if (launchDate != null) {
      print("Launched on $launchDate");
    } else {
      print("not launched yet");
    }
  }
}

void main() {
  Spacecraft number1 = Spacecraft("Tesla #1", DateTime(1999, 09, 11));
  number1.describe();
}

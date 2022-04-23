/*
Constructor for class is totally different!

Constructor(a, this.b) : super(a);


In Angular I saw lots of 


subClass( this.a, this.b, this.c, d, e ): super (d, e);
*/

class EV {
  String battery;

  EV(this.battery);
}

class Tesla extends EV {
  String laptop;

  Tesla(battery, this.laptop) : super(battery);
}

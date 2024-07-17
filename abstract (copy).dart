abstract class Vehicle {
  void start();
  void stop();
}

class Car extends Vehicle {
  @override
  void start() {
    print("Car started");
  }

  void stop() {
    print("Car stopped");
  }
}

class Bike extends Vehicle {
  @override
  void start() {
    print("Bike started");
  }

  void stop() {
    print("Bike stopped");
  }
}

void main() {
  var car = Car();
  car.start();
  car.stop();

  var bike = Bike();
  bike.start();
  bike.stop();
}

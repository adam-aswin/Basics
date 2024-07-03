class Vehicle {
  String? type;
  int? wheels;
  void prop(){
    print("this is a $type");
    print("no. of wheels is $wheels");
  }
}

class Car extends Vehicle{
  String? brand;
  int? price;
  void proper(){
    print("this is a car");
    print("$brand");
  }
}
void main(){
  Car bmw=Car();
  bmw.brand="BMW";
  bmw.type="car";
  bmw.wheels=4;
  bmw.prop();
}
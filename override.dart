class Father {
  void drink() {
    print("Father drink alcahol");
  }
}

class Child extends Father {
  @override
  void drink() {
    print("Son drink pepsi");
  }
}

void main() {
  var dt = Child();
  dt.drink();
}

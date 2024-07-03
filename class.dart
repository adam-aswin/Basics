class student{
  String? name;
  int? age;
  void printName(){
    print("name is $name\nage is $age");
  }
}

void main(){
  student vanish=student();
  vanish.name="vanish";
  vanish.age=20;
  vanish.printName();
}
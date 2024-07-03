class Person{
  String? name;
  int? age;
  Person({this.name,this.age}){
    print("Person Constructor");
  }
  Person.named({this.name}){
    print("Named constructor");
  }
}
class Student extends Person{
  int? rollNo;
  // Student({name,age,this.rollNo}):super(name: name,age: age){
  //   print("student constructor");
  // }
  Student({name,age,this.rollNo}):super.named(name: name){
    print("student constructor");
  }
}

void main(){
  var Stud=Student(name: "melvin",age: 20,rollNo: 22);
  print(Stud.name);
  print(Stud.age);
  print(Stud.rollNo);
}
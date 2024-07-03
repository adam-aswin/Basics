class student{
  String? name;
  int? age;
  student({n,a}){
    this.age=a;
    this.name=n;
  }
  void printName(){
    print("name is $name\nage is $age");
  }
}

void main(){
  student rahul=student(a: 20,n: "Rahul");
  rahul.printName();
}
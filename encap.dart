class Employee{
  var _name;


  String getName(){
    return _name;
  }

  void setName(name){
    this._name=name;
  }
}

void main(){
  Employee employee=Employee();
  employee.setName("alan");
  print(employee.getName());
}
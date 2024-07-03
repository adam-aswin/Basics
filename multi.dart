class  GrandFather{
  
void driver(){
  print("he is a driver");
}
void bearedMan(){
  print("He have thick beared");
}
}

class Father extends GrandFather{
  void engineer(){
    print("He is an application developer");
  }
}

class Child extends Father{
  void photographer(){
    print("He is a photographer");
  }
}

void main(){
  Child rahul=Child();
  rahul.photographer();
  rahul.driver();
  rahul.engineer();
  rahul.bearedMan();
}
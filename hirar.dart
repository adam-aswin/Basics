class  Father{
  
void driver(){
  print("he is a driver");
}
void bearedMan(){
  print("He have thick beared");
}
}

class FirstChild extends Father{
  void engineer(){
    print("He is an application developer");
  }
}

class SecondChild extends Father{
  void photographer(){
    print("He is a photographer");
  }
}

void main(){
  SecondChild rahul=SecondChild();
  rahul.photographer();
  rahul.driver();
  // FirstChild alan=FirstChild();
  // alan.engineer();
  // alan.bearedMan();
}
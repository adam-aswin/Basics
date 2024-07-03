class car{
  String? bname;
  int? nwheels;
  String? capacity;
  String? tork;
  void printProp(){
    print("Brand Name is $bname\nNumber of wheels is $nwheels\nCapcity of fuel is $capacity\nTork is $tork");
  }
}

void main(){
  car bmw=car();
  bmw.bname="BMW";
  bmw.nwheels=4;
  bmw.capacity="100 ltr";
  bmw.tork="200 km/hr";
  bmw.printProp();
}
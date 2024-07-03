class Vehicle{
  var _model;
  var _year;

  String get model=>_model;
  set model(String model)=>this._model=model;

  int get year=>_year;
  set year(int year)=>this._year=year;

}

void main(){
  var vehicle=Vehicle();
  vehicle.model="ASW221123W";
  vehicle.year=2005;
  print(vehicle.model);
  print(vehicle.year);
}
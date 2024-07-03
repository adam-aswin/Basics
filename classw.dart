class Laptop{
  int? id;
  String? name;
  String? ram;
  Laptop({id,name,ram}){
    this.id=id;
    this.name=name;
    this.ram=ram;
  }
  void prop(){
    print("id of Laptop is $id, Name of Laptop is $name and Ram of Laptop is $ram");
  }
}

void main(){
  Laptop lap=Laptop(id: 1,name: "Acer",ram: "8 GB");
  Laptop lap1=Laptop(id: 2,name: "Dell",ram: "8 GB");
  Laptop lap2=Laptop(id: 3,name: "Tuff",ram: "16 GB");
  lap.prop();
  lap1.prop();
  lap2.prop();
}
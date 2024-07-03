class House{
  int? id;
  String? name;
  String? price;

  House({id,name,price}){
    this.id=id;
    this.name=name;
    this.price=price;
  }

  void prop(){
    List ls=[];
    print("Id of this house is ${this.id}, Name of this house is ${this.name} and Price of this house ${this.price}");
    ls.add(id);
    ls.add(name);
    ls.add(price);
    print(ls);
  }
}

void main(){
  House house=House(id: 1,name: "Visker",price: "2000000 rs");
  House house1=House(id: 2,name: "Palstone",price: "5000000 rs");
  House house2=House(id: 3,name: "Maximus",price: "25000000 rs");
  house.prop();
  house1.prop();
  house2.prop();
}
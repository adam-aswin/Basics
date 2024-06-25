void main(){
  String? name;//="Aswin";
  print(name);
  name="Aswin";
  print(name);
  name=null;
  if(name==null){
    print("$name is null");
  }

  String name1=name??"satheesh";
  print(name1);
}
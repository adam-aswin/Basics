void main(){
  List<dynamic>? ls=[];
  for(int i=1;i<=15;i++){
    if(i%5==0){
      ls.add("buzz");
    }
    else{
      ls.add(i);
    }
    
  }
  print(ls);
}
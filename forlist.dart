void main(){
  List<dynamic>? ls=[];
  for(int i=1;i<=15;i++){
    if(i%3==0){
      ls.add("fizz");
    }
    else{
      ls.add(i);
    }
    
  }
  print(ls);
}
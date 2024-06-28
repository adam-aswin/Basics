void main(){
  List<dynamic>? ls=[];
  for(int i=1;i<=30;i++){
    if(i%3==0 &&  i%5==0){
      ls.add("fizzbuzz");
    }
    else if(i%3==0){
      ls.add("fizz");
    }
    else if(i%5==0){
      ls.add("buzz");
    }
    else{
      ls.add(i);
    }
    
  }
  print(ls);
}
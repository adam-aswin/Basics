void main() {
  //sync

  // print("Start");
  // for (int i = 0; i <= 10; i++) {
  //   print(i);
  // }
  // print("End");
//========================================
  //async

  print("Start");
  Future.delayed(
      Duration(seconds: 3),
      () => {
            for (int i = 1; i <= 10; i++) 
            {print(i)}
          });
  print("End");
}

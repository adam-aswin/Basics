import 'dart:io';

void main(){
  File file=File("dart.txt");

  // file.writeAsStringSync("\nbye",mode: FileMode.append);
  String content=file.readAsStringSync();
  print(content);

}
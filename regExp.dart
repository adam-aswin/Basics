// // void main() {
//   // RegExp reg = RegExp(r'[A-Z,a-z]');
//   // var a = reg.hasMatch('cat eat fish');
//   // var b = reg.hasMatch('rat eat cheese');
//   // var c = reg.hasMatch('bat eat fruit');

//   // print("$a\n$b\n$c\n");
// // }

// void main(){
//   RegExp reg = RegExp(r'fishes?$');
//   var a = reg.hasMatch('cat eat fish');
//   var b = reg.hasMatch('rat eat cheese');
//   var c = reg.hasMatch('bat eat fruit');

//   print("$a\n$b\n$c\n");

// }

// void main() {
//   RegExp reg = RegExp(r'fish(es)?$');
//   var a = reg.hasMatch('cat eat fish');
//   var b = reg.hasMatch('rat eat fishes');
//   var c = reg.hasMatch('bat eat fruit');

//   print("$a\n$b\n$c\n");
// }

void main() {

RegExp reg = RegExp(r'^[6-9]\d{9}$');
  var a = reg.hasMatch('8590717324');
  var b = reg.hasMatch('rat eat fishes');
  var c = reg.hasMatch('bat eat fruit');

  print("$a\n$b\n$c\n");
}

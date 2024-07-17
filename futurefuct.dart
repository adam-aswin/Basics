void main() {
  getUserName().then((name) => print(name));
}

Future<String> getUserName() async {
  return Future.delayed(Duration(seconds: 5), () => "alan");
}

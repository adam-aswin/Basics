void main() {
  print("Start");
  getData();
  print("End");
}

void getData() async {
  try {
    String data = await middleFunction();
    print(data);
  } catch (error) {
    print(error);
  }
}

Future<String> middleFunction() {
  return Future.delayed(Duration(seconds: 5), () => "hello world");
}

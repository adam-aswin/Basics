void main() {
  print("start");
  try {
    int a = 10;
    int b = 0;
    int c = a ~/ b;
    print(c);
  } catch (error) {
    print("can not divisible");
  } finally {
    print("Thank you");
  }
  print("end");
}

class Counter {
  static int count = 0;
  Counter() {
    count += 1;
  }
  void displayCount() {
    print("Count is $count");
  }
}

void main() {
  var cnt = Counter();
  cnt.displayCount();
  var cnt1 = Counter();
  cnt1.displayCount();
  var cnt2 = Counter();
  cnt2.displayCount();
}

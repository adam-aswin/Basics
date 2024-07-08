enum Gender { male, female, other }

class Counter {
  String? name;
  int? age;
  Gender? gender;
  Counter(this.name, this.age, this.gender) {}

  void diplayCounter() {
    print("Name is $name\nage is $age\nGender is $gender");
  }
}

void main() {
  var cn = Counter("alan", 20, Gender.male);
  cn.diplayCounter();
}

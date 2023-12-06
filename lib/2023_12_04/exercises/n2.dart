class Person {
  String name;

  Person({required this.name});
}

void main() {
  final List<Person> people = [Person(name: '홍길동'), Person(name: '한석봉')];

  for (var e in people) {
    print(e.name);
  }
}

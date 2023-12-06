class Person {
  String name;

  Person({required this.name});
}

void main() {
  final List<Person> people = [Person(name: '홍길동'), Person(name: '한석봉')];
  final Map<String, int> ageInfo = {people[0].name: 20, people[1].name: 25};

  for (final Person person in people) {
    print(person.name);
  }

  print(''); // enter

  ageInfo.forEach((final String name, final int age) {
    print('$name의 나이는 $age살');
  });
}

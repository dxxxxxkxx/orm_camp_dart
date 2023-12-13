class Book {
  String title;
  DateTime publishDate;
  String comment;

  Book({
    required this.title,
    required this.publishDate,
    required this.comment,
  });

  @override
  bool operator ==(final Object other) =>
      identical(this, other) ||
      other is Book &&
          runtimeType == other.runtimeType &&
          title == other.title &&
          publishDate.year == other.publishDate.year &&
          publishDate.month == other.publishDate.month &&
          publishDate.day == other.publishDate.day;

  @override
  int get hashCode => title.hashCode ^ publishDate.hashCode;

  Book copyWith({
    String? title,
    DateTime? publishDate,
    String? comment,
  }) {
    return Book(
      title: title ?? this.title,
      publishDate: publishDate ?? this.publishDate,
      comment: comment ?? this.comment,
    );
  }

  @override
  String toString() {
    return 'Book{title: $title, publishDate: $publishDate, comment: $comment}';
  }
}

void main() {
  final DateTime today = DateTime.now();
  final DateTime yesterday = today.subtract(const Duration(days: 1));
  final DateTime tomorrow = today.add(const Duration(days: 1));

  final Book book1 =
      Book(title: 'Book1', publishDate: today, comment: 'comment1');
  final Book book2 =
      Book(title: 'Book1', publishDate: today, comment: 'comment2');
  final Book book3 =
      Book(title: 'Book1', publishDate: yesterday, comment: 'comment3');
  final Book book4 =
      Book(title: 'Book4', publishDate: today, comment: 'comment4');
  final Book book5 =
      Book(title: 'Book5', publishDate: tomorrow, comment: 'comment5');
  final Book book6 = book1.copyWith();

  final List<Book> bookList = [book1, book2, book3, book4, book5, book6];
  final Set<Book> bookSet = {book1, book2, book3, book4, book5, book6};
  final Map<String, Book> bookMap = {
    '#1': book1,
    '#2': book2,
    '#3': book3,
    '#4': book4,
    '#5': book5,
    '#6': book6
  };

  bookList.forEach(print);
  print('');
  print(bookSet.length);
  print('');
  print(Map.fromEntries(bookMap.entries.toList()
    ..sort((final MapEntry<String, Book> prev,
            final MapEntry<String, Book> next) =>
        prev.value.publishDate.compareTo(next.value.publishDate))));
}

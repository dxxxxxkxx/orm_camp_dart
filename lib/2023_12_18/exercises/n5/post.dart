class Post {
  int? index;
  final int? userId;
  String? title;
  String? body;

  Post({this.index, this.userId, this.title, this.body});

  Post.fromJson(Map<String, dynamic> json)
      : index = int.tryParse(json['id']?.toString() ?? ''),
        userId = int.tryParse(json['userId']?.toString() ?? ''),
        title = json['title']?.toString(),
        body = json['body']?.toString();

  Map<String, dynamic> toJson() =>
      {'id': index, 'userId': userId, 'title': title, 'body': body};

  @override
  String toString() =>
      'Post { index: $index, userId: $userId, title: $title, body: $body }';

  @override
  bool operator ==(Object other) =>
      other is Post &&
      runtimeType == other.runtimeType &&
      index == other.index &&
      userId == other.userId &&
      title == other.title &&
      body == other.body;

  @override
  int get hashCode =>
      index.hashCode ^ userId.hashCode ^ title.hashCode ^ body.hashCode;

  Post copyWith({int? index, int? userId, String? title, String? body}) => Post(
        index: index ?? this.index,
        userId: userId ?? this.userId,
        title: title ?? this.title,
        body: body ?? this.body,
      );
}

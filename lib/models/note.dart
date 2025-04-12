class Note {
  final int? id;
  final String title;
  final String content;
  final DateTime date;

  Note({
    this.id,
    required this.title,
    required this.content,
    required this.date,
  });

  Map<String, dynamic> toMap() => {
    'id': id,
    'title': title,
    'content': content,
    'date': date.toIso8601String(),
  };

  static Note fromMap(Map<String, dynamic> map) => Note(
    id: map['id'],
    title: map['title'],
    content: map['content'],
    date: DateTime.parse(map['date']),
  );
}

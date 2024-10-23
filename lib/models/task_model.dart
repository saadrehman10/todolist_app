class Task {
  int? id;
  String? title;
  String? description;
  bool? complete;

  Task({this.id, this.title, this.description, this.complete});

  factory Task.fromJson(Map<String, dynamic> map) {
    return Task(
      id: map['id'],
      title: map['title'],
      description: map['description'],
      complete: map['complete'],
    );
  }

  Map<String, dynamic> toJson() {
    return {'id': id, 'title': title, 'description': description, 'complete': complete};
  }
}

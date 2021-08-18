class Task {
  int id;
  String title;
  String name;
  String photo;
  DateTime date;
  String priority;
  int status;

  Task(
      { this.title,
        this.name,
        this.photo,
        this.date,
        this.priority,
        this.status});
  Task.withId(
      {this.id,
        this.title,
        this.name,
        this.photo,
        this.date,
        this.priority,
        this.status});

  Map<String, dynamic> toMap() {
    final map = Map<String, dynamic>();
    if(id != null){
      map['id']=id;
    }
    map['title']=title;
    map['name']=name;
    map['photo']=photo;
    map['date']=date.toIso8601String();
    map['priority']=priority;
    map['status']=status;
    return map;
  }

  factory Task.fromMap(Map<String, dynamic> map){
    return Task.withId(
      id: map['id'],
        title: map['title'],
        name: map['name'],
        photo: map['photo'],
        date: DateTime.parse(map['date']),
        priority: map['priority'],
        status: map['status'],
    );
  }
}
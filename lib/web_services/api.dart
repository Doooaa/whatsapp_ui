class People {
  late String name;
  late String photo;
  late int age;
  late String description;
  late String date;
  late String time;

  People(this.name, this.photo, this.age, this.time, this.description, this.date);

  People.fromJson(Map<String, dynamic> json) {
    name = json['name'] as String;
    age = json['age'] as int;
    photo = json['photo'] as String;
    description = json['description'] as String;
    date = json['date'] as String;
    time = json['time'] ;
  }
}


// ignore_for_file: public_member_api_docs, sort_constructors_first

class People {
  late String name;
  late String photo;
  late int age;
  late String description;
  late String date;
  late String time;

  People(
      this.name, this.photo, this.age, this.time, this.description, this.date);

  People.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    age = json['age'];
    photo = json['photo'];
    description = json['description'];
    date = json['date'];
    time = json['time'];
  }
}

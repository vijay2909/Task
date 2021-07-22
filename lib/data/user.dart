import 'package:flutter/cupertino.dart';

class User {
  String name;
  String religion;
  String state;
  String country;
  String image;

  User(this.name, this.religion, this.state, this.country, this.image);
}

List<User> girlsList = [
  User('The Hulk', 'Sikh', 'Delhi', 'India', 'assets/images/girl.jpg'),
  User('Doctor Strange', 'Hindu', 'Rajasthan', 'India', 'assets/images/girl2.jpg'),
  User('Iron man', 'Muslim', 'UP', 'India', 'assets/images/girl3.jpg'),
  User('Spider man', 'Sikh', 'Hariyana', 'India', 'assets/images/girl4.jpg'),
  User('Captain', 'Hindu', 'Delhi', 'India', 'assets/images/girl6.jpg')
];

class Menu {
  IconData icon;
  String title;
  bool isCustom;
  Widget? widget;
  Menu({required this.icon, required this.title, required this.isCustom, this.widget});
}

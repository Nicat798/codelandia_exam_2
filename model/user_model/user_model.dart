abstract class UserModel {
  String mail;
  String password;
  String name;
  String surName;
  int age;

  void loginUser() {}

  UserModel(
      {required this.name,
      required this.surName,
      required this.age,
      required this.mail,
      required this.password});
}

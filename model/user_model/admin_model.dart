import 'user_model.dart';

class AdminModel extends UserModel {
  AdminModel({
    required super.name,
    required super.surName,
    required super.age,
    required super.mail,
    required super.password,
  });

  static List<AdminModel> adminModels = [
    AdminModel(
      name: 'Admin',
      surName: 'adminadmin',
      age: 19,
      mail: 'admin@gmail.com',
      password: '12345',
    ),
    AdminModel(
      name: 'admin2',
      surName: 'adminadmin2',
      age: 20,
      mail: 'admin2@gmail.com',
      password: '12345',
    ),
  ];
}

import 'user_model.dart';

class BasicUserModel extends UserModel {
  BasicUserModel({
    required super.name,
    required super.surName,
    required super.age,
    required super.mail,
    required super.password,
  });

  static List<BasicUserModel> basicUsers = [
    BasicUserModel(
      name: 'Nicat',
      surName: 'Aliyev',
      age: 20,
      mail: 'nicat@gmail.com',
      password: '123456789',
    ),
    BasicUserModel(
      name: 'Cahid',
      surName: 'Agayev',
      age: 25,
      mail: 'cahid@gmail.com',
      password: '12345',
    )
  ];
}

import 'dart:io';

import 'model/user_model/admin_model.dart';
import 'model/user_model/basic_user_model.dart';
import 'model/vehicle_model/bus_model.dart';
import 'model/vehicle_model/truck_model.dart';

BasicUserModel? basicUserModel;
AdminModel? adminModel;
List<BusModel> busCars = [
  BusModel(
    brand: "BusBrand",
    busType: "Big Bus",
    color: "Red",
    model: 'BusV10',
  ),
  BusModel(
    brand: "BusBrand2",
    busType: "Big Bus2",
    color: "Grey",
    model: 'BusV20',
  ),
  BusModel(
    brand: "BusBrand3",
    busType: "Big Bus3",
    color: "Black",
    model: 'BusV30',
  ),
];

List<TruckModel> truckCars = [
  TruckModel(
    vehicleCount: "4",
    brand: 'TruckModel',
    color: 'Blue',
    model: 'Truckv10',
  ),
  TruckModel(
    vehicleCount: "4",
    brand: 'TruckModel',
    color: 'Blue',
    model: 'Truckv10',
  ),
  TruckModel(
      vehicleCount: "6",
      brand: 'TruckModel2',
      color: 'White',
      model: 'Truckv20'),
];

void main() {
  print('Xoş Gəlmisiniz. Xahiş edirik mail və şifrənizi qeyd edin');
  getUserCredentials();

  if (basicUserModel != null) {
    userSide();
  } else if (adminModel != null) {
    adminSide();
  }
}

Map<String, String>? getUserCredentials() {
  bool isContinue = true;

  while (isContinue) {
    String? userMailInput = stdin.readLineSync();
    String? userPasswordInput = stdin.readLineSync();

    if ((userMailInput != null &&
            userMailInput.isNotEmpty &&
            userMailInput.trim() != '') &&
        (userPasswordInput != null &&
            userPasswordInput.isNotEmpty &&
            userPasswordInput.trim() != '')) {
      Map<String, String> userCredentials = {userMailInput: userPasswordInput};

      userCredentials.forEach((key, value) {
        checkUserCredentials(userMail: key, userPassword: value);
      });
      isContinue = false;

      return {userMailInput: userPasswordInput};
    } else {
      print('Yanlış məlumat yazdınız. Yenidən daxil edin...');
    }
  }
  return null;
}

void checkUserCredentials({
  required String userMail,
  required String userPassword,
}) {
  BasicUserModel.basicUsers.forEach(
    (element) {
      if (userMail == element.mail && userPassword == element.password) {
        basicUserModel = BasicUserModel(
          name: element.name,
          surName: element.surName,
          age: element.age,
          mail: element.mail,
          password: element.password,
        );
      }
    },
  );

  if (basicUserModel == null) {
    AdminModel.adminModels.forEach(
      (element) {
        if (userMail == element.mail && userPassword == element.password) {
          adminModel = AdminModel(
            name: element.name,
            surName: element.surName,
            age: element.age,
            mail: element.mail,
            password: element.password,
          );
        }
      },
    );
  }

  if (basicUserModel == null && adminModel == null) {
    print('Bele bir istifadeci yoxdur. Yenidən qeyd edin');
    getUserCredentials();
  }
}

void userSide() {
  getAllCars();
}

void adminSide() {}

void getAllCars() {
  print("Butun masinlar aşağıdaki siyahıdadır");
  print('Avtobuslar');

  busCars.forEach((element) {
    print(
        "${element.brand}, ${element.model}, ${element.busType}, ${element.color}");
  });

  print('Yükdaşıma');

  truckCars.forEach((element) {
    print(
        "${element.brand}, ${element.model}, ${element.vehicleCount}, ${element.color}");
  });
}

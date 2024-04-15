import '../../color_enum/colors_enum.dart';

abstract class VehicleModel {
  String brand;
  String model;
  ColorsEnum color;

  VehicleModel({
    required this.brand,
    required this.model,
    required this.color,
  });
}

import 'vehicle_model.dart';

class BusModel implements VehicleModel {
  final String busType;

  @override
  String brand;

  @override
  String color;

  @override
  String model;

  BusModel({
    required this.busType,
    required this.brand,
    required this.color,
    required this.model,
  });
}

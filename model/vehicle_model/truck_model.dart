import '../../color_enum/colors_enum.dart';
import 'vehicle_model.dart';

class TruckModel implements VehicleModel {
  String vehicleCount;
  @override
  String brand;

  @override
  ColorsEnum color;

  @override
  String model;

  TruckModel({
    required this.vehicleCount,
    required this.brand,
    required this.color,
    required this.model,
  });
}

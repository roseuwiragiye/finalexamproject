// import 'package:fitness_dashboard_ui/model/health_model.dart';

import '../model/health_model.dart';

class HealthDetails {
  final healthData = const [
    HealthModel(
        icon: 'assets/icons/accelerometer.png',
        value: "60%",
        title: "Motion detector"),
   
    // HealthModel(
    //     icon: 'assets/icons/light.png', value: "7km", title: "Brightness"),
    HealthModel(
        icon: 'assets/icons/sleep.png', value: "80%", title: "Light"),
    HealthModel(
        icon: 'assets/icons/map_maker.jpeg',
        value: " kG 340 st 2",
        title: "Location"),
  ];
}

class Car {
  final int id;
  final String name, description, image, range,price;

  final Map performance;
  final Map batteryAndCharging;
  final Map energyConsumption;
  final Map dimensionAndWeight;
  final Map miscellaneous;
  final List<String> driveTechnology;

  Car({
    required this.id,
    required this.price,
    required this.name,
    required this.description,
    required this.image,
    required this.range,
    required this.performance,
    required this.batteryAndCharging,
    required this.energyConsumption,
    required this.dimensionAndWeight,
    required this.miscellaneous,
    required this.driveTechnology
  });
}

List<Car> cars = [
  Car(
    id: 1,
    price: "6,500,000 bath",
    name: "BMW iX3",
    description: "BMW iX3 desc",
    image: "assets/images/car_1.png",
    range: "385 km",
    performance: {
      "0_to_100" : "6.8 sec",
      "top_speed" : "180 km/h",
      "range" : "385 km",
      "power" : "210 kW (285 PS)",
      "torque" : "400 Nm",
      "drive_mode" : "Rear",
      "motors_amount" : "1"
    },
    batteryAndCharging:{
      "battery_capacity" : "80.0 kWh",
      "battery_usable" : "74.0 kWh",
      "charge_port" : "Type2",
      "fast_charge_port" : "CCS",
      "port_location" : "Right Side - Rear",
      "charge_power" : "11 kW (AC)",
      "fast_charge_power" : "155 kW (DC)",
      "charge_time" : "8 hours",
      "fast_charge_time" : "31 min",
      "charge_speed" : "49 km/h",
      "fast_charge_speed" : "520/h",
    },
    energyConsumption: {
      "evdb_rating" : "385 km (192 Wh/km)",
      "nedc_rating" : "520 km (142 Wh/km)",
      "wltp_rating" : "460 km (161 Wh/km)",
    },
    dimensionAndWeight: {
      "length" : "4734 mm",
      "width" : "1891 mm",
      "height" : "1668",
      "cargo_volume" : "510L",
      "tire_spec" : "255/50/R22"
    },
    miscellaneous: {
      "seats" : "5 people",
      "car_body" : "SUV",
      "isofix" : "2 seats",
      "platform" : "BMW CLAR",
    },
    driveTechnology: [
      "camera 360",
      "censor all",
      "adaptive crice",
      "warning cash"
    ]
  ),
];

void main(){
  var _results = {
    'Key_1' : 'Value_1',
    'Key_2' : 'Value_2',
  };
  var list = _results.entries.toList();
  var list2 = cars[0].performance.entries.toList();
  print(list2[0].value);
}

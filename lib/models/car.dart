class Car {
  final int id, kilo;
  final String name, description, image;

  Car(
      {this.id = 0,
      this.kilo = 0,
      this.name = "",
      this.description = "",
      this.image = ""});

  List<Car> cars() {
    List<Car> carList = [];
    for (int i = 0; i <= 10; i++) {
      carList.add(Car(
        id: i + 1,
        kilo: 450,
        name: "Bmw ix3",
        image: "assets/images/car_1.png",
        description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim",
      ));
    }
    return carList;
  }
}


// list of products
// for our demo
/*List<Car> cars = [
  Car(
    id: 1,
    kilo: 450,
    name: "Bmw ix3",
    image: "assets/images/car_1.png",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim",
  ),
  Car(
    id: 2,
    kilo: 550,
    name: "Bmw ix3",
    image: "assets/images/car_1.png",
    description:
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim",
  ),
  Car(
    id: 3,
    kilo: 650,
    name: "Bmw ix3",
    image: "assets/images/car_1.png",
    description:
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim",
  ),

];*/

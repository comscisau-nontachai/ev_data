import 'package:ev_data/constants.dart';
import 'package:ev_data/models/car.dart';
import 'package:ev_data/screens/detail/detail_screen.dart';
import 'package:ev_data/screens/home/components/car_card.dart';
import 'package:ev_data/screens/home/components/categories.dart';
import 'package:ev_data/screens/home/components/search_box.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  String search = "";
  String selectedCategory = "All";

  @override
  Widget build(BuildContext context) {
    List<Car> filteredCars = cars.where((car) {
      final matchesCategory = selectedCategory == 'All' || car.brand == selectedCategory;
      final matchesSearch = car.name.toLowerCase().contains(search.toLowerCase());
      return matchesCategory && matchesSearch;
    }).toList();

    return Column(
      children: [
        SearchBox(
          onChanged: (value) {
            //search value
            setState(() {
              search = value;
            });
          },
        ),
        CategoryList(
          onCategorySelected: (selected) {
            setState(() {
              print('Selected category: $selected');
              selectedCategory = selected;
            });
          },
        ),
        SizedBox(
          height: kDefaultPadding / 2,
        ),
        Expanded(
            child: Stack(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 70),
              decoration: const BoxDecoration(color: kBackgroundColor, borderRadius: BorderRadius.only(topLeft: Radius.circular(40), topRight: Radius.circular(40))),
            ),
            ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: filteredCars.length,
                itemBuilder: (context, index) => CarCard(
                      itemIndex: index,
                      car: filteredCars[index],
                      press: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DetailScreen(
                                      car: filteredCars[index],
                                    )));
                      },
                    )),
            if (filteredCars.isEmpty) buildEmpty()
          ],
        ))
      ],
    );
  }

  Widget buildEmpty() {
    return Center(
      child: Text(
        "No cars found",
        style: TextStyle(fontSize: 18, color: Colors.grey),
      ),
    );
  }
}

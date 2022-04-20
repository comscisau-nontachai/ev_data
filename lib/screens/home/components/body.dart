import 'package:ev_data/constants.dart';
import 'package:ev_data/models/car.dart';
import 'package:ev_data/screens/detail/detail_screen.dart';
import 'package:ev_data/screens/home/components/car_card.dart';
import 'package:ev_data/screens/home/components/categories.dart';
import 'package:ev_data/screens/home/components/search_box.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // SearchBox(
        //   onChanged: (value) {},
        // ),
        //CategoryList(),
        // SizedBox(
        //   height: kDefaultPadding / 2,
        // ),
        Expanded(
            child: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(top: 70),
              decoration: BoxDecoration(
                  color: kBackgroundColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40))),
            ),
            ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: cars.length,
                itemBuilder: (context, index) => CarCard(
                      itemIndex: index,
                      car: cars[index],
                      press: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DetailScreen(
                                      car: cars[index],
                                    )));
                      },
                    )),
          ],
        ))
      ],
    );
  }
}

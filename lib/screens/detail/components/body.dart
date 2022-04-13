import 'package:ev_data/constants.dart';
import 'package:ev_data/models/car.dart';
import 'package:ev_data/screens/detail/components/color_dot.dart';
import 'package:ev_data/screens/detail/components/item_with_image.dart';
import 'package:ev_data/screens/detail/components/label_and_data_detail.dart';
import 'package:ev_data/screens/home/components/car_card.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key, required this.car}) : super(key: key);

  final Car car;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height,
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.all(kDefaultPadding),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(24),
                          topLeft: Radius.circular(24)),
                      color: Colors.white),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Performance",style: Theme.of(context).textTheme.headline6?.copyWith(fontWeight: FontWeight.bold)),
                      SizedBox(height: kDefaultPadding/2,),
                      LableAndData(title: "Acceleration 0 - 100 km/h", body: car.performance["0_to_100"],),
                      LableAndData(title: "Top Speed", body: car.performance["top_speed"],),
                      LableAndData(title: "Total Power", body: car.performance["power"],),
                      LableAndData(title: "Total Torque", body: car.performance["torque"],),
                      LableAndData(title: "Range", body: car.performance["range"],),
                      LableAndData(title: "Drive Mode", body: car.performance["drive_mode"],),

                    ],
                  ),
                ),
                ItemWithImage(car: car)
              ],
            ),
          )
        ],
      ),
    );
  }
}

class LableAndData extends StatelessWidget {
  const LableAndData({
    Key? key, required this.title, required this.body,
  }) : super(key: key);

  final String title,body;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title,style: TextStyle(color: kTextLightColor),),
            Text(body,style: TextStyle(color: kTextLightColor),),
          ],
        ),
        SizedBox(height: kDefaultPadding/4,)
      ],
    );
  }
}

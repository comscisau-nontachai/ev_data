import 'package:ev_data/constants.dart';
import 'package:ev_data/models/car.dart';
import 'package:ev_data/screens/detail/components/color_dot.dart';
import 'package:ev_data/screens/detail/components/item_with_image.dart';
import 'package:ev_data/screens/detail/components/label_and_data_detail.dart';
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
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(24),
                          topLeft: Radius.circular(24)),
                      color: Colors.white),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          LabelAndData(title: "kilo/charge", body: "${car.kilo}"),
                          LabelAndData(title: "kilo/charge", body: "${car.kilo}"),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Color"),
                                SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    children: [
                                      ColorDot(color: Color(0xffe50505),),
                                      ColorDot(color: Color(0xffeef1f5),),
                                      ColorDot(color: Color(0xffa29b9b),),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: kDefaultPadding,),
                      Row(
                        children: [
                          LabelAndData(title: "kilo/charge", body: "${car.kilo}"),
                        ],
                      )
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

import 'package:ev_data/constants.dart';
import 'package:ev_data/models/car.dart';
import 'package:ev_data/screens/detail/components/color_dot.dart';
import 'package:ev_data/screens/detail/components/item_with_image.dart';
import 'package:ev_data/screens/detail/components/label_and_data.dart';
import 'package:ev_data/screens/home/components/car_card.dart';
import 'package:ev_data/ultils/custom_scroll.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'title_and_detail_list.dart';

class Body extends StatelessWidget {
  const Body({Key? key, required this.car}) : super(key: key);

  final Car car;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Stack(
      children: [
        ItemWithImage(car: car),
        Container(
            margin: EdgeInsets.only(top: size.height * 0.36),
            padding: EdgeInsets.only(left: kDefaultPadding , top: kDefaultPadding , right: kDefaultPadding),
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(24),
                    topLeft: Radius.circular(24)),
                color: Colors.white),
            child: ScrollConfiguration(
              behavior: CustomScroll(),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    TitleAndDetailList(
                      title: "Performance",
                      detailList: car.performance,
                    ),
                    TitleAndDetailList(
                      title: "Battery and Charging",
                      detailList: car.batteryAndCharging,
                    ),
                    TitleAndDetailList(
                      title: "Energy Consumption",
                      detailList: car.energyConsumption,
                    ),
                    TitleAndDetailList(
                      title: "Dimensions and Weight",
                      detailList: car.dimensionAndWeight,
                    ),
                    TitleAndDetailList(
                      title: "Miscellaneous",
                      detailList: car.miscellaneous,
                    ),
                  ],
                ),
              ),
            )),
      ],
    );
  }
}





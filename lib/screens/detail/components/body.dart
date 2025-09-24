import 'package:ev_data/constants.dart';
import 'package:ev_data/models/car.dart';
import 'package:ev_data/screens/detail/components/ItemImage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'title_and_detail_list.dart';

class Body extends StatelessWidget {
  const Body({Key? key, required this.car}) : super(key: key);

  final Car car;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        ItemImage(
          car: car,
        ),
        Expanded(
            child: Container(
          margin: EdgeInsets.only(top: size.height * 0.35),
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30), topLeft: Radius.circular(30))),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(kDefaultPadding),
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
          ),
        )),
      ],
    );
  }
}

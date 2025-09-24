import 'package:ev_data/models/car.dart';
import 'package:ev_data/screens/detail/components/body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key, required this.car});
  final Car car;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Body(car: car),
    );
  }

  AppBar buildAppbar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      // leading: IconButton(
      //   icon: SvgPicture.asset(
      //     "assets/icons/back.svg",
      //     color: Colors.white,
      //   ),
      //   onPressed: () => Navigator.pop(context),
      // ),
    );
  }
}

import 'package:ev_data/constants.dart';
import 'package:ev_data/screens/detail/detail_screen.dart';
import 'package:ev_data/screens/home/components/body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: buildAppbar(),
      body: Body(),
    );
  }

  AppBar buildAppbar() {
    return AppBar(
      backgroundColor: kPrimaryColor,
      elevation: 0,
      title: Text("Electric Vehicle"),
      actions: [
        IconButton(
            onPressed: () {

            },
            icon: SvgPicture.asset("assets/icons/notification.svg"))
      ],
    );
  }
}

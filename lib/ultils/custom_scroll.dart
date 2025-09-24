import 'package:flutter/material.dart';

class CustomScroll extends ScrollBehavior {
  @override
  Widget buildOverscrollIndicator(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}
import 'package:ev_data/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({
    Key? key,
    required this.onChanged,
  }) : super(key: key);

  final ValueChanged onChanged;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(kDefaultPadding),
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.4),
          borderRadius: BorderRadius.circular(15)),
      child: TextField(
        style: const TextStyle(color: Colors.white),
        onChanged: onChanged,
        decoration: InputDecoration(
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            icon: SvgPicture.asset("assets/icons/search.svg"),
            hintText: "Search",
            hintStyle: const TextStyle(color: Colors.white)),
      ),
    );
  }
}

import 'package:ev_data/constants.dart';
import 'package:flutter/material.dart';

class LabelAndData extends StatelessWidget {
  const LabelAndData({
    Key? key,
    required this.title,
    required this.body,
  }) : super(key: key);

  final String title, body;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: const TextStyle(color: kTextLightColor),
            ),
            Text(
              body,
              style: const TextStyle(color: kTextLightColor),
            ),
          ],
        ),
        const SizedBox(
          height: kDefaultPadding / 4,
        )
      ],
    );
  }
}

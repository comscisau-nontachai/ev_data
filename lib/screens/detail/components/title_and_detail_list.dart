import 'package:ev_data/constants.dart';
import 'package:ev_data/models/car.dart';
import 'package:ev_data/screens/detail/components/label_and_data.dart';
import 'package:flutter/material.dart';

class TitleAndDetailList extends StatelessWidget {
  const TitleAndDetailList({
    Key? key,
    required this.title,
    required this.detailList,
  }) : super(key: key);

  final String title;
  final List<CarDetail> detailList;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title,
            style: Theme.of(context)
                .textTheme
                .headlineMedium
                ?.copyWith(fontWeight: FontWeight.bold)),
        const SizedBox(
          height: kDefaultPadding / 2,
        ),
        Wrap(
          direction: Axis.horizontal,
          children: detailList
              .map((i) => LabelAndData(title: i.title, body: i.body))
              .toList(),
        ),
        const SizedBox(
          height: kDefaultPadding * 1.5,
        ),
      ],
    );
  }
}

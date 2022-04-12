import 'package:ev_data/constants.dart';
import 'package:ev_data/models/car.dart';
import 'package:flutter/material.dart';
class ItemWithImage extends StatelessWidget {
  const ItemWithImage({Key? key, required this.car}) : super(key: key);
  final Car car;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Electric Vehicle",style: TextStyle(color: Colors.white),),
          Text(car.name,style: Theme.of(context).textTheme.headline4?.copyWith(
            color: Colors.white,fontWeight: FontWeight.bold
          ),),
          Row(
            children: [
              // RichText(text: TextSpan(children: [
              //   TextSpan(text: "\n\n"),
              //   TextSpan(text: "km/charge\n",),
              //   TextSpan(text: "${car.kilo}",
              //       style: Theme.of(context).textTheme.headline5?.copyWith(color: Colors.white,fontWeight: FontWeight.bold))
              // ])),
              SizedBox(width: kDefaultPadding/2,),
              Expanded(child: Image.asset(car.image,fit: BoxFit.fill,))
            ],
          )
        ],
      ),
    );
  }
}


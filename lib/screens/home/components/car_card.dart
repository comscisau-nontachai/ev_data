import 'package:ev_data/constants.dart';
import 'package:ev_data/models/car.dart';
import 'package:flutter/material.dart';

class CarCard extends StatelessWidget {
  const CarCard({
    Key? key, required this.itemIndex, required this.car, this.press
  }) : super(key: key);

  final int itemIndex;
  final Car car;
  final Function()? press;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: 160,
      margin: EdgeInsets.symmetric(
          vertical: kDefaultPadding / 8, horizontal: kDefaultPadding),
      child: InkWell(
        onTap: press,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              height: 136,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  color: itemIndex.isEven ? kBlueColor: kSecondaryColor,
                  ),
              child: Container(
                margin: EdgeInsets.only(right: 7),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22),
                    color: Colors.white),
              ),
            ),
            Positioned(
                top: 0,
                right: 0,
                child: Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  height: 180,
                  width: 250,
                  child: Image.asset(
                    car.image,
                    fit: BoxFit.contain,
                  ),
                )),
            Positioned(
                left: 0,
                child: SizedBox(
                  height: 136,
                  width: size.width - 250,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                        child: Text(
                          car.name,
                          style: Theme.of(context).textTheme.button,
                        ),
                      ),
                      Spacer(),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: kDefaultPadding * 1.5,
                            vertical: kDefaultPadding / 4
                        ),
                        decoration: const BoxDecoration(
                            color: kSecondaryColor,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(22),
                              topRight:  Radius.circular(22),
                            )
                        ),
                        child: Text("${car.range}",style: Theme.of(context).textTheme.button,),
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
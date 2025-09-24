import 'package:carousel_slider/carousel_slider.dart';
import 'package:ev_data/constants.dart';
import 'package:ev_data/models/car.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ItemImage extends StatelessWidget {
  const ItemImage({
    Key? key,
    required this.car,
  }) : super(key: key);

  final Car car;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return SizedBox(
      height: size.height * 0.40,
      child: Stack(
        children: [
          SizedBox(
              height: size.height * 0.38,
              child: CarouselSlider.builder(
                itemCount: car.images.length,
                itemBuilder:
                    (BuildContext context, int itemIndex, int pageViewIndex) =>
                        Container(
                  child: FadeInImage.assetNetwork(
                    placeholder: 'assets/images/loading.gif',
                    image: car.images[itemIndex],
                    fit: BoxFit.cover,
                  ),
                ),
                options: CarouselOptions(
                  height: size.height,
                  autoPlay: true,
                  initialPage: 0,
                  viewportFraction: 1,
                ),
              )),
          Positioned(
            top: size.height * 0.35 - 35,
            right: 0,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
              child: Text(
                car.name,
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SafeArea(
            child: IconButton(
              icon: SvgPicture.asset(
                "assets/icons/back.svg",
                color: Colors.white,
              ),
              onPressed: () => Navigator.pop(context),
            ),
          ),
        ],
      ),
    );
  }
}

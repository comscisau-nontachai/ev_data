import 'package:ev_data/constants.dart';
import 'package:ev_data/models/car.dart';
import 'package:flutter/material.dart';

class CarCard extends StatefulWidget {
  const CarCard({
    Key? key,
    required this.itemIndex,
    required this.car,
    this.press,
  }) : super(key: key);

  final int itemIndex;
  final Car car;
  final Function()? press;

  @override
  State<CarCard> createState() => _CarCardState();
}

class _CarCardState extends State<CarCard> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    double _scale = 1.0;

    void _onTapDown(TapDownDetails details) {
      setState(() {
        _scale = 0.9;
      });
    }

    void _onTapUp(TapUpDetails details) {
      setState(() {
        _scale = 1.0;
      });
      if (widget.press != null) widget.press!();
    }

    void _onTapCancel() {
      setState(() {
        _scale = 1.0;
      });
    }

    var size = MediaQuery.of(context).size;
    return AnimatedScale(
      scale: _scale,
      duration: const Duration(milliseconds: 150),
      child: Container(
        height: 160,
        margin: const EdgeInsets.symmetric(vertical: kDefaultPadding / 8, horizontal: kDefaultPadding),
        child: GestureDetector(
          onTapDown: _onTapDown,
          onTapUp: _onTapUp,
          onTapCancel: _onTapCancel,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                height: 136,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  color: widget.itemIndex.isEven ? kBlueColor : kSecondaryColor,
                ),
                child: Container(
                  margin: const EdgeInsets.only(right: 7),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(22), color: Colors.white),
                ),
              ),
              Positioned(
                  top: 0,
                  right: -10,
                  child: Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                    height: 180,
                    width: 250,
                    child: Image.asset(
                      widget.car.image,
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
                        const Spacer(),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                          child: Text(
                            widget.car.name,
                            style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold),
                          ),
                        ),
                        const Spacer(),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding * 1.5, vertical: kDefaultPadding / 4),
                          decoration: const BoxDecoration(
                              color: kSecondaryColor,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(22),
                                topRight: Radius.circular(22),
                              )),
                          child: Text(widget.car.range, style: Theme.of(context).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold)),
                        )
                      ],
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:ev_data/constants.dart';
import 'package:flutter/material.dart';

class CategoryList extends StatefulWidget {
  const CategoryList({Key? key}) : super(key: key);

  @override
  State<CategoryList> createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  int selectedIndex = 0;
  List categories = ['All', 'Audi','BMW','Ford','Honda','Hyundai','Lexus','Mercedes Benz','MG','Mini','Nissan','Porsche','Tesla','Toyota','Volvo'];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) => GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(left: kDefaultPadding,right: index == categories.length - 1 ? kDefaultPadding : 0),
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              decoration: BoxDecoration(
                  color: index == selectedIndex
                      ? Colors.white.withOpacity(0.4)
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(6)),
              child: Text(
                categories[index],
                style: TextStyle(color: Colors.white,
                ),
              ),
            ),
          )),
    );
  }
}

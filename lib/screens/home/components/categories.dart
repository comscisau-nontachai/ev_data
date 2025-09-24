import 'package:ev_data/constants.dart';
import 'package:ev_data/models/car.dart';
import 'package:flutter/material.dart';

class CategoryList extends StatefulWidget {
  final ValueChanged<String>? onCategorySelected; // Add this line
  const CategoryList({Key? key, this.onCategorySelected}) : super(key: key);

  @override
  State<CategoryList> createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  int selectedIndex = 0;

  List categories = [];
  String selectedCategory = 'All';

  @override
  void initState() {
    super.initState();

    // Get unique brands from cars
    final brands = cars.map((car) => car.brand).toSet().toList();
    categories = ['All', ...brands];
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = index;
                    selectedCategory = categories[index];
                  });

                  if (widget.onCategorySelected != null) {
                    widget.onCategorySelected!(
                        selectedCategory); // Call the callback
                  }
                },
                child: Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(
                      left: kDefaultPadding,
                      right:
                          index == categories.length - 1 ? kDefaultPadding : 0),
                  padding:
                      const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  decoration: BoxDecoration(
                      color: index == selectedIndex
                          ? Colors.white.withOpacity(0.4)
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(6)),
                  child: Text(
                    categories[index],
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              )),
    );
  }
}

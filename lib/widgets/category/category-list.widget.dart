import 'package:flutter/material.dart';

import 'category-item.widget.dart';

class CategoryList extends StatelessWidget {
  Axis axis;

  CategoryList({@required this.axis});

  @override
  Widget build(BuildContext context) {
    return Container(
    child: ListView(
      scrollDirection: axis,
      children: <Widget>[
        CategoryItem(image: "assets/Icon_Devices.png"),
        CategoryItem(image: "assets/Icon_Gadgets.png"),
        CategoryItem(image: "assets/Icon_Gaming.png"),
        CategoryItem(image: "assets/Icon_Mens_Shoe.png"),
        CategoryItem(image: "assets/Icon_Womens_Shoe.png"),
      ],
    ),
  );
  }
}
import 'package:flutter/material.dart';
import 'package:layout/widgets/product/product-item.widget.dart';

class ProductList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        ProductItem(image: "assets/product-1.png", title: "BeoPlay Speaker",         description: "Marca", price: "755",),
        ProductItem(image: "assets/product-2.png", title: "Leather Wristwatch",      description: "Marca", price: "450",),
        ProductItem(image: "assets/product-3.png", title: "Smart Bluetooth Speaker", description: "Marca", price: "900",),
        ProductItem(image: "assets/product-4.png", title: "Smart Luggage",           description: "Marca", price: "100",),
        ProductItem(image: "assets/product-5.png", title: "Smartphone Case",         description: "Marca", price: "99",),
        ProductItem(image: "assets/product-6.png", title: "Speakers Stand",          description: "Marca", price: "49",),
        ProductItem(image: "assets/product-7.png", title: "AirPods",                 description: "Marca", price: "199",),
      ],
    ),
  );
  }
}
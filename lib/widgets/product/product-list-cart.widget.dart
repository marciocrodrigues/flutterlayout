import 'package:flutter/material.dart';
import 'package:layout/widgets/product/product-item-cart.wdget.dart';

class ProductListCart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
    children: <Widget>[
      ProductItemCart(title: "BeoPlay Speaker",         price: "755", image: "assets/product-1.png"),
      ProductItemCart(title: "Leather Wristwatch",      price: "450", image: "assets/product-2.png"),
      ProductItemCart(title: "Smart Bluetooth Speaker", price: "900", image: "assets/product-3.png"),
      ProductItemCart(title: "Smart Luggage",           price: "100", image: "assets/product-4.png"),
      ProductItemCart(title: "Smartphone Case",         price: "99",  image: "assets/product-5.png"),
      ProductItemCart(title: "Speakers Stand",          price: "49",  image: "assets/product-6.png"),
      ProductItemCart(title: "AirPods",                 price: "199", image: "assets/product-7.png"),
    ],
  );
  }
}
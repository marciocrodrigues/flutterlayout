import 'package:flutter/material.dart';
import 'package:layout/pages/product.page.dart';

class ProductItem extends StatelessWidget {
  final String image;
  final String title;
  final String description;
  final String price;

  ProductItem({
    @required this.image,
    @required this.title,
    @required this.description,
    @required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
    padding: EdgeInsets.all(10),
    margin: EdgeInsets.all(5),
    width: 170,
    color: Colors.black12,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        // Pega os gestos, no caso ao tocar na imagem será direcionado para
        // a tela de detalhes do produto
        // mas tem outros gestos, como tocar e arrastar, dois toques etc...
        GestureDetector(
          onTap: (){
            Navigator.push(
              context, 
              MaterialPageRoute(
                builder: (context) => ProductPage(
                  image: this.image,
                  title: this.title,
                  description: this.description,
                  detail: "Detail",
                  mark: "Mark",
                ),
              ),
            );
          },
          child: Hero(
            tag: image,
            child: Image.asset(
              image,
              width: 170,
              height: 170,
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          height: 60,
          child: Text(
            title,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          description,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w300,
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          "\$ $price",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Theme.of(context).primaryColor,
          ),
        ),
      ],
    ),
  );
  }
}
import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  final String image;
  final String title;
  final String mark;
  final String description;
  final String detail;

  ProductPage({
    @required this.image,
    @required this.title,
    @required this.mark,
    @required this.description,
    @required this.detail,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        // animação de sliver, conform scrolar a tela a imagem vai diminuindo
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled){
          return <Widget>[
            SliverAppBar(
              backgroundColor: Colors.white.withOpacity(0),
              elevation: 0.0,
              expandedHeight: 500.0,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                background: Hero(
                  tag: image,
                  child: Image.asset(
                    image,
                    width: double.infinity,
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
            ),
          ];
        },
        body: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(
                top: 10,
                left: 10,
                right: 10,
              ),
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Text(mark),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                detail,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                description,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
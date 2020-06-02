import 'package:flutter/material.dart';
import 'package:layout/widgets/category/category-list.widget.dart';
import 'package:layout/widgets/product/product-list.widget.dart';
import 'package:layout/widgets/search-box.widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(15),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox(
                height: 60,
              ),
              SearchBox(),
              SizedBox(
                height: 30,
              ),
              Text(
                "Categories",
                style: Theme.of(context).textTheme.headline4,
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 90,
                child: CategoryList(axis: Axis.horizontal,),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Best Selling",
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  FlatButton(
                    child: Text("See All"),
                    onPressed: () => {},
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 350,
                child: ProductList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

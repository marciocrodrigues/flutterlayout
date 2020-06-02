import 'package:flutter/material.dart';
import 'package:layout/widgets/product/product-list-cart.widget.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          // Para ocupar o total do espaço
          Expanded(
            child: Container(
              child:ProductListCart(),
            ),
          ),
          Container(
            color: Colors.black12,
            height: 80,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(
                    left: 20,
                    top: 20,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "TOTAL",
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "\$ 4250",
                        style: TextStyle(
                          color:Theme.of(context).primaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                  ),
                  margin: EdgeInsets.only(right: 20),
                  child: FlatButton(
                    child: Text(
                      "Checkout",
                      style: TextStyle(color: Theme.of(context).accentColor),
                    ),
                    onPressed: () => {},
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
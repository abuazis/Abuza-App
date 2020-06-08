import 'package:abuza_app/widgets/bottom_navbar.dart';
import 'package:abuza_app/widgets/cart_item.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(240, 240, 240, 1),
      bottomNavigationBar: BottomNavbar(),
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(21, 25, 21, 21),
            child: Column(
              children: <Widget>[
                Text(
                  "My Cart",
                  style: TextStyle(
                    fontFamily: "Montserrat",
                    fontSize: 20,
                    fontWeight: FontWeight.w500
                  ),
                ),
                SizedBox(
                  height: 27,
                ),
                CartItem(
                  name: "Chicken Spicy",
                  image: "assets/images/spicy-cart.png",
                  category: "Chicken",
                  price: "IDR 20.000",
                  quantity: 1,
                ),
                SizedBox(
                  height: 9,
                ),
                CartItem(
                  name: "Chocolax Milk",
                  image: "assets/images/chocolax-cart.png",
                  category: "Drink",
                  price: "IDR 50.000",
                  quantity: 2,
                ),
                SizedBox(
                  height: 9,
                ),
                CartItem(
                  name: "Ayam Pedes",
                  image: "assets/images/pedes-cart.png",
                  category: "Chicken",
                  price: "IDR 70.000",
                  quantity: 1,
                ),
                SizedBox(
                  height: 9,
                ),
                CartItem(
                  name: "Pink Lava",
                  image: "assets/images/pink-cart.png",
                  category: "Drink",
                  price: "IDR 10.000",
                  quantity: 2,
                ),
                SizedBox(
                  height: 28,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 7),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Total Price",
                        style: TextStyle(
                          fontFamily: "Montserrat",
                          fontSize: 19,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(45, 45, 45, 1)
                        ),
                      ),
                      Text(
                        "IDR 230.000",
                        style: TextStyle(
                          fontFamily: "Montserrat",
                          fontSize: 19,
                          fontWeight: FontWeight.w700,
                          color: Color.fromRGBO(45, 45, 45, 1)
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 36,
                ),
                Container(
                  width: 306,
                  height: 43,
                  child: RaisedButton(
                    elevation: 0,
                    color: Color.fromRGBO(0, 203, 44, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Checkout",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.w500
                          ),
                        )
                      ],
                    ),
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text(
                              "Berhasil",
                              style: TextStyle(fontFamily: "Montserrat"),
                            ),
                            content: Text(
                              "Menu berhasil diorder silahkan duduk manis sambil menunggu pesanan datang. +10 Points",
                              style: TextStyle(fontFamily: "Montserrat")
                            ),
                            actions: <Widget>[
                              FlatButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text("OK")
                              )
                            ],
                          );
                        }
                      );
                    }
                  ),
                ),
              ],
            ),
          )
        ],
      )
    );
  }
}
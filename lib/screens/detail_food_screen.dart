import 'package:abuza_app/screens/cart_screen.dart';
import 'package:abuza_app/widgets/list_counter.dart';
import 'package:flutter/material.dart';

class DetailFoodScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(240, 240, 240, 1),
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                child: Image.asset("assets/images/chicken-banner.png"),
              ),
              Container(
                margin: EdgeInsets.only(
                  top: 26,
                  left: 23
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back, 
                      color: Colors.black
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 258),
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(
                  horizontal: 28,
                  vertical: 19
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Chicken Spicy",
                      style: TextStyle(
                        fontFamily: "Montserrat",
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Color.fromRGBO(45, 45, 45, 1)
                      ),
                    ),
                    SizedBox(
                      height: 5
                    ),
                    Text(
                      "Chicken",
                      style: TextStyle(
                        fontFamily: "Montserrat",
                        fontSize: 12,
                        fontWeight: FontWeight.w500,                          
                        color: Color.fromRGBO(174, 172, 172, 1)
                      ),
                    ),
                    SizedBox(
                      height: 35
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        ListCounter(),
                        Text(
                          "IDR 70.000",
                          style: TextStyle(
                            fontFamily: "Montserrat",
                            fontSize: 19,
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(45, 45, 45, 1)
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 31
                    ),
                    Text(
                      "Menu Description",
                      style: TextStyle(
                        fontFamily: "Montserrat",
                        fontSize: 16,
                        fontWeight: FontWeight.w500
                      ),
                    ),
                    SizedBox(
                      height: 8
                    ),
                    Text(
                      "Chicken Spicy taste has a universal appeal. The meat has the sweetness of peach. This apricot colored chily has just enough fiber to give it chewiness. Chicken Spicy taste has a universal appeal. The meat has the sweetness of peach. ",
                      style: TextStyle(
                        height: 1.6,
                        fontFamily: "Montserrat",
                        fontSize: 12
                      )
                    ),
                    SizedBox(
                      height: 35
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
                            Icon(
                              Icons.add,
                              color: Colors.white
                            ),
                            Text(
                              " Add to cart",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontFamily: "Montserrat",
                                fontWeight: FontWeight.w500
                              ),
                            ),
                          ],
                        ),
                        onPressed: () {
                          // Navigator.pushAndRemoveUntil();
                          Navigator.push(
                            context, 
                            MaterialPageRoute(
                              builder: (context) {
                                return CartScreen();
                              }
                            )
                          );
                        }
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    )
                  ],
                ),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(240, 240, 240, 1),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25)
                  )
                ),
              ),
            ],
          )
        ],
      )
    );
  }
}
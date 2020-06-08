import 'package:abuza_app/widgets/bottom_navbar.dart';
import 'package:flutter/material.dart';

class AchievementScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(240, 240, 240, 1),
      bottomNavigationBar: BottomNavbar(),
      body: ListView(
        children: <Widget>[
          Container(
            height: 265,
            decoration: BoxDecoration(
              color: Color.fromRGBO(0, 203, 44, 1),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40),
              )
            ),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 25
                ),
                Text(
                  "My Achievement",
                  style: TextStyle(
                    fontFamily: "Montserrat",
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.white
                  ),
                ),
                SizedBox(
                  height: 43
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      child: Image.asset("assets/images/trophy-point.png")
                    ),
                    SizedBox(
                      width: 17
                    ),
                    Column(
                      children: <Widget>[
                        Text(
                          "300",
                          style: TextStyle(
                            fontFamily: "Montserrat",
                            fontSize: 64,
                            fontWeight: FontWeight.w600,
                            color: Colors.white
                          )
                        ),
                        Text(
                          "Points",
                          style: TextStyle(
                            fontFamily: "Montserrat",
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.white
                          ),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 25,
              vertical: 20
            ),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text(
                      "History",
                      style: TextStyle(
                        fontFamily: "Montserrat",
                        fontSize: 16,
                        fontWeight: FontWeight.w500
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 62,
                ),
                Container(
                  child: Image.asset("assets/images/folder.png")
                ),
                SizedBox(
                  height: 11,
                ),
                Text(
                  "No one history right now....",
                  style: TextStyle(
                    fontFamily: "Montserrat",
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(197, 197, 197, 1)
                  ),
                ),
              ]
            ),
          )
        ]
      )
    );
  }
}
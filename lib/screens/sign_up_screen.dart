import 'package:abuza_app/screens/food_screen.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 29),
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 23),
                  height: 56,
                  child: Stack(
                    children: <Widget>[
                      Align(
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
                      Center(
                        child: Text(
                          "Create New\nYour Account!",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.w500
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 79
                ),
                TextField(
                  style: TextStyle(
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.w500,
                  ),
                  decoration: InputDecoration(
                    labelText: "Full Name",
                    labelStyle: TextStyle(
                      color: Color.fromRGBO(173, 173, 173, 1)
                    ),
                    contentPadding: EdgeInsets.only(
                      left: 20,
                      right: 20,
                      bottom: 18,
                      top: 18
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        width: 1.5,
                        color: Color.fromRGBO(173, 173, 173, 1),
                      )
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        width: 1.5,
                        color: Color.fromRGBO(0, 203, 44, 1)
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 28
                ),
                TextField(
                  style: TextStyle(
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.w500,
                  ),
                  decoration: InputDecoration(
                    labelText: "Email Address",
                    labelStyle: TextStyle(
                      color: Color.fromRGBO(173, 173, 173, 1)
                    ),
                    contentPadding: EdgeInsets.only(
                      left: 20,
                      right: 20,
                      bottom: 18,
                      top: 18
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        width: 1.5,
                        color: Color.fromRGBO(173, 173, 173, 1),
                      )
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        width: 1.5,
                        color: Color.fromRGBO(0, 203, 44, 1)
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 28
                ),
                TextField(
                  obscureText: true,
                  style: TextStyle(
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.w500,
                  ),
                  decoration: InputDecoration(
                    labelText: "Password",
                    labelStyle: TextStyle(
                      color: Color.fromRGBO(173, 173, 173, 1)
                    ),
                    contentPadding: EdgeInsets.only(
                      left: 20,
                      right: 20,
                      bottom: 18,
                      top: 18
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        width: 1.5,
                        color: Color.fromRGBO(173, 173, 173, 1),
                      )
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        width: 1.5,
                        color: Color.fromRGBO(0, 203, 44, 1)
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 28
                ),
                TextField(
                  obscureText: true,
                  style: TextStyle(
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.w500,
                  ),
                  decoration: InputDecoration(
                    labelText: "Confirm Password",
                    labelStyle: TextStyle(
                      color: Color.fromRGBO(173, 173, 173, 1)
                    ),
                    contentPadding: EdgeInsets.only(
                      left: 20,
                      right: 20,
                      bottom: 18,
                      top: 18
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        width: 1.5,
                        color: Color.fromRGBO(173, 173, 173, 1),
                      )
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        width: 1.5,
                        color: Color.fromRGBO(0, 203, 44, 1)
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 298,
                  height: 43,
                  margin: EdgeInsets.only(
                    top: 37,
                    bottom: 70
                  ),
                  child: RaisedButton(
                    elevation: 0,
                    color: Color.fromRGBO(0, 203, 44, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: Text(
                      "Create Account",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w500
                      ),
                    ),
                    onPressed: () {
                      // Navigator.pushAndRemoveUntil();
                      Navigator.push(
                        context, 
                        MaterialPageRoute(
                          builder: (context) {
                            return FoodScreen();
                          }
                        )
                      );
                    }
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
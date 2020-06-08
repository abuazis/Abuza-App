import 'package:abuza_app/screens/food_screen.dart';
import 'package:abuza_app/screens/sign_up_screen.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 29),
        child: ListView(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 65),
                SizedBox(
                  height: 58,
                  child: Image.asset("assets/images/logo.png"),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: 60,
                    bottom: 45
                  ),
                  child: Text(
                    "Welcome back,\nFriend!",
                    style: TextStyle(
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w500,
                      fontSize: 20
                    )
                  ),
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
                  height: 23,
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
                Container(
                  width: 298,
                  height: 43,
                  margin: EdgeInsets.only(
                    top: 40,
                    bottom: 70
                  ),
                  child: RaisedButton(
                    elevation: 0,
                    color: Color.fromRGBO(0, 203, 44, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: Text(
                      "Sign In",
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Are you fresh user?",
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(173, 173, 173, 1)
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context, 
                          MaterialPageRoute(
                          builder: (context) {
                              return SignUpScreen();
                            }
                          )
                        );
                      },
                      child: Text(
                        " Sign Up",
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(0, 203, 44, 1)
                        ),
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
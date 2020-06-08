import 'package:abuza_app/screens/sign_in_screen.dart';
import 'package:abuza_app/screens/sign_up_screen.dart';
import 'package:flutter/material.dart';

class GetStartedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: ListView(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: 110,
                  margin: EdgeInsets.only(
                    top: 75
                  ),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/logo.png")
                    )
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: 89,
                    bottom: 18
                  ),
                  child: Text(
                    "Delicious Food",
                    style: TextStyle(
                      fontFamily: "Montserrat",
                      fontSize: 20,
                      fontWeight: FontWeight.w500
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    "Choose your favorite delicious\nfood without leaving home",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: "Montserrat",
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(173, 173, 173, 1)
                    ),
                  ),
                ),
                Container(
                  width: 298,
                  height: 43,
                  margin: EdgeInsets.only(
                    top: 131,
                    bottom: 35
                  ),
                  child: RaisedButton(
                    elevation: 0,
                    color: Color.fromRGBO(0, 203, 44, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: Text(
                      "Get Started",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w500
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context, 
                        MaterialPageRoute(
                        builder: (context) {
                            return SignUpScreen();
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
                      "Already have an account?",
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
                              return SignInScreen();
                            }
                          )
                        );
                      },
                      child: Text(
                        " Sign In",
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
            ),
          ],
        ),
      )
    );
  }
}
import 'package:abuza_app/screens/achievement_screen.dart';
import 'package:abuza_app/screens/cart_screen.dart';
import 'package:abuza_app/screens/food_screen.dart';
import 'package:flutter/material.dart';

class BottomNavbar extends StatefulWidget {
  @override
  _BottomNavbarState createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    if(index == 0) {
      Navigator.pushReplacement(
        context, 
        MaterialPageRoute(
          builder: (context) {
            return FoodScreen();
          }
        )
      );
    } else if(index == 1) {
      Navigator.pushReplacement(
        context, 
        MaterialPageRoute(
          builder: (context) {
            return CartScreen();
          }
        )
      );
    } else if(index == 2) {
      Navigator.pushReplacement(
        context, 
        MaterialPageRoute(
          builder: (context) {
            return AchievementScreen();
          }
        )
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(10),
        topRight: Radius.circular(10),
      ),
      child: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: SizedBox(
          height: 60,
          child: BottomNavigationBar(
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            type: BottomNavigationBarType.fixed,
            items: [  
              BottomNavigationBarItem(
                icon: Image.asset("assets/images/home.png"),
                title: Text("Food")
              ),
              BottomNavigationBarItem(
                icon: Image.asset("assets/images/cart.png"),
                title: Text("My Cart")
              ),
              BottomNavigationBarItem(
                icon: Image.asset("assets/images/trophy.png"),
                title: Text("Achievement")
              ),
            ] 
          ),
        ),
      ),
    );
  }
}
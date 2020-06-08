import 'package:abuza_app/widgets/bottom_navbar.dart';
import 'package:abuza_app/widgets/category_card.dart';
import 'package:abuza_app/widgets/food_card.dart';
import 'package:flutter/material.dart';

class FoodScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(240, 240, 240, 1),
      bottomNavigationBar: BottomNavbar(),
      body: ListView(
        children: <Widget>[
          Container(
            height: 91,
            padding: EdgeInsets.symmetric(
              horizontal: 38,
              vertical: 20
            ),
            decoration: BoxDecoration(
              color: Color.fromRGBO(0, 203, 44, 1),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              )
            ),
            child: Row(
              children: <Widget>[
                Container(
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/user.png"),
                      fit: BoxFit.cover
                    )
                  ),
                ),
                SizedBox(
                  width: 16,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(top: 6.5),
                      child: Text(
                        "Ahmad Abuza",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Text(
                      "Customer",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontFamily: "Montserrat",
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 20,
              left: 20
            ),
            child: Text(
              "Categories",
              style: TextStyle(
                fontFamily: "Montserrat",
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Container(
            child: SizedBox(
              height: 135,
              child: ListView(
                padding: EdgeInsets.only(
                  top: 10,
                  left: 15,
                  right: 8,
                  bottom: 10
                ),
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  CategoryCard("Beaf", "assets/images/all.png"),
                  CategoryCard("Burger", "assets/images/burger.png"),
                  CategoryCard("Pizza", "assets/images/pizza.png"),
                  CategoryCard("Dessert", "assets/images/dessert.png"),
                  CategoryCard("Burger", "assets/images/burger.png"),
                  CategoryCard("Pizza", "assets/images/pizza.png"),
                  CategoryCard("Dessert", "assets/images/dessert.png"),
                  CategoryCard("Barbaque", "assets/images/all.png")
                ],
              ),
            ),
          ),
          SizedBox(
            width: 35,
          ),
          Container(
            margin: EdgeInsets.only(
              top: 20,
              left: 20
            ),
            child: Text(
              "Recommendations",
              style: TextStyle(
                fontFamily: "Montserrat",
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 15,
              left: 20,
              right: 20
            ),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    FoodCard(
                      name: "Chicken Spicy",
                      image: "assets/images/chicken.png",
                      category: "Chicken",
                      discountPrice: "IDR 30.000",
                      currentPrice: "IDR 20.000",
                    ),
                    FoodCard(
                      name: "Chocolax Milk",
                      image: "assets/images/chocolax.png",
                      category: "Drink",
                      discountPrice: "IDR 65.000",
                      currentPrice: "IDR 50.000",
                    ),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    FoodCard(
                      name: "Ayam Pedes",
                      image: "assets/images/ayam-pedes.png",
                      category: "Chicken",
                      discountPrice: "IDR 75.000",
                      currentPrice: "IDR 70.000",
                    ),
                    FoodCard(
                      name: "Pink Lava",
                      image: "assets/images/pink-lava.png",
                      category: "Drink",
                      discountPrice: "IDR 15.000",
                      currentPrice: "IDR 10.000",
                    ),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    FoodCard(
                      name: "Chocolax Milk",
                      image: "assets/images/chocolax.png",
                      category: "Drink",
                      discountPrice: "IDR 65.000",
                      currentPrice: "IDR 50.000",
                    ),
                    FoodCard(
                      name: "Chicken Spicy",
                      image: "assets/images/chicken.png",
                      category: "Chicken",
                      discountPrice: "IDR 30.000",
                      currentPrice: "IDR 20.000",
                    ),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
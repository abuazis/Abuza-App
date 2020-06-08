import 'package:abuza_app/screens/detail_food_screen.dart';
import 'package:flutter/material.dart';

class FoodCard extends StatelessWidget {
  final String name;
  final String image;
  final String category;
  final String discountPrice;
  final String currentPrice;

  FoodCard(
    {
      this.name,
      this.image,
      this.category,
      this.currentPrice,
      this.discountPrice
    }
  );

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context, 
          MaterialPageRoute(
            builder: (context) {
              return DetailFoodScreen();
            }
          )
        );
      },
      child: Container(
        width: 145,
        height: 169,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.08),
              offset: Offset(0, 0),
              blurRadius: 8,
            ),
          ]
        ),
        child: Stack(
          overflow: Overflow.clip,
          children: <Widget>[
            Container(
              child: Card(
                elevation: 0,
                child: Container(
                  padding: EdgeInsets.only(
                    top: 102,
                    left: 5,
                    right: 5
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        name,
                        style: TextStyle(
                          fontFamily: "Montserrat",
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(45, 45, 45, 1)
                        ),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        category,
                        style: TextStyle(
                          fontFamily: "Montserrat",
                          fontSize: 9,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(174, 172, 172, 1)
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            discountPrice,
                            style: TextStyle(
                              fontFamily: "Montserrat",
                              fontSize: 8,
                              fontWeight: FontWeight.w700,
                              color: Color.fromRGBO(234, 31, 31, 1),
                              decoration: TextDecoration.lineThrough
                            ),
                          ),
                          Text(
                            currentPrice,
                            style: TextStyle(
                              fontFamily: "Montserrat",
                              fontSize: 11,
                              fontWeight: FontWeight.w700,
                              color: Color.fromRGBO(45, 45, 45, 1)
                            ),
                          )
                        ],
                      )
                    ],
                  )
                ),
              ),
            ),
            Container(
              width: 145,
              height: 99,
              child: Image.asset(image),
            ),
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final String name;
  final String image;
  
  CategoryCard(this.name, this.image);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 8),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.08),
            offset: Offset(0, 0),
            blurRadius: 8,
          ),
        ],
      ),
      child: Container(
        child: Card(
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8)
          ),
          child: Container(
            width: 83,
            height: 98,
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(
                    top: 13,
                    bottom: 10
                  ),
                  width: 50,
                  height: 50,
                  child: Image.asset(image),
                ),
                Text(
                  name,
                  style: TextStyle(
                    fontFamily: "Montserrat",
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: Color.fromRGBO(45, 45, 45, 1)
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
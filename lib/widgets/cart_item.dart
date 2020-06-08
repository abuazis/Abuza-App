import 'package:flutter/material.dart';

class CartItem extends StatelessWidget {
  final String name;
  final String image;
  final String category;
  final String price;
  final int quantity;

  CartItem({
    this.name,
    this.image,
    this.category,
    this.price,
    this.quantity
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 318,
      height: 74,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.02),
            offset: Offset(0, 0),
            blurRadius: 5,
          )
        ],
      ),
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8)
        ),
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 12,
            vertical: 9.5
          ),
          child: Row(
            children: <Widget>[
              Container(
                width: 80,
                height: 55,
                child: Image.asset(image),
              ),
              SizedBox(
                width: 11,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    name,
                    style: TextStyle(
                      fontFamily: "Montserrat",
                      fontSize: 13,
                      fontWeight: FontWeight.w600
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Row(
                    children: <Widget>[
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
                        width: 7,
                      ),
                      Text(
                        price + "  X  " + quantity.toString(),
                        style: TextStyle(
                          fontFamily: "Montserrat",
                          fontSize: 11,
                          fontWeight: FontWeight.w700,
                          color: Color.fromRGBO(45, 45, 45, 1)
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Spacer(
                flex: 1,
              ),
              Container(
                child: Icon(
                  Icons.delete,
                  color: Color.fromRGBO(45, 45, 45, 1)
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
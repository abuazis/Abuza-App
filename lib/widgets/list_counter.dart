import 'package:flutter/material.dart';

class ListCounter extends StatefulWidget {
  @override
  _ListCounterState createState() => _ListCounterState();
}

class _ListCounterState extends State<ListCounter> {
  int portion = 1;

  void reducePortion() {
    setState(() {
      if(portion <= 1) {
        portion = 1;
      } else {
        portion--;
      }
    });
  }

  void addPortion() {
    setState(() {
      portion++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          width: (106 - 45) / 2,
          height: 28,
          child: RaisedButton(
            elevation: 0,
            padding: EdgeInsets.all(0),
            color: Color.fromRGBO(209, 209, 209, 1), 
            onPressed: reducePortion, 
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(3),
                bottomLeft: Radius.circular(3),
              ),
            ),
            child: Icon(
              Icons.remove,
              color: Colors.black
            )
          ),
        ),
        Container(
          width: 45,
          height: 28,
          color: Color.fromRGBO(232, 232, 232, 1),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                portion.toString(),
                style: TextStyle(
                  fontFamily: "Montserrat",
                  fontSize: 15,
                  fontWeight: FontWeight.w500
                ),
              ),
            ],
          )
        ),
        Container(
          width: (106 - 45) / 2,
          height: 28,
          child: RaisedButton(
            elevation: 0,
            padding: EdgeInsets.all(0),
            color: Color.fromRGBO(209, 209, 209, 1),
            onPressed: addPortion,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(3),
                bottomRight: Radius.circular(3),
              ),
            ),
            child: Icon(
              Icons.add,
              color: Colors.black
            )
          ),
        ),
      ],
    );
  }
}
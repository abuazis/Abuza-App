import 'package:abuza_app/screens/get_started_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: GetStartedScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static String tag = 'home-page';
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text('Home Page'),
        backgroundColor: Colors.blue[400]
        ),
      
    );
  }
}
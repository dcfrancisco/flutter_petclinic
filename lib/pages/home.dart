import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          'assets/images/pets_no_bg.png',
          width: 300,
          height: 200,
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

class Home_Page extends StatelessWidget {
  final int day = 30;
  final String name = "Saleha";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog"),
      ),
      body: Center(
          child: Container(
            child: Text("Welcome to $day days in flutter by $name"),
          ),
        ),
      drawer: Drawer(),
    );
  }
}

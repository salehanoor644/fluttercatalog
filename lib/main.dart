import 'package:flutter/material.dart';
import 'package:flutter_catalog/Screens/home_page.dart';
import 'package:flutter_catalog/Screens/login_screen.dart';
import 'package:google_fonts/google_fonts.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Login_Screen(),
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.blue,
      fontFamily: GoogleFonts.lato().fontFamily),
      darkTheme: ThemeData(primaryColor: Colors.cyan),

    );
  }
}
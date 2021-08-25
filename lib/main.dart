import 'package:flutter/material.dart';
import 'package:flutter_catalog/Screens/home_page.dart';
import 'package:flutter_catalog/Screens/login_screen.dart';
import 'package:flutter_catalog/Widgets/theme.dart';
import 'package:flutter_catalog/utils/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Login_Screen(),
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: 'MyRoutes.homeRoutes',
      routes: <String, WidgetBuilder>{
        "/": (context) => Login_Screen(),
        MyRoutes.homeRoute: (context) => Home_Page(),
        MyRoutes.loginRoute: (context) => Login_Screen(),

      },


    );
  }
}
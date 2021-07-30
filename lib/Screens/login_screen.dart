import 'package:flutter/material.dart';

class Login_Screen extends StatelessWidget {
  const Login_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Screen",)
      ),
      body: Center(
        child: Container(
          child: Text("Login Screen",
          style: TextStyle(color: Colors.lightBlueAccent, fontWeight: FontWeight.bold, fontSize: 20),),
        ),
      ),
    );
  }
}

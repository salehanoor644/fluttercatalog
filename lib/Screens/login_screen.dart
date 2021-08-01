import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/routes.dart';

class Login_Screen extends StatefulWidget {
  const Login_Screen({Key? key}) : super(key: key);

  @override
  _Login_ScreenState createState() => _Login_ScreenState();
}

class _Login_ScreenState extends State<Login_Screen> {
  bool changedButton= false;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/images/main_top.png",
            fit: BoxFit.cover,),
            SizedBox(height: 10,),
            Text("Welcome", style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),),
            SizedBox(height: 15,),
            Padding(padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [BoxShadow(
                          color: Colors.black54,
                          blurRadius: 10,
                          offset: Offset(0.0, 1.0),
                        )]
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: " Enter Email or Phone number",
                        hintStyle: TextStyle(color: Colors.grey),

                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  SizedBox(height: 15,),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [BoxShadow(
                          color: Colors.black54,
                          blurRadius: 10,
                          offset: Offset(1.0, 1.0),
                        )]
                    ),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: " Enter Password",
                        hintStyle: TextStyle(color: Colors.grey),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  SizedBox(height: 40,),
                  InkWell(
                    onTap: () async {
                      setState(() {
                        changedButton = true;
                      });
                      await Future.delayed(Duration(seconds: 1));
                       Navigator.pushNamed(context, MyRoutes.homeRoute);
                    },
                  child: AnimatedContainer(
                    duration: Duration(seconds: 3),
                    height: 40,
                    width: changedButton? 70: 150,
                    alignment: Alignment.center,
                    child: changedButton
                      ?Icon( Icons.done, color: Colors.white)
                    : Text("Login",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.lightBlueAccent,
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  ),
                ],
              ),
            ),
            Image.asset("assets/images/main_bottom.png",
            fit: BoxFit.cover,),

          ],
        ),
      ),

    );
  }
}




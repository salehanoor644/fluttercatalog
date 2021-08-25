import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/routes.dart';

class Login_Screen extends StatefulWidget {
  const Login_Screen({Key? key}) : super(key: key);

  @override
  _Login_ScreenState createState() => _Login_ScreenState();
}

class _Login_ScreenState extends State<Login_Screen> {
  bool changedButton= false;
  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changedButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      Navigator.pushNamed(context, MyRoutes.homeRoute);
      await Future.delayed(Duration(seconds: 2));
      Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changedButton = false;
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
        child: Column(
          children: [
            Image.asset("assets/images/login_image1.png",
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
                    child: Column(
                      children: [
                        TextFormField(
                      decoration: InputDecoration(
                        hintText: " Enter Email or Phone number",
                        hintStyle: TextStyle(color: Colors.grey),
                        border: InputBorder.none,
                      ),
                      validator: (value) {
                        if (value!.isEmpty){
                          return "Email cannot be empty";
                        }
                        return null;
                      },
                    ),
                  ],
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
                    child: Column(
                      children: [
                        TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: " Enter Password",
                        hintStyle: TextStyle(color: Colors.grey),
                        border: InputBorder.none,
                      ),
                      validator: (value) {
                          if (value!.isEmpty){
                            return "Password cannot be empty";
                          }
                          else if (value.length<6){
                           return "Password length should be at least 6";
                          }
                          return null;
                        },
                        ),
                    ],
                  ),
                   ),
                  SizedBox(height: 40,),
                  InkWell(
                    onTap: () => moveToHome(context),
                  child: AnimatedContainer(
                    duration: Duration(seconds: 2),
                    height: 40,
                    width: changedButton? 50: 150,
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
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      ),
    );
  }
}




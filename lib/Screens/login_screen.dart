import 'package:flutter/material.dart';

class Login_Screen extends StatelessWidget {
  const Login_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Login Screen",)
      ),
      body: SingleChildScrollView(
        child: Column(
        children: [
         Image.asset("assets/images/login_image.png",
         fit: BoxFit.cover,
         ),
         SizedBox(height: 10,),
         Text("Welcome", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
         SizedBox(height: 10,),
         Padding(padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
         child: Column(
           children: [
             Container(
               padding: EdgeInsets.all(5),
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
                   hintText: "Enter Email or Phone number",
                   hintStyle: TextStyle(color: Colors.grey),

                   border: InputBorder.none,
                 ),
               ),
             ),
             SizedBox(height: 10,),
             Container(
               padding: EdgeInsets.all(5),
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
                   hintText: "Enter Password",
                   hintStyle: TextStyle(color: Colors.grey),
                   border: InputBorder.none,
                 ),
               ),
             ),
             SizedBox(height: 10,),
             Container(
               padding: EdgeInsets.all(5),
               decoration: BoxDecoration(
                   color: Colors.white,
                   borderRadius: BorderRadius.circular(30),
                   boxShadow: [BoxShadow(
                     color: Colors.black54,
                     blurRadius: 10,
                     offset: Offset(1.0, 0.0),
                   )]
               ),
               child: TextField(
                 obscureText: true,
                 decoration: InputDecoration(
                   hintText: "Enter Conform Password",
                   hintStyle: TextStyle(color: Colors.grey),
                   border: InputBorder.none,
                 ),
               ),
             ),
             SizedBox(height: 10,),
            ElevatedButton(
               child: Text("Login",),
               onPressed: () { print("Add data"); },
               ),
           ],
         ),
         ),
       ],
      ),
      ),
    );
  }
}

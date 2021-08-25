import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class My_Drawer extends StatelessWidget {
  const My_Drawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        padding: EdgeInsets.zero,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.deepPurple),
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.deepPurple),
                accountName: Text("Saleha Noor"),
                accountEmail: Text("Salehanoor896@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/saleha.png"),
                  ),
                  ),
                ),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
              ),
              title: Text("Home",
              textScaleFactor: 1.2,
              ),
            ),

            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
              ),
              title: Text("Your profile",
                textScaleFactor: 1.2,
              ),
            ),

            ListTile(
              leading: Icon(
                CupertinoIcons.settings,
              ),
              title: Text("Seetings",
                textScaleFactor: 1.2,
              ),
            ),

            ListTile(
              leading: Icon(
                CupertinoIcons.mail_solid,
              ),
              title: Text("Contact Us",
                textScaleFactor: 1.2,
              ),
            ),

              ]
              ),
        ),
      );
  }
}

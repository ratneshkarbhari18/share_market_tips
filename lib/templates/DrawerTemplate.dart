import 'package:flutter/material.dart';
import '../screens/Home.dart';
import '../screens/ContactUs.dart';
import '../screens/TnC.dart';
import '../screens/Login.dart';
import '../screens/Notifications.dart';


class DrawerTemplate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text("Ratnesh Karbhari"),
            accountEmail: Text("ratneshkarbhari23@gmail.com"),
          ),
          ListTile(
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder: (context)=>Login()));
            },
            title: Text("Login"),
          ),
          ListTile(
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder: (context)=>Home()));
            },
            title: Text("Home"),
          ),
          ListTile(
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder: (context)=>Notifications()));
            },
            title: Text("Notifications"),
          ),
          ListTile(
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder: (context)=>TnC()));
            },
            title: Text("Terms & conditions"),
          ),
          ListTile(
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder: (context)=>ContactUs()));
            },
            title: Text("Contact us"),
          ),
        ],
      ),
    );
  }
}

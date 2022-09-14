import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
         padding: EdgeInsets.zero,
        children: <Widget>[
          Container(
            height: 90.0,
            child: DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text(
                'Side menu',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),),
          ),
          ListTile(
            leading: Icon(Icons.verified_user),
            title: Text(
                'Profile',
                style: TextStyle(fontSize: 20)
            ),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text(
                'Settings',
                style: TextStyle(fontSize: 20),
            ),
            onTap: () => {Navigator.of(context).pop()},
          ),
        ],
      ),
    );
  }
}
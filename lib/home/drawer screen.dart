import 'package:flutter/material.dart';

class drawerscreen extends StatelessWidget {
  const drawerscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          DrawerHeader(
            child: Center(
              child: Text(
                'Side menu ',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 33, 150, 243),
            ),
          ),
          ListTile(
              leading: Icon(Icons.home),
              title: Text('Home Page'),
              onTap: () => {Navigator.of(context).pop()}),
          ListTile(
            leading: Icon(Icons.history),
            title: Text('Orders History'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.edit),
            title: Text('Edit & info'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          // ListTile(
          //   leading: Icon(Icons.border_color),
          //   title: Text('logout'),
          //   // onTap: () => {Navigator.of(context).pop()},
          // ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Logout'),
            onTap: () => {Navigator.of(context).pop()},
          ),
        ],
      ),
    );
  }
}

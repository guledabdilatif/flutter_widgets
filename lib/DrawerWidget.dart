import 'package:flutter/material.dart';
import 'package:flutter_widgets/pages/account.dart';
import 'package:flutter_widgets/pages/home.dart';
import 'package:flutter_widgets/pages/message.dart';

class Drawerwidget extends StatelessWidget {
  const Drawerwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple[900],
          title: Text("Drawer"),
          centerTitle: true,
          titleTextStyle: TextStyle(color: Colors.white),
        ),
        drawer: Drawer(
          child: Container(
            color: Colors.green[100],
            child: ListView(
              children: [
                DrawerHeader(
                  child: Icon(Icons.favorite, size: 50, color: Colors.white),
                ),
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text("Home"),
                  onTap: () {
                    Navigator.of(
                      context,
                    ).push(MaterialPageRoute(builder: (context) => Home()));
                  },
                ),
                ListTile(
                  leading: Icon(Icons.account_balance),
                  title: Text("Account"),
                  onTap: () {
                    Navigator.of(
                      context,
                    ).push(MaterialPageRoute(builder: (context) => Account()));
                  },
                ),
                ListTile(
                  leading: Icon(Icons.message),
                  title: Text("message"),
                  onTap: () {
                    Navigator.of(
                      context,
                    ).push(MaterialPageRoute(builder: (context) => Message()));
                  },
                ),
              ],
            ),
          ),
        ),
        endDrawer: Drawer(),
      ),
    );
  }
}

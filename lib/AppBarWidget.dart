import 'package:flutter/material.dart';

class Appbarwidget extends StatelessWidget {
  const Appbarwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(primarySwatch: Colors.green),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple[900],
          title: Text("AppBar"),
          centerTitle: true,
          titleTextStyle: TextStyle(color: Colors.white, fontSize: 16),
          elevation: 0,
          // iconTheme: IconThemeData(),
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu, color: Colors.white),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.share, color: Colors.white),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.logout, color: Colors.white),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.person, color: Colors.white),
            ),
          ],
        ),
        body: Container(),
      ),
    );
  }
}

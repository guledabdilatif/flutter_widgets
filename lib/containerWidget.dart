import 'package:flutter/material.dart';

void main() {
  runApp(const Containerwidget());
}

class Containerwidget extends StatelessWidget {
  const Containerwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Container Widget"),
          centerTitle: true,
          titleTextStyle: TextStyle(fontSize: 34, color: Colors.white),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(30),
            width: 150,
            height: 150,

            decoration: BoxDecoration(
              color: Colors.grey[300],
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade500,
                  offset: Offset(4.0, 4.0),
                  blurRadius: 15,
                  spreadRadius: 1,
                ),
                BoxShadow(
                  color: Colors.white,
                  offset: Offset(4.0, 4.0),
                  blurRadius: 15,
                  spreadRadius: 1,
                ),
              ],
              // color: Colors.red,
              // borderRadius: BorderRadius.circular(20),
              shape: BoxShape.circle,
              // border: Border.all(color: Colors.black, width: 3),
            ),
            child: Text("Container"),
          ),
        ),
      ),
    );
  }
}

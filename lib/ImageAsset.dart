import 'package:flutter/material.dart';

class Imageasset extends StatelessWidget {
  const Imageasset({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("Image Asset"),
          centerTitle: true,
          titleTextStyle: TextStyle(color: Colors.white, fontSize: 24),
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(300),
              child: Container(
                color: Colors.red,
                width: 200,
                height: 200,
                child: Image.asset(fit: BoxFit.fill, 'assets/images/img2.jpg'),
              ),
            ),
            Container(
              color: Colors.red,
              width: 200,
              height: 200,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(300),
                child: Image.asset('assets/images/livestock-grazing.jpg'),
              ),
            ),
            Container(
              color: Colors.red,
              width: 200,
              height: 200,
              child: Image.asset('assets/images/aerial.png'),
            ),
          ],
        ),
      ),
    );
  }
}

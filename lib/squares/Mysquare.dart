import 'package:flutter/material.dart';

class Mysquare extends StatelessWidget {
  // const Mysquare({super.key});

  final String child;
  Mysquare({required this.child});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        height: 400,
        width: 100,
        color: Colors.amber,
        child: Text(child),
      ),
    );
  }
}

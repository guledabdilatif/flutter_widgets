import 'package:flutter/material.dart';

class Circles extends StatelessWidget {
  final String child;

  const Circles({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      decoration: const BoxDecoration(
        color: Colors.red,
        shape: BoxShape.circle,
      ),
      child: Center(child: Text(child)),
    );
  }
}

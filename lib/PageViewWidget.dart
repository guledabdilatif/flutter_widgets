import 'package:flutter/material.dart';
import 'package:flutter_widgets/posts/post_1.dart';
import 'package:flutter_widgets/posts/post_2.dart';
import 'package:flutter_widgets/posts/post_3.dart';

class Pageviewwidget extends StatelessWidget {
  Pageviewwidget({super.key});
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        controller: _controller,
        children: [Post1(), Post2(), Post3()],
      ),
    );
  }
}

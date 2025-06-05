import 'package:flutter/material.dart';
import 'package:flutter_widgets/squares/Mysquare.dart';
import 'package:flutter_widgets/squares/circles.dart';

class Listviewbuilder extends StatelessWidget {
  // const Listviewbuilder({super.key});
  final List _post = [
    'post 1',
    'post 1',
    'post 1',
    'post 1',
    'post 2',
    'post 3',
  ];
  final List _stories = [
    'story 1',
    'story 2',
    'story 3',
    'story 4',
    'story 5',
    'story 6',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //stories
          Container(
            height: 100,
            child: Expanded(
              child: ListView.builder(
                itemCount: _stories.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Circles(child: _stories[index]);
                },
              ),
            ),
          ),

          // posts
          Expanded(
            // height: 400,
            child: ListView.builder(
              itemCount: _post.length,
              itemBuilder: (context, index) {
                return Mysquare(child: _post[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}

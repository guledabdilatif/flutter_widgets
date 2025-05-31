import 'package:flutter/material.dart';

class Sliverappwidget extends StatelessWidget {
  const Sliverappwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leading: Icon(Icons.menu),
            // title: Text("SLIVER APP BAR"),
            floating: true,
            pinned: true,
            expandedHeight: 300,
            backgroundColor: Colors.deepPurple,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(color: Colors.pink),
              title: Text("Slive App Bar"),
            ),
          ),
          SliverToBoxAdapter(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: Container(height: 400, color: Colors.deepPurple),
            ),
          ),
          SliverToBoxAdapter(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: Container(height: 400, color: Colors.deepPurple),
            ),
          ),
          SliverToBoxAdapter(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: Container(height: 400, color: Colors.deepPurple),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_widgets/Tabs/secondTab.dart';
import 'package:flutter_widgets/Tabs/thirdTab.dart';
import 'package:flutter_widgets/Tabs/firstTab.dart';

class Tabbarwidget extends StatelessWidget {
  const Tabbarwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: Column(
          children: [
            TabBar(
              tabs: [
                Tab(icon: Icon(Icons.home, color: Colors.deepPurple)),
                Tab(icon: Icon(Icons.settings, color: Colors.blue)),
                Tab(icon: Icon(Icons.share, color: Colors.green)),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [Firsttab(), Secondtab(), Thirdtab()],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

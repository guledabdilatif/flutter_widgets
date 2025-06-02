import 'package:flutter/material.dart';
import 'package:flutter_widgets/PageViewWidget.dart';
import 'package:flutter_widgets/stackWidget.dart';
// import 'package:flutter_widgets/AnimatedContainerWidget.dart';
// import 'package:flutter_widgets/AppBarWidget.dart';
// import 'package:flutter_widgets/BottomNavBar.dart';
// import 'package:flutter_widgets/AppBarWidget.dart';
// import 'package:flutter_widgets/BottomNavBar.dart';
// import 'package:flutter_widgets/DrawerWidget.dart';
// import 'package:flutter_widgets/SliverAppWidget.dart';
// import 'package:flutter_widgets/TabBarWidget.dart';
// import 'package:flutter_widgets/GestureDetectorWidget.dart';
// import 'package:flutter_widgets/ColumnsRows.dart';
// import 'package:flutter_widgets/ExpandedWidget.dart';
// import 'package:flutter_widgets/ImageAsset.dart';
// import 'package:flutter_widgets/RoundedCorners.dart';
// import 'package:flutter_widgets/containerWidget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Stackwidget());
  }
}


// 2pm 
// listview and builder 
// gridview and builder 
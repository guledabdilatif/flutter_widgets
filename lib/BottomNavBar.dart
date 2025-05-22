import 'package:flutter/material.dart';
import 'package:flutter_widgets/pages/account.dart';
import 'package:flutter_widgets/pages/home.dart';
import 'package:flutter_widgets/pages/balance.dart';
import 'package:flutter_widgets/pages/message.dart';

class Bottomnavbar extends StatefulWidget {
  const Bottomnavbar({super.key});

  @override
  State<Bottomnavbar> createState() => _BottomnavbarState();
}

class _BottomnavbarState extends State<Bottomnavbar> {
  int _selectedindex = 0;
  void navigateAround(int index) {
    setState(() {
      _selectedindex = index;
    });
  }

  final List<Widget> _pages = [
    Home(),
    Message(),
    Balance(),
    Account(),

    // Center(child: Text("Home Pages", style: TextStyle(fontSize: 24))),
    // Center(child: Text("Message", style: TextStyle(fontSize: 24))),
    // Center(child: Text("Balance Page", style: TextStyle(fontSize: 24))),
    // Center(child: Text("Account Page", style: TextStyle(fontSize: 24))),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // appBar: AppBar(
        //   title: Text("Bottom Navigation Bar Widget"),
        //   centerTitle: true,
        //   titleTextStyle: TextStyle(fontSize: 34, color: Colors.white),
        //   backgroundColor: Colors.blue,
        // ),
        body: _pages[_selectedindex],
        bottomNavigationBar: BottomNavigationBar(
          onTap: navigateAround,
          currentIndex: _selectedindex,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
              icon: Icon(Icons.message),
              label: "Message",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_balance),
              label: "Balance",
            ),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Account"),
          ],
        ),
      ),
    );
  }
}

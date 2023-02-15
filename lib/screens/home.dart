import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:maps/auth/main_auth.dart';
import 'package:maps/main.dart';
import 'package:maps/screens/account.dart';
import 'package:maps/screens/search.dart';

class First extends StatefulWidget {
  @override
  State<First> createState() => _FirstState();
}

class _FirstState extends State<First> {
  int _selectedIndex = 0;

  static List<Widget> pages = <Widget>[
    // TODO: Replace with ExploreScreen
    hehe(),
    // TODO: Replace with RecipesScreen
    Search(),
    Account(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.map,
              size: 30,
            ),
            label: "Maps",
            backgroundColor: Colors.amber,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              size: 30,
              //color: Colors.white,
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_box,
              size: 30,
              //color: Colors.white,
            ),
            label: 'Account',
          ),
        ],
      ),
      
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 60, 14, 139),
        title: Center(child: Text(
          "Moto Pair",
          style: TextStyle(
            color: Colors.white,
            fontSize: 35,
            fontFamily: "title",
            fontWeight: FontWeight.bold),
            ),
          ),
      ),
      body: pages[_selectedIndex],
    );
  }
}

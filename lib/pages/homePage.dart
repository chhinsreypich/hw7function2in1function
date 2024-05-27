// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:profile/pages/menu.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _pages = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      // Icon : Icons.grid_4x4_rounded,
      length: 5,
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 94, 134, 143),
        // backgroundColor: Color.fromARGB(255, 94, 134, 143),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(top: 4),
          ),
        ),
        bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Colors.transparent,
          buttonBackgroundColor: Color.fromARGB(255, 34, 131, 107),
          color: Color.fromARGB(255, 70, 93, 87),
          animationDuration: Duration(milliseconds: 300),
          items: const <Widget>[
            Icon(
              Icons.home,
              color: Colors.white,
              size: 35,
            ),
            Icon(
              Icons.menu_book_rounded,
              color: Colors.white,
              size: 35,
            ),
            Icon(
              Icons.shopping_cart,
              color: Colors.white,
              size: 35,
            ),
            Icon(
              Icons.list_alt_rounded,
              color: Colors.white,
              size: 35,
            ),
            Icon(
              Icons.account_circle,
              color: Colors.white,
              size: 35,
            ),
          ],
          onTap: (index) {
            if (index == 1) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MenuPage()),
              );
            } else if (index == 4){
              Navigator.pushNamed(context, "/profile");
            }
            
            else {
              setState(() {
                _pages = index;
              });
            }
          },
        ),
      ),
    );
  }
}

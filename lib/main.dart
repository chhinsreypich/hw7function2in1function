// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:profile/pages/profile_page.dart';
// import 'package:flutter/services.dart';
// import 'package:profile/pages/cart.dart';
import 'pages/homePage.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: Profile(),
      routes : {
          "/" : (context) => HomePage(),
          "/homePage" :(context) =>HomePage(),
          "/profile" :(context) => ProfilePage()
        },
      


    );
  }
}
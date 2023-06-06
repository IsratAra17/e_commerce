import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:ecommerce/components/appbottomNav.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/components/appbottomNav.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:appCurvedNavbar(),

        body:Container()
     ,  );
  }
}

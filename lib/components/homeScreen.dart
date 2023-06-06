import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:ecommerce/components/appbottomNav.dart';
import 'package:ecommerce/components/categoryPage.dart';
import 'package:ecommerce/components/homepage.dart';
import 'package:ecommerce/components/oderPage.dart';
import 'package:ecommerce/components/productPage.dart';
import 'package:ecommerce/components/adminProfilePage.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/components/appbottomNav.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> pages=[
    HomePage(),
    Product_Page(),
    Category_page(),
    Order_Page(),
    Admin_Profile_Page()
  ];
  int TabIndex = 0;

  onItemTapped(int index) {
    setState(() {
      TabIndex = index;
      print("Curr index: $TabIndex");
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(child: pages[TabIndex],),


      bottomNavigationBar: appCurvedNavbar(onItemTapped),
    );
  }
}

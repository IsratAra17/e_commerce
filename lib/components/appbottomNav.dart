
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:ecommerce/style/style.dart';
import 'package:flutter/material.dart';

CurvedNavigationBar appCurvedNavbar(){
  return CurvedNavigationBar(
    animationCurve: Curves.easeIn,
    backgroundColor: colorYellow,
    //buttonBackgroundColor: colorBlue,
    color: colorWhite,

    items: [
      Icon(Icons.home,semanticLabel: "Home",color: colorBlue,),
      Icon(Icons.fastfood_outlined,semanticLabel: "Product",color: colorRed,),
      Icon(Icons.category,semanticLabel: "Category",color: colorGreen,),
      Icon(Icons.shopping_cart,semanticLabel: "Order",color: Colors.lightBlue,),
      Icon(Icons.person,semanticLabel: "Profile",color: Colors.deepPurple,),
    ],
  );
}

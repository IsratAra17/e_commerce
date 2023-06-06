import 'package:ecommerce/style/style.dart';
import 'package:flutter/material.dart';

BottomNavigationBar appBottomNavBar(currentIndex,onItemtapped) {
  return BottomNavigationBar(
    items: [
      BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
      BottomNavigationBarItem(icon: Icon(Icons.category),label: "Category"),
      BottomNavigationBarItem(icon: Icon(Icons.radar),label: "Product"),
      BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),label: "Order"),
      BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),
    ],
    selectedItemColor: colorGreen,
    unselectedItemColor: colorLightGray,
    currentIndex:currentIndex ,
    showSelectedLabels: true,
    showUnselectedLabels: true,
    onTap: onItemtapped,
    type: BottomNavigationBarType.fixed,


  );
}

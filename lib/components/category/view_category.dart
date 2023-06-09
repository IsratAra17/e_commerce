import 'package:flutter/material.dart';

class Category_page extends StatefulWidget {
  const Category_page({Key? key}) : super(key: key);

  @override
  State<Category_page> createState() => _Category_pageState();
}

class _Category_pageState extends State<Category_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("This is Category"),
    );
  }
}

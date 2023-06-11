import 'dart:ui';

import 'package:ecommerce/api/apiClient.dart';
import 'package:ecommerce/components/category/categoryList.dart';
import 'package:ecommerce/style/style.dart';
import 'package:flutter/material.dart';

class Category_page extends StatefulWidget {
  const Category_page({Key? key}) : super(key: key);

  State<Category_page> createState() => _Category_pageState();
}

class _Category_pageState extends State<Category_page> {
  var myList = [
    {"img": "https://shrtco.de/qkc1U8", "title": "1st"},
    {"img": "https://shrtco.de/qkc1U8", "title": "2nd"},
    {"img": "https://shrtco.de/qkc1U8", "title": "4th"},
    {"img": "https://shrtco.de/qkc1U8", "title": "5th"},
    {"img": "https://shrtco.de/qkc1U8", "title": "6th"},
    {"img": "https://shrtco.de/qkc1U8", "title": "7th"},
    {"img": "https://shrtco.de/qkc1U8", "title": "8th"},
    {"img": "https://shrtco.de/qkc1U8", "title": "9th"},
    {"img": "https://shrtco.de/qkc1U8", "title": "10th"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      color: colorLightYellow,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ElevatedButton(onPressed: (){
            setState(() {
              print("clicked!");
              GetCategoryRequest();

            });

          }, child: SuccessButtonChild("Click")),
          Text("Categories", style: Head1TextStyle(colorDarkBlue)),
          SizedBox(
            height: 5,
          ),
          Expanded(
            flex: 9,
            child: CategoryList(),
          ),
        ],
      ),
    ));
  }
}

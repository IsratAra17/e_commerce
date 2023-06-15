import 'dart:js';

import 'package:ecommerce/style/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/components/category/category_model.dart';
GridView CategoryList(categorymodel) {
  return GridView.builder(
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 1,
        childAspectRatio: 1.2

    ),
    itemCount: 6,
    itemBuilder: (context, index) {
      return GestureDetector(
        onTap: (){},

        child:  Container(
          color: colorLightPink,
          margin: EdgeInsets.all(10),
      width: double.infinity,
      height: 220,

            child: Text( categorymodel.name),


        ));




    },
  );

}

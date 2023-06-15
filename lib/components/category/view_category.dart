import 'package:ecommerce/api/apiClient.dart';
import 'package:ecommerce/components/category/categoryList.dart';
import 'package:ecommerce/style/style.dart';
import 'package:flutter/material.dart';

import 'category_model.dart';

class Category_page extends StatefulWidget {
  const Category_page({Key? key}) : super(key: key);

  State<Category_page> createState() => _Category_pageState();
}

class _Category_pageState extends State<Category_page> {
  CategoryModel? categoryModel;
  List<CategoryModel> categoryList = [];

  @override
  void initState() {
    getCategory();
    super.initState();
  }

  getCategory() async {
    var data = await GetCategoryRequest();
    setState(() {
      for (var i in data) {
        categoryModel = CategoryModel.fromJson(i);
        categoryList.add(categoryModel!);
      }
    });
  }

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
          ElevatedButton(
              onPressed: () async{
                setState(() {
                  getCategory();
                print("List :   ${getCategory()}");

                });
              },
              child: SuccessButtonChild("Click")),
          Text("Categories", style: Head1TextStyle(colorDarkBlue)),
          SizedBox(
            height: 5,
          ),
          Expanded(
            flex: 9,
            child: CategoryList(categoryList),
          ),
        ],
      ),
    ));
  }
}

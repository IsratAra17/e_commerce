import 'package:ecommerce/style/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ScreenBackground(context),

  Container(
    padding: EdgeInsets.all(20),
    alignment: Alignment.center,
    child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Get Started With', style: Head1TextStyle(colorGreen)),
            SizedBox(
              height: 1,
            ),
            Text('FoodPanda', style:head6TextStyle(colorYellow)),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              onChanged:(Textvalue) {

              },

              decoration: AppInputDecoration("Email Address"),
            ),
            SizedBox(height: 20,),
            TextFormField(
              onChanged: (Textvalue){
                },
              decoration: AppInputDecoration("Password"),
            ),
            ],
        ),
  ),
]

    ),
    );
  }
}

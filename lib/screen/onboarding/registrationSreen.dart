import 'package:ecommerce/style/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ScreenBackground(context),

  Container(
    padding: EdgeInsets.fromLTRB(20, 30, 20, 30),
    alignment: Alignment.center,
    child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Registration', style: Head1TextStyle(colorGreen)),
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
            SizedBox(height: 20,),

            TextFormField(
              onChanged: (Textvalue){
              },
              decoration: AppInputDecoration("Name"),
            ),
            SizedBox(height: 20,),

            TextFormField(
              onChanged: (Textvalue){
              },
              decoration: AppInputDecoration("Contact"),
            ),
            SizedBox(height: 20,),

            Container(child: ElevatedButton(onPressed:(){} ,
              style: AppButtonStyle(colorOrange), child: SuccessButtonChild("Register Confirm"),
            ),)

          ],
        ),
  ),
]

    ),
    );
  }
}

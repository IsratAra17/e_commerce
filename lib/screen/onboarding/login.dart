import 'package:ecommerce/style/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../api/apiClient.dart';


class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  Map<String,String> FormValues={"email":"", "password":""};
  bool Loading=false;

  InputOnChange(MapKey, Textvalue){
    setState(() {
      FormValues.update(MapKey, (value) => Textvalue);
    });
  }

  FormOnSubmit() async{

    if(FormValues['email']!.length==0){
      ErrorToast('Email Required !');

    }
    else if(FormValues['password']!.length==0){
      ErrorToast('Password Required !');
    }
    else{

      print("Formvalues: $FormValues");
      var res=await SigninRequest(FormValues);
    }

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ScreenBackground(context),

  Container(
    padding: EdgeInsets.all(20),
    alignment: Alignment.center,
    child: (SingleChildScrollView(

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
                InputOnChange("email",Textvalue);

              },

              decoration: AppInputDecoration("Email Address"),
            ),
            SizedBox(height: 20,),
            TextFormField(
              onChanged: (Textvalue){
                InputOnChange("password",Textvalue);

              },
              decoration: AppInputDecoration("Password"),
            ),


            SizedBox(height: 20,),
            Container(child: ElevatedButton(onPressed:(){
              FormOnSubmit();
            } ,
              style: AppButtonStyle(colorOrange), child: SuccessButtonChild("Sign in"),
            ),)




          ],
        ),
    )
    )),
],

    ),
    );
  }
}

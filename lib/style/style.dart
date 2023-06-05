import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

const colorYellow=Color.fromRGBO(255, 192, 0, 1);
const colorRed = Color.fromRGBO(231, 28, 36, 1);
const colorDark = Color.fromRGBO(136, 28, 32, 1);
const colorGreen = Color.fromRGBO(33, 191, 115, 1);
const colorBlue = Color.fromRGBO(52, 152, 219, 1.0);
const colorOrange = Color.fromRGBO(230, 126, 34, 1.0);
const colorWhite = Color.fromRGBO(255, 255, 255, 1.0);
const colorDarkBlue = Color.fromRGBO(44, 62, 80, 1.0);
const colorLightGray = Color.fromRGBO(135, 142, 150, 1.0);
const colorLight = Color.fromRGBO(211, 211, 211, 1.0);

SvgPicture ScreenBackground(context) {
  return SvgPicture.asset(
    'assets/image/screen-back.svg',
    alignment: Alignment.center,
    width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height,
    fit: BoxFit.cover,
  );
}

ButtonStyle AppButtonStyle(btnColor) {
  return ElevatedButton.styleFrom(
      elevation: 1, padding: EdgeInsets.zero, backgroundColor: btnColor);
}

TextStyle Head1TextStyle(textcolor) {
  return TextStyle(
      color: textcolor,
      fontWeight: FontWeight.w400,
      fontSize: 28,
      fontFamily: 'poppins');
}

TextStyle head6TextStyle(textcolor) {
  return TextStyle(
      color: textcolor,
      fontWeight: FontWeight.w400,
      fontSize: 16,
      fontFamily: 'poppins');
}

TextStyle Head9TextStyle(textcolor) {
  return TextStyle(
      color: textcolor,
      fontWeight: FontWeight.w400,
      fontSize: 9,
      fontFamily: 'poppins');
}

InputDecoration AppInputDecoration(label)
{

  return InputDecoration(
    focusedBorder: const OutlineInputBorder(
      borderSide: const BorderSide(color: colorOrange,width: 1),
    ),
    fillColor: colorWhite,
    filled: true,
    contentPadding: EdgeInsets.fromLTRB(20, 10, 10, 20),
 enabledBorder: const OutlineInputBorder(
   borderSide: BorderSide(color: colorRed,width: 0.0),
 ),
    border: OutlineInputBorder(),
    labelText: label,

  );
}
void SuccessToast(msg) {
  Fluttertoast.showToast(
      msg: msg,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: colorGreen,
      textColor: colorWhite,
      fontSize: 16.0);
}

void ErrorToast(msg) {
  Fluttertoast.showToast(
    msg: msg,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.BOTTOM,
    timeInSecForIosWeb: 1,
    backgroundColor: colorRed,
    textColor: colorWhite,
    fontSize: 16.0,
  );
}
TextStyle ButtonTextStyle() {
  return TextStyle(
    fontWeight: FontWeight.w400,
    fontFamily: 'poppins',
    fontSize: 14,
  );
}
Ink SuccessButtonChild(String ButtonText) {
  return Ink(
    decoration: BoxDecoration(
        color: colorGreen, borderRadius: BorderRadius.circular(6)),
    child: Container(
      height: 45,
      alignment: Alignment.center,
      child: Text(
        ButtonText,
        style: ButtonTextStyle(),
      ),
    ),
  );
}
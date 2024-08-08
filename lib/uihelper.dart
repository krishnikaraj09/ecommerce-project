import 'package:flutter/material.dart';

class Uihelper{
  static CustomText(String text){
    return Text(text,
      style: TextStyle(
        fontSize: 24.0,
        fontWeight: FontWeight.bold,
      ),);
  }

  static CustomText1(String text){
    return Text(text,
      style: TextStyle(
        fontSize: 16.0,
        fontWeight: FontWeight.bold,
      ),);
  }

  static CustomCircleAvatar(String image){
    return CircleAvatar(
      radius: 45,
      backgroundImage: AssetImage(image),
      backgroundColor: Colors.grey,
    );
  }
}
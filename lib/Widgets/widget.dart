import 'package:flutter/material.dart';

Widget appBarMain(BuildContext context){
  return AppBar(
    title: Text('MEDICO'),
  );
}
InputDecoration textFieldInputDecoration(String hintText){
  return  InputDecoration(
    hintText: hintText,
    hintStyle: TextStyle(
      color: Colors.white54,
    ),
    focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide(
          color: Colors.white
      ),
    ),
    enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: Colors.white,
        )
    ),
  );
}

TextStyle simpleTextFieldStyle(){
  return TextStyle(
    color: Colors.white,
    fontSize: 18,
    fontWeight: FontWeight.bold,
  );
}
TextStyle mediumTextStyle(){
  return TextStyle(
    color: Colors.black,
    fontSize: 19,
    fontWeight: FontWeight.bold,
  );
}
import 'package:flutter/material.dart';
import 'package:medico/Views/signin.dart';
import 'package:medico/Views/signup.dart';
class Authenticate extends StatefulWidget {
  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  @override

  bool showSignIn = true;

  void toggleView(){
    setState(() {
      showSignIn=!showSignIn;
    });
  }
  Widget build(BuildContext context) {
      if(showSignIn) {
        return signin(toggleView);
      }else{
          return signup(toggleView);
      }
  }
}

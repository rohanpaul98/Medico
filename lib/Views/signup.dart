import 'package:flutter/material.dart';
import 'package:medico/Views/signin.dart';
import 'package:medico/Widgets/widget.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:medico/services/Database.dart';
import 'package:medico/services/auth.dart';

import 'Mainmenu.dart';
class signup extends StatefulWidget {
  final Function toggle;
  signup(this.toggle);
  @override

  _signupState createState() => _signupState();
}
class _signupState extends State<signup> {
  bool isLoading = false;
  AuthMethods authMethods = new AuthMethods();
  DatabaseMethods databaseMethods = new DatabaseMethods();
  final formkey = GlobalKey<FormState>();


  TextEditingController userNameTextEditingController = new TextEditingController();
  TextEditingController emailTextEditingController = new TextEditingController();
  TextEditingController passwordTextEditingController = new TextEditingController();

  signMeUp() async {
    if (formkey.currentState.validate()) {
      setState(() {
        isLoading = true;
      });
      authMethods.signUpWithEmailAndPassword(emailTextEditingController.text,
          passwordTextEditingController.text).then((val) {

            Map<String,String> userInfoMap = {
              "Name":userNameTextEditingController.text,
              "email":emailTextEditingController.text,
            };
            databaseMethods.uploadUserInfo(userInfoMap);
            Navigator.pushReplacement(context, MaterialPageRoute(
                builder:(context) =>Menu()),
            );

      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarMain(context),
      body: isLoading
          ? Container(child: Center(child: CircularProgressIndicator(),),)
          : SingleChildScrollView(
        child: Container(
          height: MediaQuery
              .of(context)
              .size
              .height - 50,
          alignment: Alignment.bottomCenter,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Form(
                  key: formkey,
                  child: Column(
                    children: [
                      TextFormField(
                        validator: (val) {
                          return val.isEmpty || val.length < 4
                              ? "Please provide valid username"
                              : null;
                        },
                        controller: userNameTextEditingController,
                        style: simpleTextFieldStyle(),
                        decoration: textFieldInputDecoration("username"),
                      ),
                      TextFormField(
                        validator: (val) {
                          return RegExp(
                              r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                              .hasMatch(val) ?
                          null : "Enter correct email";
                        },
                        controller: emailTextEditingController,
                        style: simpleTextFieldStyle(),
                        decoration: textFieldInputDecoration("email"),
                      ),
                      TextFormField(
                        controller: passwordTextEditingController,
                        validator: (val) {
                          return val.length < 6
                              ? "Enter Password 6+ characters"
                              : null;
                        },
                        obscureText: true,
                        style: simpleTextFieldStyle(),
                        decoration: textFieldInputDecoration("Password"),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  child: Container(
                    alignment: Alignment.centerRight,
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: Text("Forgot password?",
                      style: simpleTextFieldStyle(),
                    ),
                  ),
                ),
                SizedBox(height: 16,),
                GestureDetector(
                  onTap: () {
                    signMeUp();
                  },
                  child: Container(
                    alignment: Alignment.center,
                    width: MediaQuery
                        .of(context)
                        .size
                        .width,
                    padding: EdgeInsets.symmetric(vertical: 20),
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [
                              const Color(0xFF6A1B9A),
                              const Color(0xFF7B1FA2)
                            ]
                        ),
                        borderRadius: BorderRadius.circular(30)
                    ),
                    child: Text('SignUp',
                      style: mediumTextStyle(),),
                  ),
                ),
                SizedBox(height: 16,),
                GestureDetector(
                  onTap: (){
                    authMethods.googleSignIn();
                  },
                  child: Container(
                    alignment: Alignment.center,
                    width: MediaQuery
                        .of(context)
                        .size
                        .width,
                    padding: EdgeInsets.symmetric(vertical: 20),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30)
                    ),
                    child: Text('SignUp with Google',
                      style: mediumTextStyle(),),
                  ),
                ),
                SizedBox(height: 16,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have an account?", style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                    GestureDetector(
                      onTap: () {
                        widget.toggle();
                      },
                      child: Text("SignIn Now", style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.bold,
                      ),),
                    ),
                  ],
                ),
                SizedBox(height: 50,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

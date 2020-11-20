import 'package:flutter/material.dart';
import 'package:medico/Helper/authenticate.dart';
import 'package:medico/Views/signin.dart';
import 'package:medico/Widgets/widget.dart';
import 'package:medico/services/auth.dart';
class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  AuthMethods authMethods = new AuthMethods();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MEDICO'),
        actions: [
          GestureDetector(
            onTap: (){
             authMethods.Signout();
             Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>Authenticate(),
             ));
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Icon(Icons.exit_to_app),
            ),
          ),
        ],
      ),
      body: Center(
        child: Text('hi',
        style: TextStyle(
          color: Colors.white,
        ),),
      ),

    );
  }
}

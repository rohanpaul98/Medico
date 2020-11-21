import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class app1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: app2(),
    );
  }
}

class app2 extends StatefulWidget {
  @override
  _app2State createState() => _app2State();
}

class _app2State extends State<app2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: app3(),
    );
  }
}

class app3 extends StatefulWidget {
  @override
  _app3State createState() => _app3State();
}

class _app3State extends State<app3> {
  calll(){
    String phoneno ="tel:123456";
    launch(phoneno);
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: (){
          calll();
        },
        child: Container(
          color: Colors.red,
          height: 120,
          width: 120,
          child: Center(
            child:Text('Emergency'),
          ),
        ),
      ),
    );
    // ignore: dead_code
  }
}




import 'package:flutter/cupertino.dart';
import'package:flutter/material.dart';
import 'package:medico/Helper/authenticate.dart';
import 'package:medico/Views/Ambulance.dart';
import 'package:medico/Views/Appointment.dart';
import 'package:medico/Views/Mainmenu.dart';
import 'package:medico/Views/Scanner.dart';
import 'package:medico/Views/griddashboard.dart';
import 'Views/categories.dart';
import 'file:///C:/Users/ROHAN%20PAUL/Desktop/medico/lib/Views/signin.dart';
import 'package:medico/Views/signup.dart';
void main() => runApp(medic());

class medic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: 'Medico',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFFFFC107),
        scaffoldBackgroundColor: Color(0xff1F1F1F),
        primarySwatch: Colors.amber,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home:Authenticate(),
    );
  }
}

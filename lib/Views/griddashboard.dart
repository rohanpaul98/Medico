//import 'dart:html';
//import 'dart:js';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:medico/Views/Ambulance.dart';
import 'package:medico/Views/Appointment.dart';
import 'package:medico/Views/Scanner.dart';
class Dashboard extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var color = 0xff453658;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 10,),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>appointment()));
            },
            child: Container(
              alignment: Alignment.center,
              height: 60,
              decoration: BoxDecoration(
                color: Color(color),
                borderRadius: BorderRadius.circular(50),
              ),
              child: Text('Book an Appointment',style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),),

            ),
          ),
          SizedBox(height: 10,),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>app1()));
            },
            child: Container(
              alignment: Alignment.center,
              height: 60,
              decoration: BoxDecoration(
                color: Color(color),
                borderRadius: BorderRadius.circular(50),
              ),
              child: Text('Ambulance',style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),),

            ),
          ),
          SizedBox(height: 10,),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>MyApp()));
            },
            child: Container(
              alignment: Alignment.center,
              height: 60,
              decoration: BoxDecoration(
                color: Color(color),
                borderRadius: BorderRadius.circular(50),
              ),
              child: Text('Prescriptions',style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),),

            ),
          ),
          SizedBox(height: 10,),
          GestureDetector(
            onTap: (){
              //Navigator.push(context, MaterialPageRoute(builder: (context)=>()));
            },
            child: Container(
              alignment: Alignment.center,
              height: 60,
              decoration: BoxDecoration(
                color: Color(color),
                borderRadius: BorderRadius.circular(50),
              ),
              child: Text('Medicines',style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),),

            ),
          ),
          SizedBox(height: 10,),
          GestureDetector(
            onTap: (){
              //Navigator.push(context, MaterialPageRoute(builder: (context)=>book()));
            },
            child: Container(
              alignment: Alignment.center,
              height: 60,
              decoration: BoxDecoration(
                color: Color(color),
                borderRadius: BorderRadius.circular(50),
              ),
              child: Text('Settings ',style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),),

            ),
          ),
          SizedBox(height: 10,),
          GestureDetector(
            onTap: (){
              //Navigator.push(context, MaterialPageRoute(builder: (context)=>book()));
            },
            child: Container(
              alignment: Alignment.center,
              height: 60,
              decoration: BoxDecoration(
                color: Color(color),
                borderRadius: BorderRadius.circular(50),
              ),
              child: Text('Help',style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),),

            ),
          ),
          SizedBox(height: 10,),

        ],
      ),
    );
  }
}
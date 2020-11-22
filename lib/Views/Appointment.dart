import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medico/Views/Dermatologist.dart';
import 'package:medico/Views/Gynecoligist.dart';
import 'package:medico/Views/Neurologist.dart';
import 'package:medico/Views/Psychiatrist.dart';
import 'package:medico/Views/cardiologist.dart';
import 'package:medico/Views/categories.dart';
import 'package:medico/Views/genphysician.dart';
import 'package:medico/Views/orthopedic.dart';
import 'package:medico/Widgets/widget.dart';

class appointment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarMain(context),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10,),
           GestureDetector(
             onTap: (){
               Navigator.push(context, MaterialPageRoute(builder: (context)=>Dentistcall()));
             },
             child: Container(
               alignment: Alignment.center,
               height: 80,
               decoration: BoxDecoration(
                 color: Colors.white,
                 borderRadius: BorderRadius.circular(30),
               ),
               child: Text('Dentist',style: TextStyle(
                 color: Colors.black,
                 fontSize: 39,
                 fontWeight: FontWeight.bold,
               ),),

             ),
           ),
            SizedBox(height: 10,),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Dermatologistcall()));
              },
              child: Container(
                alignment: Alignment.center,
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Text('Dermatologist',style: TextStyle(
                  color: Colors.black,
                  fontSize: 39,
                  fontWeight: FontWeight.bold,
                ),),

              ),
            ),
            SizedBox(height: 10,),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Orthopediccall()));
              },
              child: Container(
                alignment: Alignment.center,
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Text('Orthopedic Surgeon',style: TextStyle(
                  color: Colors.black,
                  fontSize: 39,
                  fontWeight: FontWeight.bold,
                ),),

              ),
            ),
            SizedBox(height: 10,),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Pcall()));
              },
              child: Container(
                alignment: Alignment.center,
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Text('General Physician',style: TextStyle(
                  color: Colors.black,
                  fontSize: 39,
                  fontWeight: FontWeight.bold,
                ),),

              ),
            ),
            SizedBox(height: 10,),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Ncall()));
              },
              child: Container(
                alignment: Alignment.center,
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Text('Neurologist',style: TextStyle(
                  color: Colors.black,
                  fontSize: 39,
                  fontWeight: FontWeight.bold,
                ),),

              ),
            ),
            SizedBox(height: 10,),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>gcall()));
              },
              child: Container(
                alignment: Alignment.center,
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Text('Gynaecologist',style: TextStyle(
                  color: Colors.black,
                  fontSize: 39,
                  fontWeight: FontWeight.bold,
                ),),

              ),
            ),
            SizedBox(height: 10,),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Pycall()));
              },
              child: Container(
                alignment: Alignment.center,
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Text('Psychiatrist',style: TextStyle(
                  color: Colors.black,
                  fontSize: 39,
                  fontWeight: FontWeight.bold,
                ),),

              ),
            ),
            SizedBox(height: 10,),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ccall()));
              },
              child: Container(
                alignment: Alignment.center,
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Text('Cardiologist',style: TextStyle(
                  color: Colors.black,
                  fontSize: 39,
                  fontWeight: FontWeight.bold,
                ),),

              ),
            )
          ],
        ),
      ),
    );
  }
}

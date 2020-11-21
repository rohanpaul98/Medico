import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
               Dentist();
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
                Dermatologist();
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
                OrthopedicSurgeon();
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
                GeneralPhysician();
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
                Nuerologist();
              },
              child: Container(
                alignment: Alignment.center,
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Text('Nuerologist',style: TextStyle(
                  color: Colors.black,
                  fontSize: 39,
                  fontWeight: FontWeight.bold,
                ),),

              ),
            ),
            SizedBox(height: 10,),
            Container(
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
            SizedBox(height: 10,),
            GestureDetector(
              onTap: (){
                Psychiatrist();
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
                Cardiologist();
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

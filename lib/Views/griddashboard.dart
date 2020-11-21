import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class GridDashboard extends StatelessWidget{
  Item item1 = new Item(
    title:"Book an Appointment",
    img:"Assets/Images/BookAppointment400.png",
  );
  Item item2 = new Item(
  title:"Ambulance",
  img:"Assets/Images/prescription.png"
  );
  Item item3 = new Item(
    title:"Prescription",
    img:"Assets/Images/prescription.png",
  );
  Item item4 = new Item(
    title:"Medicine",
    img:"Assets/Images/Medicines.jpg",
  );
  Item item5 = new Item(
    title:"Settings",
    img:"Assets/Images/setting.jpg",
  );
  Item item6 = new Item(
    title:"Help",
    img:"Assets/Images/help.png",
  );


  @override
  Widget build(BuildContext context) {
    List<Item> mylist = [item1,item2,item3,item4,item5,item6];
    var color = 0xff453658;
    return Flexible(
      child: GridView.count(
        childAspectRatio: 1.0,
        padding: EdgeInsets.only(left: 16,right: 16),
        crossAxisCount: 2,
        crossAxisSpacing: 18,
        mainAxisSpacing: 18,
        children: mylist.map((data){
          return Container(
            decoration: BoxDecoration(color: Color(color),
            borderRadius: BorderRadius.circular(10)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(data.img,width: 42,),
                SizedBox(height: 14,),
                Text(data.title,style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold
                ),),
                SizedBox(
                  height: 14,
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
class Item{
  String title;
  String img;
  Item({this.title,this.img});
}
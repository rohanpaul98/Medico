import 'package:flutter/material.dart';
import 'package:medico/Widgets/widget.dart';


class Orthopediccall extends StatefulWidget{
  @override
  State<Orthopediccall> createState() {
    return new Orthopedic();
  }
}

class Orthopedic extends State<Orthopediccall>{
  List<String> Names = [
    "Dr.Chandraanan Saha","Dr.Chinmay Banerjee","Dr.Deenanath Ghosh","Dr.Janesh Singh","Dr.Jagatpal Sharma","Dr.Gurpreet Singh","Dr.Gurudas Singh"
  ];
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: appBarMain(context),
      body: new Container(
        child: new ListView.builder(
          reverse: false,
          itemBuilder: (_,int index)=>EachList(this.Names[index]),
          itemCount: this.Names.length,
        ),
      ),
    );
  }
}
class EachList extends StatelessWidget{
  final String name;
  EachList(this.name);
  @override
  Widget build(BuildContext context) {
    return new Card(
      child: new Container(
        padding: EdgeInsets.all(8.0),
        child: GestureDetector(
          onTap: (){
            this.name;
          },
          child: new Row(
            children: <Widget>[
              new CircleAvatar(child: new Text(name[3]),),
              new Padding(padding: EdgeInsets.only(right: 10.0)),
              new Text(name,style: TextStyle(fontSize: 20.0),)
            ],
          ),
        ),
      ),
    );
  }

}
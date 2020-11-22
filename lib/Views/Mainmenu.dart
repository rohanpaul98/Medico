import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medico/Helper/authenticate.dart';
import 'package:medico/Views/signin.dart';
import 'package:medico/Widgets/widget.dart';
import 'package:medico/services/Database.dart';
import 'package:medico/services/auth.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/services.dart';
import 'griddashboard.dart';


class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}
DatabaseMethods databaseMethods = new DatabaseMethods();
class _MenuState extends State<Menu> {
  AuthMethods authMethods = new AuthMethods();
  TextEditingController emailEditingController = new TextEditingController();
  TextEditingController passwordEditingController = new TextEditingController();
  String var2;
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
      backgroundColor: Color(0xff1F1F1F),
      body:Column(
        children: <Widget>[
          SizedBox(height: 10,),
          Padding(
              padding:EdgeInsets.only(left: 16,right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Hi Buddy',style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                    SizedBox(height: 4,),
                    Text("Home",style: TextStyle(
                      color: Colors.white,
                      fontWeight:FontWeight.bold,
                      fontSize: 18,
                    ),
                    ),
                  ],
                ),
                IconButton(
                  alignment: Alignment.topRight,
                    icon: CircleAvatar(
                      backgroundImage: AssetImage('Assets/Images/chatbot.png'),
                      radius: 80,
                    ),
                    onPressed: (){
                    String url='https://bot.dialogflow.com/13a7c4f3-3104-4af8-97c7-5ce9a4e29e78';
                    launch(url);
                  },
                ),

              ],
            ),
          ),
          SizedBox(height: 20,),
          Dashboard(),
        ],
      ),

    );
  }
}

import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseMethods {

  uploadUserInfo(userMap){
    Firestore.instance.collection("users").add(userMap);
  }
  

  getUserInfo(String email) async {
    return Firestore.instance
        .collection("users")
        .where("userEmail", isEqualTo: email)
        .getDocuments()
        .catchError((e) {
      print(e.toString());
    });
  }
}
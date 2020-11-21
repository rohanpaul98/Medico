import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:medico/module/user.dart';
import 'package:rxdart/rxdart.dart';

class AuthMethods{
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  final Firestore _db = Firestore.instance;

  Observable<FirebaseUser> user;
  Observable<Map<String,dynamic>>profile;
  PublishSubject loading = PublishSubject();


  User _userFromFirebaseUser(FirebaseUser user){
    return user!=null? User(userId: user.uid):null;
  }
  Future signInWithEmailAndPassword(String email,String password)async{
    try{
      AuthResult result =  await _auth.signInWithEmailAndPassword(email: email,password: password);
      FirebaseUser firebaseUser = result.user;
      return _userFromFirebaseUser(firebaseUser);
    }catch(e){
      print(e.toString());
    }
  }

  Future<FirebaseUser> googleSignIn() async {
    loading.add(true);
    GoogleSignInAccount googleUser = await _googleSignIn.signIn();
    GoogleSignInAuthentication googleAuth = await googleUser.authentication;
  }

  AuthMethods(){
    user = Observable(_auth.onAuthStateChanged);
    profile = user.switchMap((FirebaseUser u){
      if(u !=null){
        return _db.collection('users').document(u.uid).snapshots().map((snap) => snap.data);
      }else{
        return Observable.just({});
      }
    });
  }



  Future signUpWithEmailAndPassword(String email,String password)async{
    try{
      AuthResult result = await _auth.createUserWithEmailAndPassword(email: email, password: password);
      FirebaseUser firebaseUser = result.user;
      return _userFromFirebaseUser(firebaseUser);
    }catch(e){
      print(e.toString());
    }

  }

  Future resetPass(String email)async{
    try{
      return await _auth.sendPasswordResetEmail(email: email);
    }catch(e){
      print(e.toString());
    }
  }
  Future Signout() async{
    try{
      return await _auth.signOut();
    }catch(e){
      print(e.toString());
    }
  }

}
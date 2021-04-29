import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_app/models/user.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
  CollectionReference users = FirebaseFirestore.instance.collection('users');

  Users _userCredential(User user){
    return user != null ? Users(uid: user.uid) : null;
  }

  Stream<Users> get user {
    return _auth.authStateChanges().map(_userCredential);
  }

  Future  signInAnonymous() async {
    try{
      UserCredential result = await _auth.signInAnonymously();
      users.add({
        'prenom': 'annonyme',
        'email': 'scotttresor@gmail.com',
        'password': 'tresor'
      });
      User user = result.user;
      return _userCredential(user);
    } catch(exception){
       print(exception.toString());
       return null;
    }
  }

  Future signinWithEmailAndPassword(String email, String password) async {
    try{
      UserCredential result  = await _auth.signInWithEmailAndPassword(
          email: email,
          password: password
      );
      User user = result.user;
      if(user != null){
        return _userCredential(user);
      }
      return null;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }

  Future registerUserByEmailAndPassword(String email, String prenom, String password) async {
    try{
      UserCredential result  = await _auth.createUserWithEmailAndPassword(
          email: email,
          password: password
      );
      User user = result.user;
      users.add({
        'prenom': prenom,
        'email': email,
        'password': password
      });
      return _userCredential(user);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }

  Future signOut() async {
    try{
      return await _auth.signOut();
    } catch(exception){
      return exception.toString();
    }
  }
}
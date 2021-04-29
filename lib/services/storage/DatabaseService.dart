import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {

  final String uid;
  DatabaseService({this.uid});

  final CollectionReference messages = FirebaseFirestore.instance.collection('messages');
  final CollectionReference users = FirebaseFirestore.instance.collection('users');

  Future updateUserData(String prenom, String email, String password, String name) async {
    return await users.doc(uid).set({
      'name': name,
      'prenom': prenom,
      'email': email,
      'password': password
    });
  }

  Stream<QuerySnapshot> get user {
    return users.snapshots();
  }

  getUserProfile(String email) async {
    return users.where("email", isEqualTo: email)
        .get()
        .catchError((e) {
      print(e.toString());
    });
  }

}
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class MessageService {
  final CollectionReference  _reference = FirebaseFirestore.instance.collection('messages');
  FirebaseAuth auth = FirebaseAuth.instance;


  Future<void> createMessage(String text, String time, String unread, String uid) async {
    return await _reference.add({
      'text': text,
      'unread': unread,
      'uidUser': auth.currentUser.uid,
      'created_at': time
    });
  }

  Future getMessages() async{
    List messages = [];
    await _reference.get().then((query){
      query.docs.forEach((element) {
        messages.add(element.data());
      });
    });
    return messages;
  }
}
import 'package:flutter_app/models/user.dart';

class Messages {
  final Users users;
  final String time;
  final String text;
  final bool unread;
  final String picture;
  final String voice;

  Messages({this.users, this.time, this.text, this.unread, this.picture, this.voice});
}

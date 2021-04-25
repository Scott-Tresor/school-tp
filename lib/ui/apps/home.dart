import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/services/auth/auth.dart';
import 'package:flutter_app/services/storage/DatabaseService.dart';
import 'package:flutter_app/ui/apps/profile.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  final AuthService authService = AuthService();
  final User users = FirebaseAuth.instance.currentUser;

  @override
  Widget build(BuildContext context) {
    return StreamProvider<QuerySnapshot>.value(
      value: DatabaseService().message,
      initialData: null,
      child: Scaffold(
          backgroundColor: Color.fromRGBO(244, 243, 243, 1),
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            elevation: 0,
          ),
          drawer: new Drawer(
              child: new ListView(
            children: <Widget>[
              new UserAccountsDrawerHeader(
                accountName: new Text(
                  "Tresor",
                  style: TextStyle(color: Colors.black),
                ),
                accountEmail: new Text("kprathap23@gmail.com",
                    style: TextStyle(color: Colors.black)),
                decoration: new BoxDecoration(
                  image: new DecorationImage(
                    image: new ExactAssetImage('assets/images/lake.jpeg'),
                    fit: BoxFit.cover,
                  ),
                ),
                currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://randomuser.me/api/portraits/men/46.jpg")),
              ),
              new ListTile(
                  leading: Icon(Icons.message),
                  title: new Text("Message"),
                  onTap: () {
                    Navigator.pop(context);
                  }),
              new ListTile(
                  leading: Icon(Icons.settings),
                  title: new Text("Settings"),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ProfilePage()));
                  }),
              new Divider(),
              new ListTile(
                  leading: Icon(Icons.info),
                  title: new Text("About"),
                  onTap: () {
                    Navigator.pop(context);
                  }),
              new ListTile(
                leading: Icon(Icons.power_settings_new),
                title: new Text("Logout"),
                onTap: () async {
                  await authService.signOut();
                },
              ),
            ],
          )),
          body: Scaffold()),
    );
  }
}

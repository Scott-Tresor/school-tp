import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/services/auth/auth.dart';
import 'package:flutter_app/ui/apps/pages/about.dart';
import 'package:flutter_app/ui/apps/pages/dashboard.dart';
import 'package:flutter_app/ui/apps/profile.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  final AuthService authService = AuthService();
  final User users = FirebaseAuth.instance.currentUser;

  @override
  Widget build(BuildContext context) {
    return StreamProvider<QuerySnapshot>.value(
      initialData: null,
      child: Scaffold(
          backgroundColor: Colors.deepPurpleAccent,
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            backgroundColor: Colors.deepPurpleAccent,
            elevation: 0,
            actions: [IconButton(icon: Icon(Icons.search), onPressed: () {})],
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
                    color: Colors.deepPurpleAccent),
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
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => AboutPage()));
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
          body: DashboardPage()),
    );
  }
}

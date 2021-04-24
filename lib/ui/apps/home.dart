import 'package:flutter/material.dart';
import 'package:flutter_app/services/auth/auth.dart';

class HomePage extends StatelessWidget {
  final AuthService authService = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('Correspondanse'),
        elevation: 0,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Drawer Header',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.account_circle_outlined),
              title: Text('Profile'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.attribution_sharp),
              title: Text('About'),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Quitter'),
              onTap: () async {
                await authService.signOut();
              },
            ),
          ],
        ),
      ),
      body: Container(),
    );
  }
}

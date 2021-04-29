import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            size: 20,
            color: Colors.black,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 16, top: 20, right: 16),
        child: ListView(
          children: [
            Text("Parametre", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),),
            SizedBox(height: 17,),
            Row(
              children: [
                Icon(Icons.person, color: Colors.green,),
                SizedBox(width: 8,),
                Text("Compte", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),)
              ],
            ),
            Divider(),

          ],
        ),
      ),
    );
  }
}

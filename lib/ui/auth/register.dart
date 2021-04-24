import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/services/auth/auth.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final AuthService authService = AuthService();
  final _formKey = GlobalKey<FormState>();
  String _email = "", _password = "", _prenom = "";

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
        height: MediaQuery.of(context).size.height,
        width: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Text(
                        "Enregistrement",
                        style: TextStyle(
                            fontSize: 35, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Crée votre compte pour etre consulter",
                        style: TextStyle(fontSize: 17, color: Colors.grey[700]),
                      ),
                    ],
                  ),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 40),
                      child: Form(
                        key: _formKey,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            TextField(
                              onChanged: (value) {
                                setState(() => _prenom = value);
                              },
                              autofocus: true,
                              cursorColor: Colors.blue,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 0, horizontal: 10),
                                enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.grey[400])),
                                border: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.grey[400])),
                                hintText: 'Votre prenom',
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            TextField(
                              onChanged: (value) {
                                setState(() => _email = value);
                              },
                              autofocus: true,
                              cursorColor: Colors.blue,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 0, horizontal: 10),
                                enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.grey[400])),
                                border: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.grey[400])),
                                hintText: 'Votre email',
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            TextField(
                              onChanged: (value) {
                                setState(() => _password = value);
                              },
                              obscureText: true,
                              autofocus: true,
                              cursorColor: Colors.blue,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 0, horizontal: 10),
                                enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.grey[600])),
                                border: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.grey[400])),
                                hintText: 'Votre mot de passe',
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            TextField(
                              onChanged: (value) {
                                setState(() => _password = value);
                              },
                              obscureText: true,
                              autofocus: true,
                              cursorColor: Colors.blue,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 0, horizontal: 10),
                                enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.grey[600])),
                                border: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.grey[400])),
                                hintText: 'Confirmation mot de passe',
                              ),
                            ),
                          ],
                        ),
                      )),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 50),
                    child: Container(
                      child: MaterialButton(
                        minWidth: double.infinity,
                        height: 52,
                        onPressed: () async {
                          print(_email);
                          print(_password);
                        },
                        color: Color(0xff0095FF),
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        child: Text(
                          "S'inscrire",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

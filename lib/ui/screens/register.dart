import 'package:flutter/material.dart';

class Register extends StatelessWidget {
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
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios,
            size: 20,
            color: Colors.black,),

        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 40),
          height: MediaQuery.of(context).size.height -50,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text('Enregistrement', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                  SizedBox(height: 25,),
                  Text(
                    "Creation du compte",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey[700]
                    ),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  inputFile(label: "Votre nom"),
                  inputFile(label: "Votre prenom"),
                  inputFile(label: "Votre email"),
                  inputFile(label: "Votre mot de passe", obscureText: true),
                  inputFile(label: "Confirmation mot de passe", obscureText: true)
                ],
              ),
              Container(
                padding: EdgeInsets.only(top: 30, left: 3),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border(
                      bottom: BorderSide(color: Colors.black),
                      top: BorderSide(color: Colors.black),
                      left: BorderSide(color: Colors.black),
                      right: BorderSide(color: Colors.black),
                    )
                ),
                child: MaterialButton(
                  minWidth: double.infinity,
                  height: 60,
                  onPressed: (){},
                  color: Color(0xff0095FF),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)
                  ),
                  child: Text(
                    "S'inscrire",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: Colors.white
                    ),
                  ),
                )
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget inputFile({label, obscureText = false}){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        label,
        style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w400,
            color: Colors.black87
        ),
      ),
      SizedBox(height: 5,),
      TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Colors.grey[400]
                )
            ),
            border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey[400])
            )
        ),
      ),
      SizedBox(height: 10,)
    ],
  );
}
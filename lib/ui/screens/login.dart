import 'package:flutter/material.dart';

class Login extends StatelessWidget {
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
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Text(
                        "Connexion",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      SizedBox(height: 20,),
                      Text(
                        "se connecter avec votre compte",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey[700]
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: Column(
                      children: [
                        inputFile(label: "Email"),
                        inputFile(label: "Mot de passe", obscureText: true)
                      ],
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 40),
                      child: Container(
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
                            "Connexion",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                                color: Colors.white
                            ),
                          ),
                        ),
                      ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Vous n'avez pas de compte ?"),
                      Text("Inscription", style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18
                      ),)
                    ],
                  )
                ],
              ),
            )
          ],
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

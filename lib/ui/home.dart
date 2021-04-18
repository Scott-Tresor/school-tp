import 'package:flutter/material.dart';
import 'package:flutter_app/ui/screens/login.dart';
import 'package:flutter_app/ui/screens/register.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Column(
                children: [
                  Text(
                    "Bienvenue",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30
                    ),
                  ),
                  SizedBox(height: 20,),
                  Text(
                    "Bienvenue sur l'application de consulation par correspondance",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 15,
                    ),
                  )
                ],
              ),
              Container(
                height: MediaQuery.of(context).size.height / 3,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/doctor.png')
                    )
                ),
              ),

              Column(
                children: [
                  MaterialButton(
                    minWidth: double.infinity,
                    height: 60,
                    onPressed: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Login()
                          )
                      );
                    },
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Colors.black
                      ),
                      borderRadius: BorderRadius.circular(50)
                    ),
                    child: Text(
                      "Connexion",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  MaterialButton(
                    minWidth: double.infinity,
                    height: 60,
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Register())
                      );
                    },
                    color: Color(0xff0095FF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)
                    ),
                    child: Text(
                      "Enregistrement",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 18
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

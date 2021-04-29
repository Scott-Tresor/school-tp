import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class AboutPage extends StatefulWidget {
  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
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
        child: Stack(
          fit: StackFit.expand,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10.0),
                        ),
                        Text("A propos", style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
                        GestureDetector(
                          onTap: () => {},
                          child: Container(
                            padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                            height: 80,
                            width: double.maxFinite,
                            child: Card(
                              elevation: 5,
                              child: Center(
                                child: Text(
                                  "Terms and condition",
                                  style: TextStyle(fontSize: 18),
                                ),
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () => {},
                          child: Container(
                            padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                            height: 80,
                            width: double.maxFinite,
                            child: Card(
                              elevation: 5,
                              child: Center(
                                child: Text(
                                  "Privacy policy",
                                  style: TextStyle(fontSize: 18),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.23,
                          padding:
                          const EdgeInsets.symmetric(horizontal: 30.0),
                          child: Text(
                            ". \n\n . ",
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          child: Text(
                            "scotttresor@gmail.com",
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      )
    );
  }
}

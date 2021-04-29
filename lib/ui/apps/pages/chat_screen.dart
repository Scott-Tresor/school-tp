import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/services/auth/auth.dart';
import 'package:flutter_app/services/storage/MessageService.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController _message = TextEditingController();
  final AuthService _authService = AuthService();
  final MessageService _service = MessageService();

  List messages = [];

  @override
  void initState() {
    super.initState();
  }

  fetchMessages() async {
    dynamic _messages = await _service.getMessages();
    if(_message != null){
      setState(() {
        messages = _messages;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF6F6F6),
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        brightness: Brightness.dark,
        title: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            children: [
              TextSpan(
                text: "scott Tresor", style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              )),
            ]
          ),
        ),
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            color: Colors.white,
            onPressed: () => {
              Navigator.pop(context)
            }
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.all(20),
              itemCount: messages.length,
              itemBuilder: (BuildContext contex, int index){
                return Column(
                  children: [
                    Column(
                      children: [
                        Container(
                          alignment: Alignment.topLeft,
                          child: Container(
                            constraints: BoxConstraints(
                                maxWidth: MediaQuery.of(context).size.width * 0.80
                            ),
                            padding: EdgeInsets.all(10),
                            margin: EdgeInsets.symmetric(vertical: 10),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 1,
                                      blurRadius: 3
                                  )
                                ]
                            ),
                            child: Text('Information de l utilisateur Information de l utilisateur Information de l utilisateur',
                              style: TextStyle(color: Colors.black87),),
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  //shape: BoxShape.circle,
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 2,
                                        blurRadius: 5
                                    )
                                  ]
                              ),
                              child: CircleAvatar(
                                radius: 15,
                                backgroundImage: AssetImage('images/doctor.png'),
                              ),
                            ),
                            SizedBox(width: 10,),
                            Text("12:00pm", style: TextStyle(
                                fontSize: 12,
                                color: Colors.black45
                            ),)
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          alignment: Alignment.topRight,
                          child: Container(
                            constraints: BoxConstraints(
                                maxWidth: MediaQuery.of(context).size.width * 0.80
                            ),
                            padding: EdgeInsets.all(10),
                            margin: EdgeInsets.symmetric(vertical: 10),
                            decoration: BoxDecoration(
                                color: Theme.of(context).secondaryHeaderColor,
                                borderRadius: BorderRadius.circular(15),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 1,
                                      blurRadius: 3
                                  )
                                ]
                            ),
                            child: Text('Information de l utilisateur Information de l utilisateur Information de l utilisateur',
                              style: TextStyle(color: Colors.deepPurpleAccent),),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text("12:00pm", style: TextStyle(
                                fontSize: 12,
                                color: Colors.black45
                            ),),
                            SizedBox(width: 10,),
                            Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  //shape: BoxShape.circle,
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 2,
                                        blurRadius: 5
                                    )
                                  ]
                              ),
                              child: CircleAvatar(
                                radius: 15,
                                backgroundImage: AssetImage('images/doctor.png'),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                );
              },
            ),
          ),
          _sendEmail()
        ],
      )
    );
  }

  _sendEmail() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8),
      height: 50,
      color: Colors.white,
      child: Row(
        children: [
          IconButton(
              icon: Icon(Icons.photo_camera_outlined),
              iconSize: 22,
              color: Theme.of(context).primaryColor,
              onPressed: (){}
              ),
          IconButton(
              icon: Icon(Icons.keyboard_voice),
              iconSize: 22,
              color: Theme.of(context).primaryColor,
              onPressed: (){}
          ),
          Expanded(
            child: TextFormField(
              controller: _message,
              validator: (value) {
                if (value == null || value.trim().isEmpty) {}
                return null;
              },
              decoration: InputDecoration.collapsed(
                hintText: 'Envoyer un message'
              ),
              textCapitalization: TextCapitalization.sentences,
            ),
          ),
          IconButton(
              icon: Icon(Icons.send),
              iconSize: 22,
              color: Theme.of(context).primaryColor,
              onPressed: (){}
          )
        ],
      ),
    );
  }
}

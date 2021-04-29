import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/ui/apps/pages/chat_screen.dart';

class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index){
        return GestureDetector(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => ChatScreen())
          ),
          child: Container(
            padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 15
            ),
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                      border: Border.all(
                          width: 2,
                          color: Theme.of(context).primaryColor
                      ),
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
                    radius: 25,
                    backgroundImage: AssetImage('images/doctor.png'),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.68,
                  padding: EdgeInsets.only(left: 15),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text('Information', style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold
                              ),),
                            ],
                          ),
                          Text('12:14 am', style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w300,
                              color: Colors.black54
                          ),)
                        ],
                      ),
                      SizedBox(height: 8,),
                      Container(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'communication des informations systeme',
                          style: TextStyle(
                              fontSize: 13,
                              color: Colors.black54
                          ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      }),
    );
  }
}

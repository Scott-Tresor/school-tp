import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/models/user.dart';
import 'package:flutter_app/services/auth/auth.dart';
import 'package:flutter_app/ui/wrapper.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.blue,
    statusBarColor: Colors.deepPurpleAccent,
    statusBarIconBrightness: Brightness.light
  ));
  runApp(Main());
}

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<Users>.value(
      value: AuthService().user,
      initialData: null,
      child: MaterialApp(
        color: Colors.white,
        debugShowCheckedModeBanner: false,
        home: WrapperPage(),
      ),
    );
  }
}

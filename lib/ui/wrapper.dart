import 'package:flutter/material.dart';
import 'package:flutter_app/models/user.dart';
import 'package:flutter_app/ui/apps/home.dart';
import 'package:flutter_app/ui/components/splash.dart';
import 'package:provider/provider.dart';

class WrapperPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<Users>(context);
    return user == null ? SplashPage() : HomePage();
  }
}

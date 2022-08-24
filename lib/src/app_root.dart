import 'dart:html';

import 'package:flutter/material.dart';
import 'package:lavie_app/layout/login.dart';
import 'package:lavie_app/layout/login_screen.dart';
import 'package:lavie_app/style/colors_screen.dart';
class AppRoot extends StatelessWidget {
  const AppRoot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
    );
  }
}

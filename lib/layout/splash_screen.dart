
import 'package:flutter/material.dart';

import 'login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  @override
  void initState() {

    super.initState();

    Future.delayed(
        const Duration(seconds: 2),
            () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => LoginScreen()),
        ));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(child: Center(child: Image.asset('assets/images/logo.png')),
        ),
      ),
    ) ;

  }
}
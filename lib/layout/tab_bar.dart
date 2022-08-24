import 'package:flutter/material.dart';
class TapBar extends StatelessWidget {
  const TapBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 80),
                  child: Image.asset('assets/images/logo.png'),
                ),
                SizedBox(
                  height: 30,
                ),

              ],
            ),
          ),
          Positioned(
              right: 0,
              child: Image.asset('assets/images/rooot.png')),
          Positioned(
              bottom: 0,
              child: Image.asset('assets/images/flower1.png')),
        ],
      ),
    );

  }

}

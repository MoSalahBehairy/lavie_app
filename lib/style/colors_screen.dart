import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/semantics.dart';
import 'package:lavie_app/components/space.dart';
class ColorsScreen extends StatelessWidget {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  ColorsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            TabBar(
              isScrollable: false,
              indicatorColor: Colors.green,
              indicatorSize: TabBarIndicatorSize.label,
              labelColor: Colors.green,
                unselectedLabelColor: Colors.grey,
                tabs: [
              Tab(text: "Sign up"),
              Tab(text: "Login"),
            ]),
            Expanded(
              child: TabBarView(children: [
                loginScreen(context: context),
                signUpScreen(context: context),
              ]),
            ),
          ],
        ),
      ),



    );
  }
}
Widget loginScreen({
  required BuildContext context
}){

  return Column(
    children: [
      Container(
        width: 337,
        height: 46.24,
        child: TextFormField(
            cursorColor: Theme.of(context).cursorColor,
            maxLength: 20,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Email',
              icon: Icon(Icons.email),
              labelStyle: TextStyle(
                color: Colors.grey,
              ),
            )),
      ),
      Container(
        width: 337,
        height: 46.24,
        child: TextFormField(
            cursorColor: Theme.of(context).cursorColor,
            maxLength: 20,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Password',
              icon: Icon(Icons.lock),
              labelStyle: TextStyle(
                color: Colors.grey,
              ),
            )),
      ),
    ],
  ) ;
}


Widget signUpScreen({
  required BuildContext context
}){

  return Column(
    children: [
      Container(
        width: 337,
        height: 46.24,
        child: TextFormField(
            cursorColor: Theme.of(context).cursorColor,
            maxLength: 20,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Email',
              icon: Icon(Icons.email),
              labelStyle: TextStyle(
                color: Colors.grey,
              ),
            )),
      ),
      Container(
        width: 337,
        height: 46.24,
        child: TextFormField(
            cursorColor: Theme.of(context).cursorColor,
            maxLength: 20,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Password',
              icon: Icon(Icons.lock),
              labelStyle: TextStyle(
                color: Colors.grey,
              ),
            )),
      ),
    ],
  ) ;
}
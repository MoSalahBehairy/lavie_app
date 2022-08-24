import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lavie_app/layout/signup_screen.dart';
import 'package:lavie_app/style/colors_screen.dart';
class Login extends StatelessWidget {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
   Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Stack(
       children: [
         Column(
           children: const [
            Positioned(
              child: Image(
                image: AssetImage('assets/images/rooot.png'),
                alignment: Alignment.topRight,

              ),
            ),
             Align(
               alignment: AlignmentDirectional.bottomStart,
               child: Image(
                 image: AssetImage('assets/images/flower1.png'),
               ),
             ),
           ],
         ),
         Column(
           children: [
             SizedBox(
               height: 50, //176
             ),
             Padding(
               padding:EdgeInsets.symmetric(horizontal:163), //163
               child: Image.asset('assets/images/logo.png'),
             ),
             SizedBox(
               height: 74,
             ),
             Expanded(
               child: DefaultTabController(
                 initialIndex: 1,
                 length: 2,
                 child: Column(
                   children: <Widget>[
                     TabBar(
                       physics: const BouncingScrollPhysics(),
                       labelColor: Theme.of(context).primaryColor,
                       unselectedLabelColor: Colors.grey,
                       indicatorColor: Theme.of(context).primaryColor,
                       indicatorSize: TabBarIndicatorSize.label,
                       labelStyle:Theme.of(context).textTheme.bodyText2,
                       tabs: const [
                         Tab(
                           child: Text(
                             'Sign Up',
                           ),
                         ),
                         Tab(
                           child: Text(
                             'Login',
                           ),
                         ),
                       ],
                     ),
                     Expanded(
                       child: TabBarView(
                         physics: const BouncingScrollPhysics(),

                         children: [
                           loginScreen(context: context),
                           signUpScreen(context: context),
                           // Padding(
                           //   padding: const EdgeInsets.all(8.0),
                           //   child: Container(
                           //     width: 337,
                           //     height: 46.24,
                           //     child: TextFormField(
                           //         cursorColor: Theme.of(context).cursorColor,
                           //         maxLength: 20,
                           //         decoration: InputDecoration(
                           //           border: OutlineInputBorder(),
                           //           labelText: 'Email',
                           //           icon: Icon(Icons.email),
                           //           labelStyle: TextStyle(
                           //             color: Colors.grey,
                           //           ),
                           //         )),
                           //   ),
                           // ),
                           // SizedBox(
                           //   height: 20,
                           // ),
                           // Padding(
                           //   padding: const EdgeInsets.all(8.0),
                           //   child: Container(
                           //     width: 337,
                           //     height: 46.24,
                           //     child: TextFormField(
                           //         cursorColor: Theme.of(context).cursorColor,
                           //         maxLength: 20,
                           //         decoration: InputDecoration(
                           //           border: OutlineInputBorder(),
                           //           labelText: 'Password',
                           //           icon: Icon(Icons.lock),
                           //           labelStyle: TextStyle(
                           //             color: Colors.grey,
                           //           ),
                           //         )),
                           //   ),
                           // ),
                         // Container(
                         //   height: 200,
                         //   width: 300,
                         //   color: Colors.red,
                         // ),
                         // Container(
                         //     height: 200,
                         //     width: 300,
                         //     color: Colors.green,
                         //   ),


                         ],
                       ),
                     ),
                   ],
                 ),
               ),
             ),
           ],
         ),
       ],
     )



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

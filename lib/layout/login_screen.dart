
import 'package:flutter/material.dart';
import 'package:lavie_app/components/space.dart';
import 'package:lavie_app/components/utils/size_config.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/images/logo.png'),
            VerticalSpace(value: 5),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
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
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
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
            ),
            Padding(
              padding:  EdgeInsets.all(5.0),
            ),
            Padding(
              padding:  EdgeInsets.all(SizeConfig.defaultSize!*2),
              child: Container(
                color: Colors.green,
                child: Container(
                  width: 337,
                  height: 46.24,
                  child: Padding(
                    padding: EdgeInsets.only(top: 577, left: 45),
                    child: TextButton(
                      onPressed: () {},
                      child: const Center(
                        child: Center(
                          child: Text(
                            'Login',
                            style: TextStyle(fontSize: 16,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            VerticalSpace(value: 2),
            Center(
              child: Text(
                'Already have an account?',
              ),
            ),
            Row(
              mainAxisAlignment:  MainAxisAlignment.center,
              children: [

                CircleAvatar(
                  child: Image.network(
                      'https://upload.wikimedia.org/wikipedia/commons/thumb/f/fb/Facebook_icon_2013.svg/1024px-Facebook_icon_2013.svg.png'),
                ),
                HorizontalSpace(value: 5),
                CircleAvatar(
                  child: Image.network(
                      'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e7/Instagram_logo_2016.svg/768px-Instagram_logo_2016.svg.png'),
                ),
                HorizontalSpace(value: 5),
                CircleAvatar(
                  child: Image.network(
                      'https://about.twitter.com/content/dam/about-twitter/en/brand-toolkit/brand-download-img-1.jpg.twimg.1920.jpg'),
                ),
                VerticalSpace(value: 5),
              ],
            ),

            VerticalSpace(value: 10),
            Container(
              color: Color(0xFF6200EE),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'Login',
                  style: TextStyle(fontSize: 14, color: Colors.white),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}

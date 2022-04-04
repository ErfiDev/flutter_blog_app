import 'package:blog_app/src/login_page.dart';
import 'package:flutter/material.dart';
import './forgotpass_page.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(ctx) {
    return Scaffold(
      backgroundColor: Theme.of(ctx).backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 35),
            Text(
              'Welcome!',
              style: TextStyle(fontSize: 25),
            ),
            Image(
              image: AssetImage('images/welcome.png'),
            ),
            OutlinedButton(
              onPressed: () {
                Navigator.pushNamed(ctx, "/login");
              },
              child: Text('Login', style: TextStyle(fontSize: 20)),
              style: OutlinedButton.styleFrom(
                primary: Colors.white,
                minimumSize: Size(150, 50),
                side: BorderSide(
                  color: Colors.white,
                  width: 2,
                ),
              ),
            ),
            SizedBox(height: 5),
            ElevatedButton(
              child: Text('Register', style: TextStyle(fontSize: 20)),
              onPressed: () {},
              style: TextButton.styleFrom(
                primary: Colors.cyan,
                minimumSize: Size(150, 50),
                backgroundColor: Colors.white,
              ),
            ),
            SizedBox(height: 5),
            TextButton(
              child: Text(
                'Forgot Password?',
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                Navigator.pushNamed(ctx, "/forgotPassword");
              },
              style: TextButton.styleFrom(
                backgroundColor: Colors.transparent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

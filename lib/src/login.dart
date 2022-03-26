import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(ctx) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Welcome to the app!',
            style: TextStyle(fontSize: 25),
          ),
          Image(
            image: AssetImage('images/welcome.png'),
          ),
          OutlinedButton(
            onPressed: () {},
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
          TextButton(
            child: Text('Register', style: TextStyle(fontSize: 20)),
            onPressed: () {},
            style: TextButton.styleFrom(
              primary: Colors.cyan,
              minimumSize: Size(150, 50),
              backgroundColor: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

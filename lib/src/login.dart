import 'package:blog_app/src/home.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<LoginScreen> {
  @override
  Widget build(ctx) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      body: TextButton(
          onPressed: () {
            Navigator.of(ctx).push(
              MaterialPageRoute(builder: (ctx) => HomePage()),
            );
          },
          child: Text('back')),
    );
  }
}

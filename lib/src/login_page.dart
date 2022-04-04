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
      appBar: AppBar(
        title: Text('Login'),
        backgroundColor: Theme.of(ctx).backgroundColor,
      ),
      backgroundColor: Colors.orangeAccent,
      body: TextButton(
        onPressed: () {
          Navigator.of(ctx).pop();
        },
        child: Text('back'),
      ),
    );
  }
}

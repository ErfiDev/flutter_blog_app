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
        centerTitle: true,
        title: Text(
          'Login as a user',
          style: TextStyle(color: Colors.cyan),
        ),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.cyan),
      ),
    );
  }
}

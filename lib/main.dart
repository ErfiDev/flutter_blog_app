import 'package:blog_app/src/forgotpass_page.dart';
import 'package:blog_app/src/home_page.dart';
import 'package:blog_app/src/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  App({Key? key}) : super(key: key);

  @override
  Widget build(ctx) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Poppins',
        backgroundColor: Colors.cyan,
      ),
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        "/login": (ctx) => LoginScreen(),
        "/forgotPassword": (ctx) => ForgotPassPage(),
      },
      home: HomePage(),
    );
  }
}

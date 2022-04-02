import 'package:flutter/material.dart';

class ForgotPassPage extends StatelessWidget {
  ForgotPassPage({Key? key}) : super(key: key);

  @override
  Widget build(ctx) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Forgot Password Page'),
            TextButton(
              onPressed: () {
                Navigator.of(ctx).pop();
              },
              child: Text(
                'Back',
              ),
            )
          ],
        ),
      ),
    );
  }
}

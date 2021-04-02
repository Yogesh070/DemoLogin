import 'package:flutter/material.dart';
import 'package:khajaghar/screens/change_password.dart';
import 'screens/login.dart';
import 'screens/register.dart';
import 'constants.dart';
import 'screens/forgot_password.dart';

void main() => runApp(KhajaGhar());

class KhajaGhar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/register': (context) => Register(),
        '/forgotpassword': (context) => ForgotPassword(),
        '/changepassword': (context) => ChangePassword()
      },
      home: Scaffold(
        backgroundColor: Color(kBackgroundColor),
        body: LoginPage(),
      ),
      // initialRoute: '/changepassword',
    );
  }
}

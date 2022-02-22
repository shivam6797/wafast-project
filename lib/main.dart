import 'package:flutter/material.dart';
import 'package:flutter_wafast/screens/LoginPage.dart';
import 'package:flutter_wafast/screens/Orders.dart';
import 'package:flutter_wafast/screens/SignInPage.dart';
import 'package:flutter_wafast/screens/SignUpPage.dart';
import 'package:flutter_wafast/screens/Verify.dart';
import 'package:flutter_wafast/screens/booking.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (_) => const LoginPage(),
        '/signinpage': (context) => const SignInPage(),
        '/Signuppage': (context) => const SignUpPage(),
        '/verify': (context) => const Verify(),
        "/orders": (context) => const Orders(),
        "booking": (context) => const BookingPage(),
      },
      debugShowCheckedModeBanner: false,
      // home: LoginPage()
    );
  }
}

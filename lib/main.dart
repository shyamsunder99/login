import 'package:flutter/material.dart';
import 'package:login/login.dart';
import 'package:login/otp.dart';
import 'package:login/signup.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'login',
      routes: {
        'login': (context) => login(),
        'signup': (context) => signup(),
        'otp': (context) => otp(),
      },
    ),
  );
}

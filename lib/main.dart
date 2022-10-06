import 'package:flutter/material.dart';
import 'package:nuapp/ui/views/auth/sign_in_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nuapp',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: const SignInScreen(),
    );
  }
}

enum Swipe { left, right, none }
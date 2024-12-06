import 'package:flutter/material.dart';
import 'package:login_form/screens/signup_view.dart';

class RegisterApp extends StatelessWidget {
  const RegisterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Register App',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      home: Scaffold(
        body: SafeArea(child: SignupView()),
      ),
    );
  }
}

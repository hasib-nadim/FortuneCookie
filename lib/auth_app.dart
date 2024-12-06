import 'package:flutter/material.dart';
import 'package:login_form/screens/login_view.dart';

class AuthApp extends StatelessWidget {
  const AuthApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Auth App',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      home: Scaffold(
        body: SafeArea(child: LoginView()),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:login_form/screens/home_view.dart';

class HomeApp extends StatelessWidget {
  const HomeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Home App',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      home: Scaffold(
        backgroundColor: Colors.deepOrangeAccent,
        body: SafeArea(child: HomeView()),
      ),
    );
  }
}

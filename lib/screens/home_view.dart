import 'dart:math';

import 'package:flutter/material.dart';
var fortuneText = List<String>.from([
  "The fortune you seek is in another cookie.",
  "A closed mouth gathers no feet.",
  "A conclusion is simply the place where you got tired of thinking.",
  "A cynic is only a frustrated optimist "]);
class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  Random random = Random();
  int index = 0;
  void changeIndex() {
    setState(() {
      index = random.nextInt(fortuneText.length);
    });
  }
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'FORTUNE COOKIE',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 25,letterSpacing: 2, color: Colors.white),
          ),
          const Spacer(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(8.0),
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  border: Border.all(color: Colors.white, width: 2),

                ),
                child:  Text(fortuneText[index],textAlign: TextAlign.center, style: const TextStyle(fontSize: 22, color: Colors.white),),
              ),
              IconButton(
                onPressed: changeIndex,
                icon: Image.asset('assets/images/cookie.png', height: 200, width: 200, fit: BoxFit.cover),
              ),
            ],
          ),
          const Spacer()
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spacegame1/login%20page.dart';

import 'package:spacegame1/signup%20page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/earth1.jpg",
            fit: BoxFit.cover,
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "WINTER HACKS",
                  style: TextStyle(
                    color: Color.fromARGB(255, 241, 239, 239),
                    fontSize: 30,
                  ),
                ),
                const SizedBox(height: 16),
                const Text(
                  "DIVE INTO AN IMMERSIVE TRAVELLING EXPERIENCE",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Get.to(LoginPage());
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(97, 168, 164, 164),
                  ),
                  child: Text(
                    "PLAY NOW",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    Get.to(SignupPage());
                  },
                  color: Colors.white,
                  icon: Icon(Icons.person_add_outlined),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

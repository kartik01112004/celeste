import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spacegame1/login%20page.dart';

import 'package:spacegame1/signup%20page.dart';

import 'page2.dart';

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
                    color: Color.fromARGB(255, 66, 63, 63),
                    fontSize: 30,
                  ),
                ),
                const SizedBox(height: 16),
                const Text(
                  "DIVE INTO AN IMMERSIVE TRAVELLING EXPERIENCE",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Get.to(LoginPage());

                    Get.to(const Player());
                  },
                  style: ElevatedButton.styleFrom(
                    primary: const Color.fromARGB(97, 168, 164, 164),
                  ),
                  child: const Text(
                    "PLAY NOW",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    Get.to(SignupPage());

                    Get.to(const SignupPage());
                  },
                  color: Colors.black,
                  icon: const Icon(Icons.person_add_outlined),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

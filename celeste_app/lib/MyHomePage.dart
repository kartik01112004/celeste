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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('celeste_app/assets/earth1.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: const Text(
                "WINTER HACKS",
                style: TextStyle(
                  color: Color.fromARGB(255, 241, 239, 239),
                  fontSize: 30,
                ),
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
                Get.to(LOGINPAGE());
              },
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(97, 168, 164, 164),
              ),
              child: Text("PLAY NOW"),
            ),
            IconButton(onPressed:(){Get.to(SIGNUPPAGE());},color: Colors.white, icon:Icon(Icons.person_add_outlined) )
          ],
        ),
      ),
    );
  }
}
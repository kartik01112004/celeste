import 'package:flutter/material.dart';

class player extends StatefulWidget {
  const player({super.key});

  @override
  State<player> createState() => _playerState();
}

class _playerState extends State<player> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Image.asset(
          "assets/IMG-20231230-WA0055.jpg",
          fit: BoxFit.contain,
        ),
        Container(
            height: 500,
            width: 500,
            child: const Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "SINGLE PLAYER",
                    style: TextStyle(
                        fontSize: 25,
                        color: Color.fromARGB(255, 244, 247, 245),
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    "MULTIPLAYER",
                    style: TextStyle(
                        fontSize: 23,
                        color: Color.fromARGB(255, 244, 247, 245),
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    "MAPS",
                    style: TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(255, 244, 247, 245),
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.left,
                  )
                ])),
        const SizedBox(height: 30),
        const Text(
          "SETTINGS",
          style: TextStyle(
              fontSize: 15, color: Color.fromARGB(255, 244, 247, 245)),
          textAlign: TextAlign.left,
        ),
        const Text(
          "SHOP",
          style: TextStyle(
              fontSize: 15, color: Color.fromARGB(255, 244, 247, 245)),
          textAlign: TextAlign.left,
        ),
        const Text(
          "QUIZ",
          style: TextStyle(
              fontSize: 15, color: Color.fromARGB(255, 244, 247, 245)),
          textAlign: TextAlign.left,
        ),
      ]),
    );
  }
}

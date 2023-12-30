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
      body:Column(children:[ Image.asset('celeste_app/assets/IMG-20231230-WA0055.jpg',fit: BoxFit.cover,),
      Container(
        child:Column(mainAxisAlignment:MainAxisAlignment.spaceEvenly,
        children: 
        [ Text("SINGLE PLAYER",style: TextStyle(fontSize: 20,color: const Color.fromARGB(255, 244, 247, 245),fontWeight: FontWeight.bold),),
        Text("MULTIPLAYER",style: TextStyle(fontSize: 18,color: const Color.fromARGB(255, 244, 247, 245),fontWeight: FontWeight.bold),),
        Text("MAPS",style: TextStyle(fontSize: 16,color: const Color.fromARGB(255, 244, 247, 245),fontWeight: FontWeight.bold),)])
      ),
      SizedBox( height:30),
      
       Text("SETTINGS",style: TextStyle(fontSize: 12,color: const Color.fromARGB(255, 244, 247, 245)),),
       Text("SHOP",style: TextStyle(fontSize: 12,color: const Color.fromARGB(255, 244, 247, 245)),),
       Text("QUIZ",style: TextStyle(fontSize: 12,color: const Color.fromARGB(255, 244, 247, 245)),),
      ])
    );
  }
}
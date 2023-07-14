import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:mini_game/game_menu.dart';



void main(){
  runApp(mini_game(),);
}


class mini_game extends StatefulWidget {
  @override
  _MinigameState createState() => _MinigameState();
}
class _MinigameState extends State<mini_game>{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cờ',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightGreen)
      ),
      home: game_menu(),
    );
  }
}
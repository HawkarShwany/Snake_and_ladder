import 'package:flutter/material.dart';
import 'Player.dart';

class PlayerIcon extends StatefulWidget {
  @override
  _PlayerIconState createState() => _PlayerIconState();
}

class _PlayerIconState extends State<PlayerIcon> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment(Player.celPosition.getX(), Player.celPosition.getY()),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.blue, borderRadius: BorderRadius.circular(20)),
        width: 30,
        height: 30,
      ),
    );
  }
}
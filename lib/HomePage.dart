import 'package:flutter/material.dart';
import 'package:snake_ladder/PlayerIcon.dart';
import 'Player.dart';
import 'Board.dart';
import 'Cell.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Player player = Player();
  Board board = Board();
  int dice = 0;
  Cell cellPosition;

  void update() {
    setState(() {
      dice = player.roll();
      player.setposition(dice);
      int position = player.getposition();
      player.updateposition(board.checkPosition(position));
      player.setCell(board.getCell(player.getposition()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Snake And Ladder ')),
      ),
      body: Container(
        // decoration: BoxDecoration(
        //   image: DecorationImage(
        //       image: AssetImage('images/board.jpg'), fit: BoxFit.fitWidth),
        // ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Stack(
              overflow: Overflow.clip,
              children: <Widget>[
                Image(
                  image: AssetImage('images/board.jpg'),
                  width: double.infinity,
                ),
                Container(
                  width: 500,
                  height: 263,
                  child: PlayerIcon(),
                ),
              ],
            ),
            Image(
              image: AssetImage('images/dice$dice.png'),
              width: 100,
              height: 100,
            ),
            
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        child: Text(
                'Roll',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
        onPressed: () {
          update();
        },
      ),
    );
  }
}

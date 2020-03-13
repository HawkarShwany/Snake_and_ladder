import 'dart:math';
import "Cell.dart";

class Player {
  static Cell celPosition = Cell(-0.95, 1.3);
  int _position = 0;

  Cell getCell() {
    return celPosition;
  }

  void setCell(Cell cell) {
    celPosition = cell;
  }

  int getposition() {
    return _position;
  }

  void setposition(int num) {
    this._position = this._position + num;
  }

  void updateposition(int num) {
    this._position = num;
  }

  int roll() {
    Random rand = new Random();
    int num = rand.nextInt(6) + 1;
    if ((getposition() + num) > 30) {
      return 0;
    }
    return num;
  }
}

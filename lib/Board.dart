import 'Cell.dart';

class Board {
  final List<Cell> cells = [
    Cell(-0.95, 1.3),
    Cell(-0.95, 0.95),
    Cell(-0.63, 0.95),
    Cell(-0.23, 0.95),
    Cell(0.15, 0.95),
    Cell(0.5, 0.95),
    Cell(0.9, 0.95),
    Cell(0.9, 0.5),
    Cell(0.5, 0.5),
    Cell(0.1, 0.5),
    Cell(-0.25, 0.5),
    Cell(-0.6, 0.5),
    Cell(-0.95, 0.5),
    Cell(-0.95, 0),
    Cell(-0.6, 0),
    Cell(-0.25, 0),
    Cell(0.1, 0),
    Cell(0.5, 0),
    Cell(0.9, 0),
    Cell(0.9, -0.5),
    Cell(0.5, -0.5),
    Cell(0.1, -0.5),
    Cell(-0.25, -0.5),
    Cell(-0.6, -0.5),
    Cell(-0.95, -0.5),
    Cell(-0.95, -0.92),
    Cell(-0.6, -0.92),
    Cell(-0.25, -0.92),
    Cell(0.1, -0.92),
    Cell(0.5, -0.92),
    Cell(0.9, -0.92),
  ];

  int checkPosition(int position) {
    switch (position) {
      case 3:
        return 22;
      case 5:
        return 8;
      case 11:
        return 26;
      case 17:
        return 4;
      case 19:
        return 7;
      case 20:
        return 29;
      case 21:
        return 9;
      case 27:
        return 1;
      case 30:
        return 30;
      default:
        return position;
    }
  }

  Cell getCell(int position){
    return cells[position];
  }
}

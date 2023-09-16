import 'dart:math';

class SeatView {
  final List<SeatColumn> section;

  SeatView({
    required this.section,
  });
}

class SeatColumn {
  List<SeatRow> rows;

  SeatColumn({
    required this.rows,
  });
}

class SeatRow {
  List<Seat> seats;

  SeatRow({
    required this.seats,
  });
}

class Seat {
  String number;
  SeatStatus status;

  Seat({required this.status}) : number = getRandomSeatNumber();
}

String getRandomSeatNumber() {
  List<String> chars = [
    'A',
    'B',
    'C',
    'E',
    'F',
    'G',
    'H',
    'I',
    'J',
    'K',
    'L',
    'M',
    'N',
    'P',
    'Q',
    'T',
  ];
  Random random = Random();
  return "${random.nextInt(9)}${chars[random.nextInt(chars.length)]}";
}

// ignore: constant_identifier_names
enum SeatStatus { Available, Reserved, Selected }
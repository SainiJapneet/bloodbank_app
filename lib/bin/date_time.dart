void main() {
  var now = DateTime.now();
  var jan = DateTime(1998, 9, 27);
  //UTC
  DateTime utcJan = DateTime.utc(2002, 02, 08);
  calAge(2002, 2, 8);
  // print(jan);
  //print(utcJan);
}

void calAge(int year, int month, int day) {
  DateTime startDate = DateTime(year, month, day);
  DateTime now = DateTime.now();
  var difference = now.difference(startDate);
  print(difference.inDays / 365);
}

import 'dart:math';

import 'package:intl/intl.dart';

bool isSameDay(DateTime date1, DateTime date2) {
  return date1.year == date2.year &&
      date1.month == date2.month &&
      date1.day == date2.day;
}

String formatDate(DateTime dateTime) {
  return DateFormat('dd-MM-yyyy').format(dateTime);
}

String formatToIndonesianDate(DateTime dateTime) {
  return DateFormat('EEEE, d MMMM yyyy', 'id').format(dateTime);
}

String formatTo24Hour(DateTime dateTime) {
  return DateFormat('HH.mm').format(dateTime);
}

String generateUniqueIdAcara(int length) {
  const characters =
      'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';
  Random random = Random();
  return List.generate(
      length, (index) => characters[random.nextInt(characters.length)]).join();
}
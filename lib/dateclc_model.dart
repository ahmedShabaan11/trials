import 'package:flutter/material.dart';

class DateClc {
  int day;
  int month;
  int year;
  TextEditingController dayController = TextEditingController();
  TextEditingController monthController = TextEditingController();
  TextEditingController yearController = TextEditingController();

  DateClc({required this.day, required this.month, required this.year});

  DateClc calcProcess({required DateClc date1, required DateClc date2}) {
    if (date1.day < date2.day) {
      if (date1.month == 0) {
        date1.year -= 1;
        date1.month += 11;
        date1.day += 30;
      } else {
        date1.month -= 1;
        date1.day += 30;
      }
    }
    if (date1.month < date2.month) {
      date1.year -= 1;
      date1.month += 12;
    }
    date1.day -= date2.day;
    date1.month -= date2.month;
    date1.year -= date2.year;
    return date1;
  }

DateClc fromControllerToInt() {
    return DateClc(
      day: int.parse(dayController.text),
      month: int.parse(monthController.text),
      year: int.parse(yearController.text),
    );
  }
}

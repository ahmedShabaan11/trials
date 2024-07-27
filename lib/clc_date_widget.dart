import 'package:flutter/material.dart';
import 'package:trials_calculation/date_input.dart';

class ClcDateWidget extends StatelessWidget {
  ClcDateWidget(
      {super.key,
      required this.text,
      required this.day,
      required this.month,
      required this.year});

  String text;
  TextEditingController day;
  TextEditingController month;
  TextEditingController year;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(text),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            DateInput(
              text: "day",
              controller: day,
            ),
            DateInput(
              text: "month",
              controller: month,
            ),
            DateInput(
              text: "year",
              controller: year,
            ),
          ],
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:trials_calculation/clc_date_widget.dart';

class Screen extends StatefulWidget {
  const Screen({super.key});

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(

        body: SingleChildScrollView(
          child: Column(
            children: [
//ClcDateWidget(text: "تاريخ التجنيد", day:, month: month, year: year)
            ],
          ),
        ),
      ),
    );
  }
}

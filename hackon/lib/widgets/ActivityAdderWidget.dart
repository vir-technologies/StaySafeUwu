import 'package:flutter/material.dart';

// MENU
int weight = 0;

// this widget will be used to add activities to the calendar
class ActivityAdderWidget extends StatelessWidget {
  // final Color color;
  ActivityAdderWidget();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextField(
          onSubmitted: (String str) {
            weight = int.parse(str);
            print(weight);
          },
        ),
      ),
    );
  }
}

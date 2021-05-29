import 'package:flutter/material.dart';
import 'package:hackon/widgets/PlaceholderWidget.dart';

// MENU

// this widget will be used to add activities to the calendar
class ActivityAdder extends StatefulWidget {
  // final String title;

  ActivityAdder({Key? key}) : super(key: key);
  // It is stateful -. has State obj containing fields that affect how it looks.
  // This class is the configuration for the state. holds the values (eg title)
  // provided by the parent (eg App widget) and used by the build method of the
  // State. Fields in a Widget subclass are always marked "final".

  @override
  _ActivityAdderState createState() => _ActivityAdderState();
}

class _ActivityAdderState extends State<ActivityAdder> {
  @override
  Widget build(BuildContext context) {
    return PlaceholderWidget(Colors.blue);
  }
}

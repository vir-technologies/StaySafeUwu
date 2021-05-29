// import statements
import 'package:flutter/material.dart';
import 'model/MyCalendar.dart';
import 'widgets/HomePage.dart';

// "fields"
MyCalendar calendar = new MyCalendar();

void main() => runApp(new App());

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Testing out this shite',
      theme: ThemeData(
        // Notice that after hot reload, the counter didn't reset back to zero;
        // the application is not restarted.
        primarySwatch: Colors.yellow,
      ),
      home: HomePage(title: 'how the fucK does this work?'),
    );
  }
}

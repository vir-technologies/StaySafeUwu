// this class is used to "test" from the console, because tests are :))
// nvm guys the readLineSync doesnt work for some reason :,)
import 'model/MyCalendar.dart';
import 'dart:io';

String _lineBreak = "\n =================";

MyCalendar myCalendar = new MyCalendar();

void main(List<String> arguments) {
  print('\n starting console tester' + _lineBreak);

  printQuarantineTimerStatus(myCalendar);
}

void printQuarantineTimerStatus(MyCalendar calendar) {
  if (calendar.quarantineDateIsSet()) {
    print("the quarantine end day is set to:" +
        calendar.getQuarantineEndDate().toString());
  } else {
    print("no quarantine date has been set yet, would you like to set one?");
    print("y -- yes,\n" + "n -- no");
    String? name = stdin.readLineSync();
    print("setting timer:" + _lineBreak);
    if (name == "y") {
      print("setting timer:" + _lineBreak);
      setQuarantineTimer();
    }
  }
}

void setQuarantineTimer() {
  print("enter the year (YYYY):");
  int year = int.parse(makeStringNonNullable(stdin.readLineSync()));
  print("enter the month (MM):");
  int? month = int.parse(makeStringNonNullable(stdin.readLineSync()));
  print("enter the day (DD):");
  int? day = int.parse(makeStringNonNullable(stdin.readLineSync()));

  myCalendar.setQuarantineEndDate(DateTime(year, month, day));
}

//makes a non null String? obj a String obj
String makeStringNonNullable(String? string) {
  if (string != null) {
    return string;
  } else {
    throw Exception;
  }
}

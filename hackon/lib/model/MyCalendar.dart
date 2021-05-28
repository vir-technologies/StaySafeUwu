import 'Activity.dart';

class MyCalendar {
  // List<MyEntry> entries = []; // should it be a list or a set?
  Map<DateTime, Iterable<Activity>> entries = new Map();
  DateTime? quarantineEndDate; // must be after current date?

// CONSTRUCTOR HERE

// getters

  // gets end date of timer
  DateTime getQuarantineEndDate() {
    return toNonNullable(quarantineEndDate); // todo: this should be changed
  }

  // REQUIRES: timer must be set (not null)
  Duration getQuarantineTimeLeft() {
    DateTime currentTime = DateTime.now();
    return currentTime.difference(
        toNonNullable((quarantineEndDate))); // todo: this should be changed
  }

// setters

  // sets quarantine timer
  void setQuarantineEndDate(DateTime date) {
    quarantineEndDate = date;
  }

// OTHER METHODS

// true if quarantine end date is set
  bool quarantineDateIsSet() {
    return (quarantineEndDate != null);
  }

// converts nullable dateTime to non-nullable datetime
  DateTime toNonNullable(DateTime? nullableDateTime) {
    if (nullableDateTime != null) {
      DateTime dateTime = nullableDateTime;
      return dateTime;
    }
    throw Exception("uhh the date time doesnt exist"); // must catch somewhere?
  }
}

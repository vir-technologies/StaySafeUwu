import 'Activity.dart';

class MyCalendar {
  // List<MyEntry> entries = []; // should it be a list or a set?
  Map<DateTime, Set<Activity>> entries = new Map();
  DateTime? quarantineEndDate; // must be after current date?

// CONSTRUCTOR HERE

// getters
  Set<Activity>? getActivitiesInOneDay(DateTime date) {
    return entries[date];
  }

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
  // adds activity to the calendar
  void addActivity(Activity activity) {
    Set<Activity>? activities = entries[activity.getDate()];
    if (activities == null) {
      activities = new Set();
    }
    activities.add(activity);
  }

  // removes activity to the calendar
  void removeActivity(Activity activity) {
    Set<Activity>? activities = entries[activity.getDate()];
    if (activities != null) {
      activities.remove(activity);
    }
  }

  // sets quarantine timer
  void setQuarantineEndDate(DateTime date) {
    quarantineEndDate = date;
  }

  // removes quarantine timer
  void removeQuarantineEndDate() {
    quarantineEndDate = null;
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

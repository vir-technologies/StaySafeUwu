import 'Activity.dart';

// one "journal" entry for each day. Only one per day.
class MyEntry {
  DateTime date = DateTime.now(); // todo: change this
  Set<Activity> activities = Set(); // or List
  String notes = "";

  MyEntry() {
    date = new DateTime(
        date.year, date.month, date.day); // todo: fix this please :)
  }

  // returns the date as a String
  String getDateAsString() {
    date.day;
    return date.toString(); //stub
  }

  // returns the date as a String
  DateTime getDate() {
    date.day;
    return date; //stub
  }

  Set<Activity> getActivities() {
    return activities;
  }

  String getNotes() {
    return notes;
  }

  void addActivity(Activity activity) {
    activities.add(activity);
  }

  void removeActivity(Activity activity) {
    activities.remove(activity);
  }

  void setNotes(String note) {
    this.notes = note;
  }
}

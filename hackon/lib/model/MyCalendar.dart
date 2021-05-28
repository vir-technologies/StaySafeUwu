import 'MyEntry.dart';

class MyCalendar {
  // List<MyEntry> entries = []; // should it be a list or a set?
  Map<DateTime, MyEntry> entries = new Map();
  DateTime? quarantineEndDate; // must be after current date?

// CONSTRUCTOR HERE

// getters

  // gets all the entries entries
  Iterable<MyEntry> getEntries() {
    return entries.values;
  }

  // gets entry on specific date
  MyEntry? getEntryOnDate(DateTime date) {
    DateTime dates = toNonNullable(date);
    return entries[dates];
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

  // adds an entry to the Map
  void addEntry(MyEntry entry) {
    DateTime key = entry.getDate();
    entries[key] = entry;
  }

  // removes an entry to the Map
  void removEntry(DateTime key) {
    entries.remove(key);
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

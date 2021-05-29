/*
This class is reserved as the base of all the activities that a user can do,
including minigames, water/food intake, exercise and etc.
*/

import '../widgets/ActivityAdder.dart';
import 'package:flutter_calendar_carousel/classes/event.dart';

// temporary values, should probably add a prompt for user to enter these later
// final int weight = 120; // in pounds
int exerciseTime = 0;

enum ActivityType { exercise, drink, minigame }

class Activity extends Event {
  Object? type; // Exercise, Drink, (Minigame)
  String? notes;

  /* default constructor for activity only includes activity type */
  Activity(ActivityType type, DateTime date) : super(date: date) {
    setType(type, 0);
    this.notes = "";
  }

  /* constructor with activity type and value associated to activity */
  Activity.withValue(ActivityType type, int value, DateTime date)
      : super(date: date) {
    setType(type, value);
    this.notes = "";
  }

  /* constructor with activity type and user notes */
  Activity.withNote(ActivityType type, this.notes, DateTime date)
      : super(date: date) {
    setType(type, 0);
  }

  /* constructor with activity type and both value and user notes */
  Activity.withBoth(ActivityType type, int value, this.notes, DateTime date)
      : super(date: date) {
    setType(type, value);
  }

  /* constructs and sets type of activity and associated value to field */
  void setType(ActivityType type, int value) {
    switch (type) {
      case ActivityType.exercise:
        this.type = Exercise(value);
        break;
      case ActivityType.drink:
        this.type = Drink(value);
        break;
      case ActivityType.minigame:
        this.type = Minigame(value);
        break;

      default:
        this.type = null;
    }
  }

  String? getNotes() {
    return this.notes;
  }

  void setNotes(String note) {
    this.notes = note;
  }
}

// Activity classes that users can do

class Exercise {
  late int duration; // in minutes

  Exercise(int dur) {
    this.duration = dur;
  }

  int? getDuration() {
    return this.duration;
  }

  void setDuration(int dur) {
    this.duration = dur;
  }

  String encourageUser() {
    String prompt =
        "You did " + this.duration.toString() + " minutes of exercise today.";
    if (this.duration >= 30) {
      return "Awesome! " + prompt;
    } else if (this.duration >= 60) {
      return "WOW! " + prompt;
    } else {
      return prompt;
    }
  }
}

class Drink {
  late int amount;
  double? recommendedDaily;

  final int OZPERGLASS = 8;

  Drink(int amt) {
    this.amount = amt;
    this.recommendedDaily = calculateRecommendedIntake(weight, exerciseTime);
  }

  int? getAmount() {
    return this.amount;
  }

  void setAmount(int amt) {
    this.amount = amt;
  }

  void drink(int glasses) {
    this.amount += glasses * OZPERGLASS;
  }

  /* The following is referenced from
  https://www.slenderkitchen.com/article/how-to-calculate-how-much-water-you-should-drink-a-day */

  double calculateRecommendedIntake(int weight, int exerciseTime) {
    double recommended = (weight * 2) / 3 + exerciseTime * 12;
    return recommended;
  }

  String adviseUser() {
    String prompt = "You drank " +
        this.amount.toString() +
        "oz out of the " +
        this.recommendedDaily.toString() +
        "oz recommended today.";
    return prompt;
  }
}

class Minigame {
  int? score;

  Minigame(int score) {
    this.score = score;
  }

  int? getScore() {
    return this.score;
  }

  void setScore(int score) {
    this.score = score;
  }
}

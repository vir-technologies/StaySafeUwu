/*
This class is reserved as the base of all the activities that a user can do,
including minigames, water/food intake, exercise and etc.
*/

// temporary values, should probably add a prompt for user to enter these later
final int weight = 120; // in pounds
final bool sex = true; // T male, F female
int exerciseTime = 0;

enum ActivityType { exercise, drink, minigame }

class Activity {
  Object? type; // Exercise, Drink, (Minigame)
  String? notes;

  /* default constructor for activity only includes activity type */
  Activity(ActivityType type) {
    setType(type, 0);
    this.notes = "";
  }

  /* constructor with activity type and value associated to activity */
  Activity.withValue(ActivityType type, int value) {
    setType(type, value);
    this.notes = "";
  }

  /* constructor with activity type and user notes */
  Activity.withNote(ActivityType type, String note) {
    setType(type, 0);
    this.notes = note;
  }

  /* constructor with activity type and both value and user notes */
  Activity.withBoth(ActivityType type, int value, String note) {
    setType(type, value);
    this.notes = note;
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
  int? duration;

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
    // TODO: returns an encouraging message for the user
    return "";
  }
}

class Drink {
  int? amount;
  double? recommendedDaily;

  Drink(int amt) {
    this.amount = amt;
    this.recommendedDaily =
        calculateRecommendedIntake(weight, sex, exerciseTime);
  }

  int? getAmount() {
    return this.amount;
  }

  void setAmount(int amt) {
    this.amount = amt;
  }

  /* The following is referenced from
  https://www.slenderkitchen.com/article/how-to-calculate-how-much-water-you-should-drink-a-day */

  double calculateRecommendedIntake(int weight, bool sex, int exerciseTime) {
    double recommended = (weight * 2) / 3 + exerciseTime * 12;
    return recommended;
  }

  String adviseUser() {
    // TODO: advise user on how much water they need to satisfy the recommended daily intake
    return "";
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

// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';

import 'package:flutter_test/flutter_test.dart';
import 'package:hackon/model/MyCalendar.dart';
import 'package:hackon/model/MyEntry.dart';

void main() {
  // initialize a calendar and some entries here
  MyCalendar testCalendar = new MyCalendar();
  MyEntry testEntry = new MyEntry();

  test('MyCalendar constructor', () {
    // check that timer is null
    // check that collection of Entry is instantiated but empty
  });

  group('entries', () {
    test('adding different entries to empty collection', () {
      // add different entries
      // check that they're all there
    });

    test('adding entries with same date, same information', () {
      // add the entries
      // check that there's only ONE entry.
    });

    test('adding entries with same date, different information', () {
      // add entries
      // this should do something bt im not sure what
    });
  });

  group('timer', () {
    test('setting quarantineEndDate from null', () {
      // set timer
      // check correct date
    });

    test('setting quarantineEndDate from non-null', () {
      // set timer twice
      // check correct date
    });

    test('setting quarantineEndDate past date', () {
      // set timer
      // ??? not sure what to do here
    });

    test('setting quarantineEndDate current date', () {
      // set timer
      // ??? not sure what to do here
    });

    test('setting quarantineEndDate future date', () {
      // set timer
      // yea thats it
    });

    test('getQuarantineTimeLeft, when timer is NOT null and future date', () {
      // add the entries
      // check that there's only ONE entry.
    });

    test('getQuarantineTimeLeft, when timer is NOT null and current date', () {
      // add the entries
      // check that there's only ONE entry.
    });

    test('getQuarantineTimeLeft, when timer is NOT null and past date', () {
      // add the entries
      // check that there's only ONE entry.
    });

    test('getQuarantineTimeLeft, when timer is NOT null', () {
      // add the entries
      // check that there's only ONE entry.
    });
  });
}

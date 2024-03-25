// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calender_page_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CalendarPageViewModel on CalendarPageViewModelBase, Store {
  late final _$todayAtom =
      Atom(name: 'CalendarPageViewModelBase.today', context: context);

  @override
  DateTime get today {
    _$todayAtom.reportRead();
    return super.today;
  }

  @override
  set today(DateTime value) {
    _$todayAtom.reportWrite(value, super.today, () {
      super.today = value;
    });
  }

  late final _$focusedDayAtom =
      Atom(name: 'CalendarPageViewModelBase.focusedDay', context: context);

  @override
  DateTime get focusedDay {
    _$focusedDayAtom.reportRead();
    return super.focusedDay;
  }

  @override
  set focusedDay(DateTime value) {
    _$focusedDayAtom.reportWrite(value, super.focusedDay, () {
      super.focusedDay = value;
    });
  }

  @override
  String toString() {
    return '''
today: ${today},
focusedDay: ${focusedDay}
    ''';
  }
}

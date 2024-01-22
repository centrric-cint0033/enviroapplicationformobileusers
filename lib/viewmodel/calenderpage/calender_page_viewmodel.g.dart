// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calender_page_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CalendarPageViewModel on CalendarPageViewModelBase, Store {
  late final _$passwordVisibilityAtom = Atom(
      name: 'CalendarPageViewModelBase.passwordVisibility', context: context);

  @override
  bool get passwordVisibility {
    _$passwordVisibilityAtom.reportRead();
    return super.passwordVisibility;
  }

  @override
  set passwordVisibility(bool value) {
    _$passwordVisibilityAtom.reportWrite(value, super.passwordVisibility, () {
      super.passwordVisibility = value;
    });
  }

  @override
  String toString() {
    return '''
passwordVisibility: ${passwordVisibility}
    ''';
  }
}

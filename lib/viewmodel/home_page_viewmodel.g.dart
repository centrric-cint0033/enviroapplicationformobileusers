// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_page_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeViewModel on HomeViewModelBase, Store {
  late final _$passwordVisibilityAtom =
      Atom(name: 'HomeViewModelBase.passwordVisibility', context: context);

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

  late final _$currentIndexAtom =
      Atom(name: 'HomeViewModelBase.currentIndex', context: context);

  @override
  int get currentIndex {
    _$currentIndexAtom.reportRead();
    return super.currentIndex;
  }

  @override
  set currentIndex(int value) {
    _$currentIndexAtom.reportWrite(value, super.currentIndex, () {
      super.currentIndex = value;
    });
  }

  late final _$permissionsResponseAtom =
      Atom(name: 'HomeViewModelBase.permissionsResponse', context: context);

  @override
  ApiResponse<dynamic> get permissionsResponse {
    _$permissionsResponseAtom.reportRead();
    return super.permissionsResponse;
  }

  @override
  set permissionsResponse(ApiResponse<dynamic> value) {
    _$permissionsResponseAtom.reportWrite(value, super.permissionsResponse, () {
      super.permissionsResponse = value;
    });
  }

  late final _$permissionsAsyncAction =
      AsyncAction('HomeViewModelBase.permissions', context: context);

  @override
  Future<void> permissions() {
    return _$permissionsAsyncAction.run(() => super.permissions());
  }

  late final _$HomeViewModelBaseActionController =
      ActionController(name: 'HomeViewModelBase', context: context);

  @override
  void setCurrentIndex(int index) {
    final _$actionInfo = _$HomeViewModelBaseActionController.startAction(
        name: 'HomeViewModelBase.setCurrentIndex');
    try {
      return super.setCurrentIndex(index);
    } finally {
      _$HomeViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
passwordVisibility: ${passwordVisibility},
currentIndex: ${currentIndex},
permissionsResponse: ${permissionsResponse}
    ''';
  }
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'oh&s_notification_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$OhsNotificationViewModel on OhsNotificationViewModelBase, Store {
  late final _$notificationpageResponseAtom = Atom(
      name: 'OhsNotificationViewModelBase.notificationpageResponse',
      context: context);

  @override
  ApiResponse<List<OhsRespModel>> get notificationpageResponse {
    _$notificationpageResponseAtom.reportRead();
    return super.notificationpageResponse;
  }

  @override
  set notificationpageResponse(ApiResponse<List<OhsRespModel>> value) {
    _$notificationpageResponseAtom
        .reportWrite(value, super.notificationpageResponse, () {
      super.notificationpageResponse = value;
    });
  }

  late final _$ohsnotificationviewmodelfunctionAsyncAction = AsyncAction(
      'OhsNotificationViewModelBase.ohsnotificationviewmodelfunction',
      context: context);

  @override
  Future<void> ohsnotificationviewmodelfunction() {
    return _$ohsnotificationviewmodelfunctionAsyncAction
        .run(() => super.ohsnotificationviewmodelfunction());
  }

  @override
  String toString() {
    return '''
notificationpageResponse: ${notificationpageResponse}
    ''';
  }
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shedule_page_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$JobCardViewModel on JobCardViewModelBase, Store {
  late final _$jobcardResponseAtom =
      Atom(name: 'JobCardViewModelBase.jobcardResponse', context: context);

  @override
  ApiResponse<JobCardRespModel> get jobcardResponse {
    _$jobcardResponseAtom.reportRead();
    return super.jobcardResponse;
  }

  @override
  set jobcardResponse(ApiResponse<JobCardRespModel> value) {
    _$jobcardResponseAtom.reportWrite(value, super.jobcardResponse, () {
      super.jobcardResponse = value;
    });
  }

  late final _$shedulecardResponseAtom =
      Atom(name: 'JobCardViewModelBase.shedulecardResponse', context: context);

  @override
  ApiResponse<List<SheduleCardRespModel>> get shedulecardResponse {
    _$shedulecardResponseAtom.reportRead();
    return super.shedulecardResponse;
  }

  @override
  set shedulecardResponse(ApiResponse<List<SheduleCardRespModel>> value) {
    _$shedulecardResponseAtom.reportWrite(value, super.shedulecardResponse, () {
      super.shedulecardResponse = value;
    });
  }

  late final _$sheduleweekResponseAtom =
      Atom(name: 'JobCardViewModelBase.sheduleweekResponse', context: context);

  @override
  ApiResponse<List<SheduleCardRespModel>> get sheduleweekResponse {
    _$sheduleweekResponseAtom.reportRead();
    return super.sheduleweekResponse;
  }

  @override
  set sheduleweekResponse(ApiResponse<List<SheduleCardRespModel>> value) {
    _$sheduleweekResponseAtom.reportWrite(value, super.sheduleweekResponse, () {
      super.sheduleweekResponse = value;
    });
  }

  late final _$jobcardviewmodelfunctionAsyncAction = AsyncAction(
      'JobCardViewModelBase.jobcardviewmodelfunction',
      context: context);

  @override
  Future<void> jobcardviewmodelfunction() {
    return _$jobcardviewmodelfunctionAsyncAction
        .run(() => super.jobcardviewmodelfunction());
  }

  late final _$shedulecardviewmodelfunctionAsyncAction = AsyncAction(
      'JobCardViewModelBase.shedulecardviewmodelfunction',
      context: context);

  @override
  Future<void> shedulecardviewmodelfunction() {
    return _$shedulecardviewmodelfunctionAsyncAction
        .run(() => super.shedulecardviewmodelfunction());
  }

  late final _$shedulecardviewmodelweekfunctionAsyncAction = AsyncAction(
      'JobCardViewModelBase.shedulecardviewmodelweekfunction',
      context: context);

  @override
  Future<void> shedulecardviewmodelweekfunction() {
    return _$shedulecardviewmodelweekfunctionAsyncAction
        .run(() => super.shedulecardviewmodelweekfunction());
  }

  @override
  String toString() {
    return '''
jobcardResponse: ${jobcardResponse},
shedulecardResponse: ${shedulecardResponse},
sheduleweekResponse: ${sheduleweekResponse}
    ''';
  }
}

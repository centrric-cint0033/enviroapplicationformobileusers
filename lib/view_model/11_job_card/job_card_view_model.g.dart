// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_card_view_model.dart';

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

  late final _$jobcardviewmodelfunctionAsyncAction = AsyncAction(
      'JobCardViewModelBase.jobcardviewmodelfunction',
      context: context);

  @override
  Future<void> jobcardviewmodelfunction() {
    return _$jobcardviewmodelfunctionAsyncAction
        .run(() => super.jobcardviewmodelfunction());
  }

  @override
  String toString() {
    return '''
jobcardResponse: ${jobcardResponse}
    ''';
  }
}

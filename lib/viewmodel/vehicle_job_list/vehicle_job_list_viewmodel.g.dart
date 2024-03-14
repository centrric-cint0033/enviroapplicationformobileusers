// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicle_job_list_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$VehicleJobListViewModel on VehiclejoblistViewModelBase, Store {
  late final _$joblistResponseAtom = Atom(
      name: 'VehiclejoblistViewModelBase.joblistResponse', context: context);

  @override
  ApiResponse<List<SalesJobListstRegResModel>> get joblistResponse {
    _$joblistResponseAtom.reportRead();
    return super.joblistResponse;
  }

  @override
  set joblistResponse(ApiResponse<List<SalesJobListstRegResModel>> value) {
    _$joblistResponseAtom.reportWrite(value, super.joblistResponse, () {
      super.joblistResponse = value;
    });
  }

  late final _$vehiclelistviewmodelfunctionAsyncAction = AsyncAction(
      'VehiclejoblistViewModelBase.vehiclelistviewmodelfunction',
      context: context);

  @override
  Future<void> vehiclelistviewmodelfunction() {
    return _$vehiclelistviewmodelfunctionAsyncAction
        .run(() => super.vehiclelistviewmodelfunction());
  }

  @override
  String toString() {
    return '''
joblistResponse: ${joblistResponse}
    ''';
  }
}

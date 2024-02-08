// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicle_page_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AllVehiclelistviewModel on AllVehiclelistviewModelBase, Store {
  late final _$allvehiclelistResponseAtom = Atom(
      name: 'AllVehiclelistviewModelBase.allvehiclelistResponse',
      context: context);

  @override
  ApiResponse<dynamic> get allvehiclelistResponse {
    _$allvehiclelistResponseAtom.reportRead();
    return super.allvehiclelistResponse;
  }

  @override
  set allvehiclelistResponse(ApiResponse<dynamic> value) {
    _$allvehiclelistResponseAtom
        .reportWrite(value, super.allvehiclelistResponse, () {
      super.allvehiclelistResponse = value;
    });
  }

  late final _$allvehiclelistingAsyncAction = AsyncAction(
      'AllVehiclelistviewModelBase.allvehiclelisting',
      context: context);

  @override
  Future<void> allvehiclelisting() {
    return _$allvehiclelistingAsyncAction.run(() => super.allvehiclelisting());
  }

  @override
  String toString() {
    return '''
allvehiclelistResponse: ${allvehiclelistResponse}
    ''';
  }
}

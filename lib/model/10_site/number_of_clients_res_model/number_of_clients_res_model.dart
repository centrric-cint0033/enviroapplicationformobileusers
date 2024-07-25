import 'package:freezed_annotation/freezed_annotation.dart';

part 'number_of_clients_res_model.freezed.dart';
part 'number_of_clients_res_model.g.dart';

@freezed
class NumberOfClientsResModel with _$NumberOfClientsResModel {
  factory NumberOfClientsResModel({
    @JsonKey(name: 'total_permanent_clients') num? totalPermanentClients,
    @JsonKey(name: 'total_temp_clients') num? totalTempClients,
    @JsonKey(name: 'total_deleted_clients') num? totalDeletedClients,
  }) = _NumberOfClientsResModel;

  factory NumberOfClientsResModel.fromJson(Map<String, dynamic> json) =>
      _$NumberOfClientsResModelFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';

import 'data.dart';

part 'job_card_models.freezed.dart';
part 'job_card_models.g.dart';

@freezed
class JobCardModels with _$JobCardModels {
  factory JobCardModels({
    Data? data,
    num? status,
  }) = _JobCardModels;

  factory JobCardModels.fromJson(Map<String, dynamic> json) =>
      _$JobCardModelsFromJson(json);
}

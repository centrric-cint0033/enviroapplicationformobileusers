import 'package:freezed_annotation/freezed_annotation.dart';

part 'quote_comment_res_model.freezed.dart';
part 'quote_comment_res_model.g.dart';

@freezed
class QuoteCommentResModel with _$QuoteCommentResModel {
  factory QuoteCommentResModel({
    num? id,
    String? comment,
    num? quote,
  }) = _QuoteCommentResModel;

  factory QuoteCommentResModel.fromJson(Map<String, dynamic> json) =>
      _$QuoteCommentResModelFromJson(json);
}

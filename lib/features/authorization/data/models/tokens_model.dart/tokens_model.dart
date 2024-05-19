import 'package:freezed_annotation/freezed_annotation.dart';

part 'tokens_model.freezed.dart';
part 'tokens_model.g.dart';

@freezed
class TokensModel with _$TokensModel {
  const factory TokensModel({
    required String access,
    required String refresh,
  }) = _TokensModel;

  factory TokensModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$TokensModelFromJson(json);
}

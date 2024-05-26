import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_chefs_model.freezed.dart';
part 'search_chefs_model.g.dart';

@freezed
class SearchChefsModel with _$SearchChefsModel {
  const factory SearchChefsModel({
    required int id,
    required String name,
    required String photoUrl,
  }) = _SearchChefsModel;

  factory SearchChefsModel.fromJson(Map<String, dynamic> json) => _$SearchChefsModelFromJson(json);
}

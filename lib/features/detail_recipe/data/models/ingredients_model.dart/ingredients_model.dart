import 'package:freezed_annotation/freezed_annotation.dart';

part 'ingredients_model.freezed.dart';
part 'ingredients_model.g.dart';

@freezed
class IngredientsModel with _$IngredientsModel {
  const factory IngredientsModel(
      {required int id,
      required String name,
      required String amount,
      required String unitOfMeasurement,
      required}) = _IngredientsModel;

  factory IngredientsModel.fromJson(Map<String, dynamic> json) => _$IngredientsModelFromJson(json);
}

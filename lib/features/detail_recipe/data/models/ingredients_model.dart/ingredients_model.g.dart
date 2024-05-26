// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ingredients_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$IngredientsModelImpl _$$IngredientsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$IngredientsModelImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      amount: json['amount'] as String,
      unitOfMeasurement: json['unitOfMeasurement'] as String,
      required: json['required'],
    );

Map<String, dynamic> _$$IngredientsModelImplToJson(
        _$IngredientsModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'amount': instance.amount,
      'unitOfMeasurement': instance.unitOfMeasurement,
      'required': instance.required,
    };

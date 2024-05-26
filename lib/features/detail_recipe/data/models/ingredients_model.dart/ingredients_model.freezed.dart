// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ingredients_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

IngredientsModel _$IngredientsModelFromJson(Map<String, dynamic> json) {
  return _IngredientsModel.fromJson(json);
}

/// @nodoc
mixin _$IngredientsModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get amount => throw _privateConstructorUsedError;
  String get unitOfMeasurement => throw _privateConstructorUsedError;
  dynamic get required => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IngredientsModelCopyWith<IngredientsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IngredientsModelCopyWith<$Res> {
  factory $IngredientsModelCopyWith(
          IngredientsModel value, $Res Function(IngredientsModel) then) =
      _$IngredientsModelCopyWithImpl<$Res, IngredientsModel>;
  @useResult
  $Res call(
      {int id,
      String name,
      String amount,
      String unitOfMeasurement,
      dynamic required});
}

/// @nodoc
class _$IngredientsModelCopyWithImpl<$Res, $Val extends IngredientsModel>
    implements $IngredientsModelCopyWith<$Res> {
  _$IngredientsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? amount = null,
    Object? unitOfMeasurement = null,
    Object? required = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      unitOfMeasurement: null == unitOfMeasurement
          ? _value.unitOfMeasurement
          : unitOfMeasurement // ignore: cast_nullable_to_non_nullable
              as String,
      required: freezed == required
          ? _value.required
          : required // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IngredientsModelImplCopyWith<$Res>
    implements $IngredientsModelCopyWith<$Res> {
  factory _$$IngredientsModelImplCopyWith(_$IngredientsModelImpl value,
          $Res Function(_$IngredientsModelImpl) then) =
      __$$IngredientsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String amount,
      String unitOfMeasurement,
      dynamic required});
}

/// @nodoc
class __$$IngredientsModelImplCopyWithImpl<$Res>
    extends _$IngredientsModelCopyWithImpl<$Res, _$IngredientsModelImpl>
    implements _$$IngredientsModelImplCopyWith<$Res> {
  __$$IngredientsModelImplCopyWithImpl(_$IngredientsModelImpl _value,
      $Res Function(_$IngredientsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? amount = null,
    Object? unitOfMeasurement = null,
    Object? required = freezed,
  }) {
    return _then(_$IngredientsModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      unitOfMeasurement: null == unitOfMeasurement
          ? _value.unitOfMeasurement
          : unitOfMeasurement // ignore: cast_nullable_to_non_nullable
              as String,
      required: freezed == required ? _value.required! : required,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IngredientsModelImpl implements _IngredientsModel {
  const _$IngredientsModelImpl(
      {required this.id,
      required this.name,
      required this.amount,
      required this.unitOfMeasurement,
      this.required});

  factory _$IngredientsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$IngredientsModelImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String amount;
  @override
  final String unitOfMeasurement;
  @override
  final dynamic required;

  @override
  String toString() {
    return 'IngredientsModel(id: $id, name: $name, amount: $amount, unitOfMeasurement: $unitOfMeasurement, required: $required)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IngredientsModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.unitOfMeasurement, unitOfMeasurement) ||
                other.unitOfMeasurement == unitOfMeasurement) &&
            const DeepCollectionEquality().equals(other.required, required));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, amount,
      unitOfMeasurement, const DeepCollectionEquality().hash(required));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IngredientsModelImplCopyWith<_$IngredientsModelImpl> get copyWith =>
      __$$IngredientsModelImplCopyWithImpl<_$IngredientsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IngredientsModelImplToJson(
      this,
    );
  }
}

abstract class _IngredientsModel implements IngredientsModel {
  const factory _IngredientsModel(
      {required final int id,
      required final String name,
      required final String amount,
      required final String unitOfMeasurement,
      final dynamic required}) = _$IngredientsModelImpl;

  factory _IngredientsModel.fromJson(Map<String, dynamic> json) =
      _$IngredientsModelImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get amount;
  @override
  String get unitOfMeasurement;
  @override
  dynamic get required;
  @override
  @JsonKey(ignore: true)
  _$$IngredientsModelImplCopyWith<_$IngredientsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

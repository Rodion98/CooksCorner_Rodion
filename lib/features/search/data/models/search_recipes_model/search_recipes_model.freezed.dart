// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_recipes_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SearchRecipesModel _$SearchRecipesModelFromJson(Map<String, dynamic> json) {
  return _SearchRecipesModel.fromJson(json);
}

/// @nodoc
mixin _$SearchRecipesModel {
  int get id => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get recipeName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchRecipesModelCopyWith<SearchRecipesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchRecipesModelCopyWith<$Res> {
  factory $SearchRecipesModelCopyWith(
          SearchRecipesModel value, $Res Function(SearchRecipesModel) then) =
      _$SearchRecipesModelCopyWithImpl<$Res, SearchRecipesModel>;
  @useResult
  $Res call({int id, String image, String recipeName});
}

/// @nodoc
class _$SearchRecipesModelCopyWithImpl<$Res, $Val extends SearchRecipesModel>
    implements $SearchRecipesModelCopyWith<$Res> {
  _$SearchRecipesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? image = null,
    Object? recipeName = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      recipeName: null == recipeName
          ? _value.recipeName
          : recipeName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchRecipesModelImplCopyWith<$Res>
    implements $SearchRecipesModelCopyWith<$Res> {
  factory _$$SearchRecipesModelImplCopyWith(_$SearchRecipesModelImpl value,
          $Res Function(_$SearchRecipesModelImpl) then) =
      __$$SearchRecipesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String image, String recipeName});
}

/// @nodoc
class __$$SearchRecipesModelImplCopyWithImpl<$Res>
    extends _$SearchRecipesModelCopyWithImpl<$Res, _$SearchRecipesModelImpl>
    implements _$$SearchRecipesModelImplCopyWith<$Res> {
  __$$SearchRecipesModelImplCopyWithImpl(_$SearchRecipesModelImpl _value,
      $Res Function(_$SearchRecipesModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? image = null,
    Object? recipeName = null,
  }) {
    return _then(_$SearchRecipesModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      recipeName: null == recipeName
          ? _value.recipeName
          : recipeName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchRecipesModelImpl implements _SearchRecipesModel {
  const _$SearchRecipesModelImpl(
      {required this.id, required this.image, required this.recipeName});

  factory _$SearchRecipesModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchRecipesModelImplFromJson(json);

  @override
  final int id;
  @override
  final String image;
  @override
  final String recipeName;

  @override
  String toString() {
    return 'SearchRecipesModel(id: $id, image: $image, recipeName: $recipeName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchRecipesModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.recipeName, recipeName) ||
                other.recipeName == recipeName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, image, recipeName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchRecipesModelImplCopyWith<_$SearchRecipesModelImpl> get copyWith =>
      __$$SearchRecipesModelImplCopyWithImpl<_$SearchRecipesModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchRecipesModelImplToJson(
      this,
    );
  }
}

abstract class _SearchRecipesModel implements SearchRecipesModel {
  const factory _SearchRecipesModel(
      {required final int id,
      required final String image,
      required final String recipeName}) = _$SearchRecipesModelImpl;

  factory _SearchRecipesModel.fromJson(Map<String, dynamic> json) =
      _$SearchRecipesModelImpl.fromJson;

  @override
  int get id;
  @override
  String get image;
  @override
  String get recipeName;
  @override
  @JsonKey(ignore: true)
  _$$SearchRecipesModelImplCopyWith<_$SearchRecipesModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

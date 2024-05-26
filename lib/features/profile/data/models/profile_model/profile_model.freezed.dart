// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProfileModel _$ProfileModelFromJson(Map<String, dynamic> json) {
  return _ProfileModel.fromJson(json);
}

/// @nodoc
mixin _$ProfileModel {
  int get id => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get recipeQuantity => throw _privateConstructorUsedError;
  int get followerQuantity => throw _privateConstructorUsedError;
  int get followingQuantity => throw _privateConstructorUsedError;
  String? get biography => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileModelCopyWith<ProfileModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileModelCopyWith<$Res> {
  factory $ProfileModelCopyWith(
          ProfileModel value, $Res Function(ProfileModel) then) =
      _$ProfileModelCopyWithImpl<$Res, ProfileModel>;
  @useResult
  $Res call(
      {int id,
      String imageUrl,
      String name,
      int recipeQuantity,
      int followerQuantity,
      int followingQuantity,
      String? biography});
}

/// @nodoc
class _$ProfileModelCopyWithImpl<$Res, $Val extends ProfileModel>
    implements $ProfileModelCopyWith<$Res> {
  _$ProfileModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? imageUrl = null,
    Object? name = null,
    Object? recipeQuantity = null,
    Object? followerQuantity = null,
    Object? followingQuantity = null,
    Object? biography = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      recipeQuantity: null == recipeQuantity
          ? _value.recipeQuantity
          : recipeQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      followerQuantity: null == followerQuantity
          ? _value.followerQuantity
          : followerQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      followingQuantity: null == followingQuantity
          ? _value.followingQuantity
          : followingQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      biography: freezed == biography
          ? _value.biography
          : biography // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProfileModelImplCopyWith<$Res>
    implements $ProfileModelCopyWith<$Res> {
  factory _$$ProfileModelImplCopyWith(
          _$ProfileModelImpl value, $Res Function(_$ProfileModelImpl) then) =
      __$$ProfileModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String imageUrl,
      String name,
      int recipeQuantity,
      int followerQuantity,
      int followingQuantity,
      String? biography});
}

/// @nodoc
class __$$ProfileModelImplCopyWithImpl<$Res>
    extends _$ProfileModelCopyWithImpl<$Res, _$ProfileModelImpl>
    implements _$$ProfileModelImplCopyWith<$Res> {
  __$$ProfileModelImplCopyWithImpl(
      _$ProfileModelImpl _value, $Res Function(_$ProfileModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? imageUrl = null,
    Object? name = null,
    Object? recipeQuantity = null,
    Object? followerQuantity = null,
    Object? followingQuantity = null,
    Object? biography = freezed,
  }) {
    return _then(_$ProfileModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      recipeQuantity: null == recipeQuantity
          ? _value.recipeQuantity
          : recipeQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      followerQuantity: null == followerQuantity
          ? _value.followerQuantity
          : followerQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      followingQuantity: null == followingQuantity
          ? _value.followingQuantity
          : followingQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      biography: freezed == biography
          ? _value.biography
          : biography // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProfileModelImpl implements _ProfileModel {
  const _$ProfileModelImpl(
      {required this.id,
      required this.imageUrl,
      required this.name,
      required this.recipeQuantity,
      required this.followerQuantity,
      required this.followingQuantity,
      required this.biography});

  factory _$ProfileModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfileModelImplFromJson(json);

  @override
  final int id;
  @override
  final String imageUrl;
  @override
  final String name;
  @override
  final int recipeQuantity;
  @override
  final int followerQuantity;
  @override
  final int followingQuantity;
  @override
  final String? biography;

  @override
  String toString() {
    return 'ProfileModel(id: $id, imageUrl: $imageUrl, name: $name, recipeQuantity: $recipeQuantity, followerQuantity: $followerQuantity, followingQuantity: $followingQuantity, biography: $biography)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.recipeQuantity, recipeQuantity) ||
                other.recipeQuantity == recipeQuantity) &&
            (identical(other.followerQuantity, followerQuantity) ||
                other.followerQuantity == followerQuantity) &&
            (identical(other.followingQuantity, followingQuantity) ||
                other.followingQuantity == followingQuantity) &&
            (identical(other.biography, biography) ||
                other.biography == biography));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, imageUrl, name,
      recipeQuantity, followerQuantity, followingQuantity, biography);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileModelImplCopyWith<_$ProfileModelImpl> get copyWith =>
      __$$ProfileModelImplCopyWithImpl<_$ProfileModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfileModelImplToJson(
      this,
    );
  }
}

abstract class _ProfileModel implements ProfileModel {
  const factory _ProfileModel(
      {required final int id,
      required final String imageUrl,
      required final String name,
      required final int recipeQuantity,
      required final int followerQuantity,
      required final int followingQuantity,
      required final String? biography}) = _$ProfileModelImpl;

  factory _ProfileModel.fromJson(Map<String, dynamic> json) =
      _$ProfileModelImpl.fromJson;

  @override
  int get id;
  @override
  String get imageUrl;
  @override
  String get name;
  @override
  int get recipeQuantity;
  @override
  int get followerQuantity;
  @override
  int get followingQuantity;
  @override
  String? get biography;
  @override
  @JsonKey(ignore: true)
  _$$ProfileModelImplCopyWith<_$ProfileModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

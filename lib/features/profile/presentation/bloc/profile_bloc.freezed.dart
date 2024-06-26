// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProfileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getProfile,
    required TResult Function() getRecipes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getProfile,
    TResult? Function()? getRecipes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getProfile,
    TResult Function()? getRecipes,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetProfile value) getProfile,
    required TResult Function(_GetRecipes value) getRecipes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetProfile value)? getProfile,
    TResult? Function(_GetRecipes value)? getRecipes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetProfile value)? getProfile,
    TResult Function(_GetRecipes value)? getRecipes,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileEventCopyWith<$Res> {
  factory $ProfileEventCopyWith(
          ProfileEvent value, $Res Function(ProfileEvent) then) =
      _$ProfileEventCopyWithImpl<$Res, ProfileEvent>;
}

/// @nodoc
class _$ProfileEventCopyWithImpl<$Res, $Val extends ProfileEvent>
    implements $ProfileEventCopyWith<$Res> {
  _$ProfileEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetProfileImplCopyWith<$Res> {
  factory _$$GetProfileImplCopyWith(
          _$GetProfileImpl value, $Res Function(_$GetProfileImpl) then) =
      __$$GetProfileImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetProfileImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$GetProfileImpl>
    implements _$$GetProfileImplCopyWith<$Res> {
  __$$GetProfileImplCopyWithImpl(
      _$GetProfileImpl _value, $Res Function(_$GetProfileImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetProfileImpl implements _GetProfile {
  const _$GetProfileImpl();

  @override
  String toString() {
    return 'ProfileEvent.getProfile()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetProfileImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getProfile,
    required TResult Function() getRecipes,
  }) {
    return getProfile();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getProfile,
    TResult? Function()? getRecipes,
  }) {
    return getProfile?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getProfile,
    TResult Function()? getRecipes,
    required TResult orElse(),
  }) {
    if (getProfile != null) {
      return getProfile();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetProfile value) getProfile,
    required TResult Function(_GetRecipes value) getRecipes,
  }) {
    return getProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetProfile value)? getProfile,
    TResult? Function(_GetRecipes value)? getRecipes,
  }) {
    return getProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetProfile value)? getProfile,
    TResult Function(_GetRecipes value)? getRecipes,
    required TResult orElse(),
  }) {
    if (getProfile != null) {
      return getProfile(this);
    }
    return orElse();
  }
}

abstract class _GetProfile implements ProfileEvent {
  const factory _GetProfile() = _$GetProfileImpl;
}

/// @nodoc
abstract class _$$GetRecipesImplCopyWith<$Res> {
  factory _$$GetRecipesImplCopyWith(
          _$GetRecipesImpl value, $Res Function(_$GetRecipesImpl) then) =
      __$$GetRecipesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetRecipesImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$GetRecipesImpl>
    implements _$$GetRecipesImplCopyWith<$Res> {
  __$$GetRecipesImplCopyWithImpl(
      _$GetRecipesImpl _value, $Res Function(_$GetRecipesImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetRecipesImpl implements _GetRecipes {
  const _$GetRecipesImpl();

  @override
  String toString() {
    return 'ProfileEvent.getRecipes()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetRecipesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getProfile,
    required TResult Function() getRecipes,
  }) {
    return getRecipes();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getProfile,
    TResult? Function()? getRecipes,
  }) {
    return getRecipes?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getProfile,
    TResult Function()? getRecipes,
    required TResult orElse(),
  }) {
    if (getRecipes != null) {
      return getRecipes();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetProfile value) getProfile,
    required TResult Function(_GetRecipes value) getRecipes,
  }) {
    return getRecipes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetProfile value)? getProfile,
    TResult? Function(_GetRecipes value)? getRecipes,
  }) {
    return getRecipes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetProfile value)? getProfile,
    TResult Function(_GetRecipes value)? getRecipes,
    required TResult orElse(),
  }) {
    if (getRecipes != null) {
      return getRecipes(this);
    }
    return orElse();
  }
}

abstract class _GetRecipes implements ProfileEvent {
  const factory _GetRecipes() = _$GetRecipesImpl;
}

/// @nodoc
mixin _$ProfileState {
  StateStatus get stateStatus => throw _privateConstructorUsedError;
  ProfileEntity? get profileEntity => throw _privateConstructorUsedError;
  List<RecipeEntity>? get myRecipes => throw _privateConstructorUsedError;
  List<RecipeEntity>? get savedRedipes => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileStateCopyWith<ProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res, ProfileState>;
  @useResult
  $Res call(
      {StateStatus stateStatus,
      ProfileEntity? profileEntity,
      List<RecipeEntity>? myRecipes,
      List<RecipeEntity>? savedRedipes});

  $StateStatusCopyWith<$Res> get stateStatus;
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res, $Val extends ProfileState>
    implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stateStatus = null,
    Object? profileEntity = freezed,
    Object? myRecipes = freezed,
    Object? savedRedipes = freezed,
  }) {
    return _then(_value.copyWith(
      stateStatus: null == stateStatus
          ? _value.stateStatus
          : stateStatus // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      profileEntity: freezed == profileEntity
          ? _value.profileEntity
          : profileEntity // ignore: cast_nullable_to_non_nullable
              as ProfileEntity?,
      myRecipes: freezed == myRecipes
          ? _value.myRecipes
          : myRecipes // ignore: cast_nullable_to_non_nullable
              as List<RecipeEntity>?,
      savedRedipes: freezed == savedRedipes
          ? _value.savedRedipes
          : savedRedipes // ignore: cast_nullable_to_non_nullable
              as List<RecipeEntity>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StateStatusCopyWith<$Res> get stateStatus {
    return $StateStatusCopyWith<$Res>(_value.stateStatus, (value) {
      return _then(_value.copyWith(stateStatus: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProfileStateImplCopyWith<$Res>
    implements $ProfileStateCopyWith<$Res> {
  factory _$$ProfileStateImplCopyWith(
          _$ProfileStateImpl value, $Res Function(_$ProfileStateImpl) then) =
      __$$ProfileStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StateStatus stateStatus,
      ProfileEntity? profileEntity,
      List<RecipeEntity>? myRecipes,
      List<RecipeEntity>? savedRedipes});

  @override
  $StateStatusCopyWith<$Res> get stateStatus;
}

/// @nodoc
class __$$ProfileStateImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$ProfileStateImpl>
    implements _$$ProfileStateImplCopyWith<$Res> {
  __$$ProfileStateImplCopyWithImpl(
      _$ProfileStateImpl _value, $Res Function(_$ProfileStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stateStatus = null,
    Object? profileEntity = freezed,
    Object? myRecipes = freezed,
    Object? savedRedipes = freezed,
  }) {
    return _then(_$ProfileStateImpl(
      stateStatus: null == stateStatus
          ? _value.stateStatus
          : stateStatus // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      profileEntity: freezed == profileEntity
          ? _value.profileEntity
          : profileEntity // ignore: cast_nullable_to_non_nullable
              as ProfileEntity?,
      myRecipes: freezed == myRecipes
          ? _value._myRecipes
          : myRecipes // ignore: cast_nullable_to_non_nullable
              as List<RecipeEntity>?,
      savedRedipes: freezed == savedRedipes
          ? _value._savedRedipes
          : savedRedipes // ignore: cast_nullable_to_non_nullable
              as List<RecipeEntity>?,
    ));
  }
}

/// @nodoc

class _$ProfileStateImpl implements _ProfileState {
  const _$ProfileStateImpl(
      {required this.stateStatus,
      required this.profileEntity,
      required final List<RecipeEntity>? myRecipes,
      required final List<RecipeEntity>? savedRedipes})
      : _myRecipes = myRecipes,
        _savedRedipes = savedRedipes;

  @override
  final StateStatus stateStatus;
  @override
  final ProfileEntity? profileEntity;
  final List<RecipeEntity>? _myRecipes;
  @override
  List<RecipeEntity>? get myRecipes {
    final value = _myRecipes;
    if (value == null) return null;
    if (_myRecipes is EqualUnmodifiableListView) return _myRecipes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<RecipeEntity>? _savedRedipes;
  @override
  List<RecipeEntity>? get savedRedipes {
    final value = _savedRedipes;
    if (value == null) return null;
    if (_savedRedipes is EqualUnmodifiableListView) return _savedRedipes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ProfileState(stateStatus: $stateStatus, profileEntity: $profileEntity, myRecipes: $myRecipes, savedRedipes: $savedRedipes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileStateImpl &&
            (identical(other.stateStatus, stateStatus) ||
                other.stateStatus == stateStatus) &&
            (identical(other.profileEntity, profileEntity) ||
                other.profileEntity == profileEntity) &&
            const DeepCollectionEquality()
                .equals(other._myRecipes, _myRecipes) &&
            const DeepCollectionEquality()
                .equals(other._savedRedipes, _savedRedipes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      stateStatus,
      profileEntity,
      const DeepCollectionEquality().hash(_myRecipes),
      const DeepCollectionEquality().hash(_savedRedipes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileStateImplCopyWith<_$ProfileStateImpl> get copyWith =>
      __$$ProfileStateImplCopyWithImpl<_$ProfileStateImpl>(this, _$identity);
}

abstract class _ProfileState implements ProfileState {
  const factory _ProfileState(
      {required final StateStatus stateStatus,
      required final ProfileEntity? profileEntity,
      required final List<RecipeEntity>? myRecipes,
      required final List<RecipeEntity>? savedRedipes}) = _$ProfileStateImpl;

  @override
  StateStatus get stateStatus;
  @override
  ProfileEntity? get profileEntity;
  @override
  List<RecipeEntity>? get myRecipes;
  @override
  List<RecipeEntity>? get savedRedipes;
  @override
  @JsonKey(ignore: true)
  _$$ProfileStateImplCopyWith<_$ProfileStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

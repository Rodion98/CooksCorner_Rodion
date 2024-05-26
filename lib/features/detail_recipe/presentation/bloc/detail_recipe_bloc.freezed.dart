// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_recipe_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DetailRecipeEvent {
  int? get id => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? id) getRecipeDetail,
    required TResult Function(int? id) putSave,
    required TResult Function(int? id) putLike,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? id)? getRecipeDetail,
    TResult? Function(int? id)? putSave,
    TResult? Function(int? id)? putLike,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? id)? getRecipeDetail,
    TResult Function(int? id)? putSave,
    TResult Function(int? id)? putLike,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetRecipeDetail value) getRecipeDetail,
    required TResult Function(_PutSave value) putSave,
    required TResult Function(_PutLike value) putLike,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetRecipeDetail value)? getRecipeDetail,
    TResult? Function(_PutSave value)? putSave,
    TResult? Function(_PutLike value)? putLike,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetRecipeDetail value)? getRecipeDetail,
    TResult Function(_PutSave value)? putSave,
    TResult Function(_PutLike value)? putLike,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DetailRecipeEventCopyWith<DetailRecipeEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailRecipeEventCopyWith<$Res> {
  factory $DetailRecipeEventCopyWith(
          DetailRecipeEvent value, $Res Function(DetailRecipeEvent) then) =
      _$DetailRecipeEventCopyWithImpl<$Res, DetailRecipeEvent>;
  @useResult
  $Res call({int? id});
}

/// @nodoc
class _$DetailRecipeEventCopyWithImpl<$Res, $Val extends DetailRecipeEvent>
    implements $DetailRecipeEventCopyWith<$Res> {
  _$DetailRecipeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetRecipeDetailImplCopyWith<$Res>
    implements $DetailRecipeEventCopyWith<$Res> {
  factory _$$GetRecipeDetailImplCopyWith(_$GetRecipeDetailImpl value,
          $Res Function(_$GetRecipeDetailImpl) then) =
      __$$GetRecipeDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id});
}

/// @nodoc
class __$$GetRecipeDetailImplCopyWithImpl<$Res>
    extends _$DetailRecipeEventCopyWithImpl<$Res, _$GetRecipeDetailImpl>
    implements _$$GetRecipeDetailImplCopyWith<$Res> {
  __$$GetRecipeDetailImplCopyWithImpl(
      _$GetRecipeDetailImpl _value, $Res Function(_$GetRecipeDetailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$GetRecipeDetailImpl(
      freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$GetRecipeDetailImpl implements _GetRecipeDetail {
  const _$GetRecipeDetailImpl(this.id);

  @override
  final int? id;

  @override
  String toString() {
    return 'DetailRecipeEvent.getRecipeDetail(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetRecipeDetailImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetRecipeDetailImplCopyWith<_$GetRecipeDetailImpl> get copyWith =>
      __$$GetRecipeDetailImplCopyWithImpl<_$GetRecipeDetailImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? id) getRecipeDetail,
    required TResult Function(int? id) putSave,
    required TResult Function(int? id) putLike,
  }) {
    return getRecipeDetail(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? id)? getRecipeDetail,
    TResult? Function(int? id)? putSave,
    TResult? Function(int? id)? putLike,
  }) {
    return getRecipeDetail?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? id)? getRecipeDetail,
    TResult Function(int? id)? putSave,
    TResult Function(int? id)? putLike,
    required TResult orElse(),
  }) {
    if (getRecipeDetail != null) {
      return getRecipeDetail(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetRecipeDetail value) getRecipeDetail,
    required TResult Function(_PutSave value) putSave,
    required TResult Function(_PutLike value) putLike,
  }) {
    return getRecipeDetail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetRecipeDetail value)? getRecipeDetail,
    TResult? Function(_PutSave value)? putSave,
    TResult? Function(_PutLike value)? putLike,
  }) {
    return getRecipeDetail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetRecipeDetail value)? getRecipeDetail,
    TResult Function(_PutSave value)? putSave,
    TResult Function(_PutLike value)? putLike,
    required TResult orElse(),
  }) {
    if (getRecipeDetail != null) {
      return getRecipeDetail(this);
    }
    return orElse();
  }
}

abstract class _GetRecipeDetail implements DetailRecipeEvent {
  const factory _GetRecipeDetail(final int? id) = _$GetRecipeDetailImpl;

  @override
  int? get id;
  @override
  @JsonKey(ignore: true)
  _$$GetRecipeDetailImplCopyWith<_$GetRecipeDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PutSaveImplCopyWith<$Res>
    implements $DetailRecipeEventCopyWith<$Res> {
  factory _$$PutSaveImplCopyWith(
          _$PutSaveImpl value, $Res Function(_$PutSaveImpl) then) =
      __$$PutSaveImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id});
}

/// @nodoc
class __$$PutSaveImplCopyWithImpl<$Res>
    extends _$DetailRecipeEventCopyWithImpl<$Res, _$PutSaveImpl>
    implements _$$PutSaveImplCopyWith<$Res> {
  __$$PutSaveImplCopyWithImpl(
      _$PutSaveImpl _value, $Res Function(_$PutSaveImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$PutSaveImpl(
      freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$PutSaveImpl implements _PutSave {
  const _$PutSaveImpl(this.id);

  @override
  final int? id;

  @override
  String toString() {
    return 'DetailRecipeEvent.putSave(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PutSaveImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PutSaveImplCopyWith<_$PutSaveImpl> get copyWith =>
      __$$PutSaveImplCopyWithImpl<_$PutSaveImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? id) getRecipeDetail,
    required TResult Function(int? id) putSave,
    required TResult Function(int? id) putLike,
  }) {
    return putSave(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? id)? getRecipeDetail,
    TResult? Function(int? id)? putSave,
    TResult? Function(int? id)? putLike,
  }) {
    return putSave?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? id)? getRecipeDetail,
    TResult Function(int? id)? putSave,
    TResult Function(int? id)? putLike,
    required TResult orElse(),
  }) {
    if (putSave != null) {
      return putSave(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetRecipeDetail value) getRecipeDetail,
    required TResult Function(_PutSave value) putSave,
    required TResult Function(_PutLike value) putLike,
  }) {
    return putSave(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetRecipeDetail value)? getRecipeDetail,
    TResult? Function(_PutSave value)? putSave,
    TResult? Function(_PutLike value)? putLike,
  }) {
    return putSave?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetRecipeDetail value)? getRecipeDetail,
    TResult Function(_PutSave value)? putSave,
    TResult Function(_PutLike value)? putLike,
    required TResult orElse(),
  }) {
    if (putSave != null) {
      return putSave(this);
    }
    return orElse();
  }
}

abstract class _PutSave implements DetailRecipeEvent {
  const factory _PutSave(final int? id) = _$PutSaveImpl;

  @override
  int? get id;
  @override
  @JsonKey(ignore: true)
  _$$PutSaveImplCopyWith<_$PutSaveImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PutLikeImplCopyWith<$Res>
    implements $DetailRecipeEventCopyWith<$Res> {
  factory _$$PutLikeImplCopyWith(
          _$PutLikeImpl value, $Res Function(_$PutLikeImpl) then) =
      __$$PutLikeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id});
}

/// @nodoc
class __$$PutLikeImplCopyWithImpl<$Res>
    extends _$DetailRecipeEventCopyWithImpl<$Res, _$PutLikeImpl>
    implements _$$PutLikeImplCopyWith<$Res> {
  __$$PutLikeImplCopyWithImpl(
      _$PutLikeImpl _value, $Res Function(_$PutLikeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$PutLikeImpl(
      freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$PutLikeImpl implements _PutLike {
  const _$PutLikeImpl(this.id);

  @override
  final int? id;

  @override
  String toString() {
    return 'DetailRecipeEvent.putLike(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PutLikeImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PutLikeImplCopyWith<_$PutLikeImpl> get copyWith =>
      __$$PutLikeImplCopyWithImpl<_$PutLikeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? id) getRecipeDetail,
    required TResult Function(int? id) putSave,
    required TResult Function(int? id) putLike,
  }) {
    return putLike(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? id)? getRecipeDetail,
    TResult? Function(int? id)? putSave,
    TResult? Function(int? id)? putLike,
  }) {
    return putLike?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? id)? getRecipeDetail,
    TResult Function(int? id)? putSave,
    TResult Function(int? id)? putLike,
    required TResult orElse(),
  }) {
    if (putLike != null) {
      return putLike(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetRecipeDetail value) getRecipeDetail,
    required TResult Function(_PutSave value) putSave,
    required TResult Function(_PutLike value) putLike,
  }) {
    return putLike(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetRecipeDetail value)? getRecipeDetail,
    TResult? Function(_PutSave value)? putSave,
    TResult? Function(_PutLike value)? putLike,
  }) {
    return putLike?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetRecipeDetail value)? getRecipeDetail,
    TResult Function(_PutSave value)? putSave,
    TResult Function(_PutLike value)? putLike,
    required TResult orElse(),
  }) {
    if (putLike != null) {
      return putLike(this);
    }
    return orElse();
  }
}

abstract class _PutLike implements DetailRecipeEvent {
  const factory _PutLike(final int? id) = _$PutLikeImpl;

  @override
  int? get id;
  @override
  @JsonKey(ignore: true)
  _$$PutLikeImplCopyWith<_$PutLikeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DetailRecipeState {
  StateStatus get stateStatus => throw _privateConstructorUsedError;
  RecipeDetailEntity? get recipeDetailEntity =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DetailRecipeStateCopyWith<DetailRecipeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailRecipeStateCopyWith<$Res> {
  factory $DetailRecipeStateCopyWith(
          DetailRecipeState value, $Res Function(DetailRecipeState) then) =
      _$DetailRecipeStateCopyWithImpl<$Res, DetailRecipeState>;
  @useResult
  $Res call({StateStatus stateStatus, RecipeDetailEntity? recipeDetailEntity});

  $StateStatusCopyWith<$Res> get stateStatus;
}

/// @nodoc
class _$DetailRecipeStateCopyWithImpl<$Res, $Val extends DetailRecipeState>
    implements $DetailRecipeStateCopyWith<$Res> {
  _$DetailRecipeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stateStatus = null,
    Object? recipeDetailEntity = freezed,
  }) {
    return _then(_value.copyWith(
      stateStatus: null == stateStatus
          ? _value.stateStatus
          : stateStatus // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      recipeDetailEntity: freezed == recipeDetailEntity
          ? _value.recipeDetailEntity
          : recipeDetailEntity // ignore: cast_nullable_to_non_nullable
              as RecipeDetailEntity?,
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
abstract class _$$DetailRecipeStateImplCopyWith<$Res>
    implements $DetailRecipeStateCopyWith<$Res> {
  factory _$$DetailRecipeStateImplCopyWith(_$DetailRecipeStateImpl value,
          $Res Function(_$DetailRecipeStateImpl) then) =
      __$$DetailRecipeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StateStatus stateStatus, RecipeDetailEntity? recipeDetailEntity});

  @override
  $StateStatusCopyWith<$Res> get stateStatus;
}

/// @nodoc
class __$$DetailRecipeStateImplCopyWithImpl<$Res>
    extends _$DetailRecipeStateCopyWithImpl<$Res, _$DetailRecipeStateImpl>
    implements _$$DetailRecipeStateImplCopyWith<$Res> {
  __$$DetailRecipeStateImplCopyWithImpl(_$DetailRecipeStateImpl _value,
      $Res Function(_$DetailRecipeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stateStatus = null,
    Object? recipeDetailEntity = freezed,
  }) {
    return _then(_$DetailRecipeStateImpl(
      stateStatus: null == stateStatus
          ? _value.stateStatus
          : stateStatus // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      recipeDetailEntity: freezed == recipeDetailEntity
          ? _value.recipeDetailEntity
          : recipeDetailEntity // ignore: cast_nullable_to_non_nullable
              as RecipeDetailEntity?,
    ));
  }
}

/// @nodoc

class _$DetailRecipeStateImpl implements _DetailRecipeState {
  const _$DetailRecipeStateImpl(
      {required this.stateStatus, required this.recipeDetailEntity});

  @override
  final StateStatus stateStatus;
  @override
  final RecipeDetailEntity? recipeDetailEntity;

  @override
  String toString() {
    return 'DetailRecipeState(stateStatus: $stateStatus, recipeDetailEntity: $recipeDetailEntity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailRecipeStateImpl &&
            (identical(other.stateStatus, stateStatus) ||
                other.stateStatus == stateStatus) &&
            (identical(other.recipeDetailEntity, recipeDetailEntity) ||
                other.recipeDetailEntity == recipeDetailEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stateStatus, recipeDetailEntity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailRecipeStateImplCopyWith<_$DetailRecipeStateImpl> get copyWith =>
      __$$DetailRecipeStateImplCopyWithImpl<_$DetailRecipeStateImpl>(
          this, _$identity);
}

abstract class _DetailRecipeState implements DetailRecipeState {
  const factory _DetailRecipeState(
          {required final StateStatus stateStatus,
          required final RecipeDetailEntity? recipeDetailEntity}) =
      _$DetailRecipeStateImpl;

  @override
  StateStatus get stateStatus;
  @override
  RecipeDetailEntity? get recipeDetailEntity;
  @override
  @JsonKey(ignore: true)
  _$$DetailRecipeStateImplCopyWith<_$DetailRecipeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

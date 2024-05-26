// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recipe_detail_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RecipeDetailModel _$RecipeDetailModelFromJson(Map<String, dynamic> json) {
  return _RecipeDetailModel.fromJson(json);
}

/// @nodoc
mixin _$RecipeDetailModel {
  int get id => throw _privateConstructorUsedError;
  String get recipeName => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  String get author => throw _privateConstructorUsedError;
  String get cookingTime => throw _privateConstructorUsedError;
  String get difficulty => throw _privateConstructorUsedError;
  int get likeQuantity => throw _privateConstructorUsedError;
  bool get isLiked => throw _privateConstructorUsedError;
  bool get isSaved => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  List<IngredientsModel> get ingredients => throw _privateConstructorUsedError;
  dynamic get required => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecipeDetailModelCopyWith<RecipeDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeDetailModelCopyWith<$Res> {
  factory $RecipeDetailModelCopyWith(
          RecipeDetailModel value, $Res Function(RecipeDetailModel) then) =
      _$RecipeDetailModelCopyWithImpl<$Res, RecipeDetailModel>;
  @useResult
  $Res call(
      {int id,
      String recipeName,
      String imageUrl,
      String author,
      String cookingTime,
      String difficulty,
      int likeQuantity,
      bool isLiked,
      bool isSaved,
      String description,
      List<IngredientsModel> ingredients,
      dynamic required});
}

/// @nodoc
class _$RecipeDetailModelCopyWithImpl<$Res, $Val extends RecipeDetailModel>
    implements $RecipeDetailModelCopyWith<$Res> {
  _$RecipeDetailModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? recipeName = null,
    Object? imageUrl = null,
    Object? author = null,
    Object? cookingTime = null,
    Object? difficulty = null,
    Object? likeQuantity = null,
    Object? isLiked = null,
    Object? isSaved = null,
    Object? description = null,
    Object? ingredients = null,
    Object? required = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      recipeName: null == recipeName
          ? _value.recipeName
          : recipeName // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      cookingTime: null == cookingTime
          ? _value.cookingTime
          : cookingTime // ignore: cast_nullable_to_non_nullable
              as String,
      difficulty: null == difficulty
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as String,
      likeQuantity: null == likeQuantity
          ? _value.likeQuantity
          : likeQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      isLiked: null == isLiked
          ? _value.isLiked
          : isLiked // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaved: null == isSaved
          ? _value.isSaved
          : isSaved // ignore: cast_nullable_to_non_nullable
              as bool,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      ingredients: null == ingredients
          ? _value.ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<IngredientsModel>,
      required: freezed == required
          ? _value.required
          : required // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RecipeDetailModelImplCopyWith<$Res>
    implements $RecipeDetailModelCopyWith<$Res> {
  factory _$$RecipeDetailModelImplCopyWith(_$RecipeDetailModelImpl value,
          $Res Function(_$RecipeDetailModelImpl) then) =
      __$$RecipeDetailModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String recipeName,
      String imageUrl,
      String author,
      String cookingTime,
      String difficulty,
      int likeQuantity,
      bool isLiked,
      bool isSaved,
      String description,
      List<IngredientsModel> ingredients,
      dynamic required});
}

/// @nodoc
class __$$RecipeDetailModelImplCopyWithImpl<$Res>
    extends _$RecipeDetailModelCopyWithImpl<$Res, _$RecipeDetailModelImpl>
    implements _$$RecipeDetailModelImplCopyWith<$Res> {
  __$$RecipeDetailModelImplCopyWithImpl(_$RecipeDetailModelImpl _value,
      $Res Function(_$RecipeDetailModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? recipeName = null,
    Object? imageUrl = null,
    Object? author = null,
    Object? cookingTime = null,
    Object? difficulty = null,
    Object? likeQuantity = null,
    Object? isLiked = null,
    Object? isSaved = null,
    Object? description = null,
    Object? ingredients = null,
    Object? required = freezed,
  }) {
    return _then(_$RecipeDetailModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      recipeName: null == recipeName
          ? _value.recipeName
          : recipeName // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      cookingTime: null == cookingTime
          ? _value.cookingTime
          : cookingTime // ignore: cast_nullable_to_non_nullable
              as String,
      difficulty: null == difficulty
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as String,
      likeQuantity: null == likeQuantity
          ? _value.likeQuantity
          : likeQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      isLiked: null == isLiked
          ? _value.isLiked
          : isLiked // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaved: null == isSaved
          ? _value.isSaved
          : isSaved // ignore: cast_nullable_to_non_nullable
              as bool,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      ingredients: null == ingredients
          ? _value._ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<IngredientsModel>,
      required: freezed == required ? _value.required! : required,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RecipeDetailModelImpl implements _RecipeDetailModel {
  const _$RecipeDetailModelImpl(
      {required this.id,
      required this.recipeName,
      required this.imageUrl,
      required this.author,
      required this.cookingTime,
      required this.difficulty,
      required this.likeQuantity,
      required this.isLiked,
      required this.isSaved,
      required this.description,
      required final List<IngredientsModel> ingredients,
      this.required})
      : _ingredients = ingredients;

  factory _$RecipeDetailModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RecipeDetailModelImplFromJson(json);

  @override
  final int id;
  @override
  final String recipeName;
  @override
  final String imageUrl;
  @override
  final String author;
  @override
  final String cookingTime;
  @override
  final String difficulty;
  @override
  final int likeQuantity;
  @override
  final bool isLiked;
  @override
  final bool isSaved;
  @override
  final String description;
  final List<IngredientsModel> _ingredients;
  @override
  List<IngredientsModel> get ingredients {
    if (_ingredients is EqualUnmodifiableListView) return _ingredients;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ingredients);
  }

  @override
  final dynamic required;

  @override
  String toString() {
    return 'RecipeDetailModel(id: $id, recipeName: $recipeName, imageUrl: $imageUrl, author: $author, cookingTime: $cookingTime, difficulty: $difficulty, likeQuantity: $likeQuantity, isLiked: $isLiked, isSaved: $isSaved, description: $description, ingredients: $ingredients, required: $required)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecipeDetailModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.recipeName, recipeName) ||
                other.recipeName == recipeName) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.cookingTime, cookingTime) ||
                other.cookingTime == cookingTime) &&
            (identical(other.difficulty, difficulty) ||
                other.difficulty == difficulty) &&
            (identical(other.likeQuantity, likeQuantity) ||
                other.likeQuantity == likeQuantity) &&
            (identical(other.isLiked, isLiked) || other.isLiked == isLiked) &&
            (identical(other.isSaved, isSaved) || other.isSaved == isSaved) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other._ingredients, _ingredients) &&
            const DeepCollectionEquality().equals(other.required, required));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      recipeName,
      imageUrl,
      author,
      cookingTime,
      difficulty,
      likeQuantity,
      isLiked,
      isSaved,
      description,
      const DeepCollectionEquality().hash(_ingredients),
      const DeepCollectionEquality().hash(required));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecipeDetailModelImplCopyWith<_$RecipeDetailModelImpl> get copyWith =>
      __$$RecipeDetailModelImplCopyWithImpl<_$RecipeDetailModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RecipeDetailModelImplToJson(
      this,
    );
  }
}

abstract class _RecipeDetailModel implements RecipeDetailModel {
  const factory _RecipeDetailModel(
      {required final int id,
      required final String recipeName,
      required final String imageUrl,
      required final String author,
      required final String cookingTime,
      required final String difficulty,
      required final int likeQuantity,
      required final bool isLiked,
      required final bool isSaved,
      required final String description,
      required final List<IngredientsModel> ingredients,
      final dynamic required}) = _$RecipeDetailModelImpl;

  factory _RecipeDetailModel.fromJson(Map<String, dynamic> json) =
      _$RecipeDetailModelImpl.fromJson;

  @override
  int get id;
  @override
  String get recipeName;
  @override
  String get imageUrl;
  @override
  String get author;
  @override
  String get cookingTime;
  @override
  String get difficulty;
  @override
  int get likeQuantity;
  @override
  bool get isLiked;
  @override
  bool get isSaved;
  @override
  String get description;
  @override
  List<IngredientsModel> get ingredients;
  @override
  dynamic get required;
  @override
  @JsonKey(ignore: true)
  _$$RecipeDetailModelImplCopyWith<_$RecipeDetailModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

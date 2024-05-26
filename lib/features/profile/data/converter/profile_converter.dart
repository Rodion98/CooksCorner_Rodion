import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/profile/data/models/profile_model/profile_model.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/profile/domain/entity/profile_entity.dart';

@Injectable(as: Converter<ProfileModel, ProfileEntity>)
class RecipeHomeMapper extends Converter<ProfileModel, ProfileEntity> {
  @override
  ProfileEntity convert(ProfileModel input) {
    return ProfileEntity(
      id: input.id,
      imageUrl: input.imageUrl,
      name: input.name,
      followerQuantity: input.followerQuantity,
      followingQuantity: input.followingQuantity,
      recipeQuantity: input.recipeQuantity,
      biography: input.biography,
    );
  }
}

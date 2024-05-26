import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neobis_flutter_cooks_corner_rodion/core/app/io_ui.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/detail_recipe/domain/entity/recipe_home_entity.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/detail_recipe/presentation/bloc/detail_recipe_bloc.dart';
import 'package:neobis_flutter_cooks_corner_rodion/gen/strings.g.dart';

class InfoWidget extends StatelessWidget {
  final RecipeDetailEntity recipe;
  const InfoWidget({
    super.key,
    required this.recipe,
  });

  @override
  Widget build(BuildContext context) {
    String capitalize(String s) => s.isNotEmpty ? s[0].toUpperCase() + s.substring(1).toLowerCase() : s;
    return Stack(
      children: [
        _buildImage(context, recipe.imageUrl),
        _buildPopButton(context),
        Align(
          alignment: Alignment.bottomCenter,
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.700,
              color: AppColors.white,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 10, left: 20, right: 20, top: 10),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildRecipeName(),
                      const SizedBox(height: 8),
                      _buildTimeInfo(),
                      const SizedBox(height: 8),
                      _buildDifficultyInfo(capitalize),
                      const SizedBox(height: 16),
                      _buildAuthorInfo(),
                      const SizedBox(height: 16),
                      _buildLikesAndSaves(context),
                      const SizedBox(height: 20),
                      Text(
                        t.Description,
                        style: AppTextStyle.poppins16.copyWith(color: AppColors.black),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        recipe.description!,
                        style: AppTextStyle.poppins14.copyWith(color: AppColors.black),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        t.Ingredients,
                        style: AppTextStyle.poppins16.copyWith(color: AppColors.black),
                      ),
                      _builIngridientsList(context),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Container _builIngridientsList(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: recipe.ingredients.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    recipe.ingredients[index].name!,
                    style: AppTextStyle.poppins14.copyWith(
                      color: AppColors.black,
                    ),
                  ),
                  Text(
                    recipe.ingredients[index].unitOfMeasurement!,
                    style: AppTextStyle.poppins14.copyWith(
                      color: AppColors.black,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                height: 1,
              )
            ],
          );
        },
      ),
    );
  }

  Row _buildLikesAndSaves(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            GestureDetector(
              onTap: () async {
                context.read<DetailRecipeBloc>().add(DetailRecipeEvent.putLike(recipe.id));

                // Добавляем задержку 1 секунда
                await Future.delayed(Duration(milliseconds: 500));

                context.read<DetailRecipeBloc>().add(DetailRecipeEvent.getRecipeDetail(recipe.id));
              },
              child: Icon(
                recipe.isLiked! ? Icons.favorite_outlined : Icons.favorite_border,
                color: recipe.isLiked! ? Colors.red : Colors.black, // Устанавливаем цвет для Icons.favorite_outlined
              ),
            ),
            SizedBox(width: 5),
            Text(
              recipe.likeQuantity.toString(),
              style: AppTextStyle.poppins12.copyWith(
                color: AppColors.black,
              ),
            ),
            SizedBox(width: 5),
            Text(
              t.likes,
              style: AppTextStyle.poppins12.copyWith(
                color: AppColors.black,
              ),
            ),
          ],
        ),
        GestureDetector(
          onTap: () async {
            context.read<DetailRecipeBloc>().add(DetailRecipeEvent.putSave(recipe.id));

            // Добавляем задержку 1 секунда
            await Future.delayed(Duration(milliseconds: 500));

            context.read<DetailRecipeBloc>().add(DetailRecipeEvent.getRecipeDetail(recipe.id));
          },
          child: Icon(
            recipe.isSaved! ? Icons.bookmark_outlined : Icons.bookmark_border,
            color: recipe.isSaved! ? Colors.red : Colors.black, // Устанавливаем цвет для Icons.favorite_outlined
          ),
        ),
      ],
    );
  }

  Text _buildAuthorInfo() {
    return Text(
      'by ' + recipe.author!,
      style: AppTextStyle.poppins12,
    );
  }

  Container _buildDifficultyInfo(String capitalize(String s)) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 7,
        vertical: 2,
      ),
      decoration: BoxDecoration(
        color: AppColors.primarySecondary,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Text(
        capitalize(recipe.difficulty!),
        style: AppTextStyle.poppins12.copyWith(
          color: AppColors.black,
        ),
      ),
    );
  }

  Row _buildTimeInfo() {
    return Row(
      children: [
        Icon(
          Icons.access_time,
          color: AppColors.primary,
        ),
        SizedBox(width: 8),
        Text(
          recipe.cookingTime!,
          style: AppTextStyle.poppins14.copyWith(color: AppColors.primary),
        ),
      ],
    );
  }

  Text _buildRecipeName() {
    return Text(
      recipe.recipeName!,
      maxLines: 2,
      style: AppTextStyle.poppinsProfile20.copyWith(height: 1.5),
    );
  }

  Positioned _buildPopButton(BuildContext context) {
    return Positioned(
      left: 16,
      top: 16,
      child: IconButton(
        icon: Icon(
          Icons.arrow_back_ios,
          color: AppColors.white,
          size: 20,
        ),
        onPressed: () {
          AutoRouter.of(context).pop();
        },
      ),
    );
  }

  Container _buildImage(BuildContext context, String? imageUrl) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.350,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(imageUrl!),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

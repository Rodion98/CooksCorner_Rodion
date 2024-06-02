import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neobis_flutter_cooks_corner_rodion/core/app/enums/enums.dart';
import 'package:neobis_flutter_cooks_corner_rodion/core/app/io_ui.dart';
import 'package:neobis_flutter_cooks_corner_rodion/core/app/router/app_routes.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/search/domain/entity/search_chefs_entity.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/search/domain/entity/search_recipe_entity.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/search/presentation/bloc/search_bloc.dart';
import 'package:neobis_flutter_cooks_corner_rodion/gen/strings.g.dart';

class SearchResultsWidget extends StatelessWidget {
  final SearchType type;
  const SearchResultsWidget({Key? key, required this.type}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBloc, SearchState>(
      builder: (context, state) {
        final items = type == SearchType.chefs ? state.stateModel.chefs : state.stateModel.recipes;

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 12),
            if (items.isNotEmpty)
              Text(
                t.SearchResults,
                style: AppTextStyle.poppins14,
              ),
            SizedBox(height: 20),
            items.isNotEmpty
                ? Expanded(
                    child: ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: items.length,
                        itemBuilder: (context, index) {
                          final item = items[index];
                          final imageUrl = type == SearchType.chefs
                              ? (item as SearchChefsEntity).photoUrl
                              : (item as SearchRecipeEntity).image;
                          final title = type == SearchType.chefs
                              ? (item as SearchChefsEntity).name
                              : (item as SearchRecipeEntity).recipeName;

                          return Container(
                            padding: EdgeInsets.only(bottom: 16),
                            child: Row(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: CachedNetworkImage(
                                    width: 40,
                                    height: 40,
                                    imageUrl: imageUrl!,
                                  ),
                                ),
                                SizedBox(width: 12),
                                Expanded(
                                  child: Text(
                                    title!,
                                    style: AppTextStyle.poppins14,
                                  ),
                                ),
                                _buildButton(context, item)
                              ],
                            ),
                          );
                        }),
                  )
                : Center(
                    child: Text(
                      t.NoResultsFound,
                      style: AppTextStyle.poppins16.copyWith(
                        color: AppColors.inputText,
                      ),
                    ),
                  )
          ],
        );
      },
    );
  }

  Align _buildButton(BuildContext context, Object item) {
    return Align(
      alignment: Alignment.centerRight,
      child: GestureDetector(
        onTap: () {
          type == SearchType.recipes
              ? AutoRouter.of(context).push(
                  DetailRecipeRoute(id: (item as SearchRecipeEntity).id),
                )
              : AutoRouter.of(context).push(
                  DetailRecipeRoute(
                      id: type == SearchType.chefs ? (item as SearchChefsEntity).id : (item as SearchRecipeEntity).id),
                );
        },
        child: Row(
          children: [
            Text(
              t.View,
              style: AppTextStyle.poppins12.copyWith(
                color: AppColors.primary,
              ),
            ),
            SizedBox(width: 10),
            Icon(
              Icons.arrow_forward,
              color: AppColors.primary,
            )
          ],
        ),
      ),
    );
  }
}

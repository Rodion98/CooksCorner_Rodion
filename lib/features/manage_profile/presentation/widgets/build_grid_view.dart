import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neobis_flutter_cooks_corner_rodion/core/app/io_ui.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/home/presentation/bloc/home_bloc.dart';

class BuilGridView extends StatelessWidget {
  const BuilGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          HomeState;
          final recipes = state.stateModel.recipes;
          return GridView.builder(
            physics: PageScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 0.85,
              crossAxisCount: 2,
              mainAxisSpacing: 15,
              crossAxisSpacing: 15,
            ),
            itemCount: recipes.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(15),
                    ),
                    //
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      bottom: 12,
                      left: 14,
                      right: 14,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "${recipes[index].recipeName}",
                          style: AppTextStyle.poppins16.copyWith(
                            fontWeight: FontWeight.w500,
                            color: AppColors.background,
                          ),
                        ),
                        Text(
                          "by ${recipes[index].author}",
                          style: AppTextStyle.poppins10.copyWith(
                            fontWeight: FontWeight.w400,
                            color: AppColors.background,
                          ),
                        ),
                        SizedBox(height: 8),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            _buildIcon([
                              Icons.favorite_border,
                              Icons.favorite_rounded,
                            ], () {}),
                            SizedBox(width: 4),
                            Text(
                              "${recipes[index].likesQuantity}",
                              style: AppTextStyle.poppins14.copyWith(
                                color: AppColors.background,
                              ),
                            ),
                            SizedBox(width: 4),
                            _buildIcon([
                              Icons.bookmark_border,
                              Icons.bookmark_outlined,
                            ], () {}),
                            SizedBox(width: 4),
                            Text(
                              "${recipes[index].savesQuantity}",
                              style: AppTextStyle.poppins14.copyWith(
                                color: AppColors.background,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }

  GestureDetector _buildIcon(List<IconData> icons, Function()? onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Icon(
        icons[0],
        color: AppColors.background,
        size: 16,
      ),
    );
  }
}

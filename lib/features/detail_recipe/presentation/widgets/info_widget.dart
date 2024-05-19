import 'package:flutter/material.dart';
import 'package:neobis_flutter_cooks_corner_rodion/core/app/io_ui.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/detail_recipe/domain/ingridient_model.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/detail_recipe/presentation/widgets/level_widget.dart';

class InfoWidget extends StatelessWidget {
  const InfoWidget({
    super.key,
    // required this.widget,
  });

  // final PlaceScreen widget;

  @override
  Widget build(BuildContext context) {
    final List<IngridientEntity> ingridients = [
      IngridientEntity(id: 0, name: 'Chicken', qantity: 2),
      IngridientEntity(id: 0, name: 'Chicken', qantity: 2),
      IngridientEntity(id: 0, name: 'Chicken', qantity: 2),
      IngridientEntity(id: 0, name: 'Chicken', qantity: 2),
      IngridientEntity(id: 0, name: 'Chicken', qantity: 2),
      IngridientEntity(id: 0, name: 'Chicken', qantity: 2),
    ];

    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: MediaQuery.of(context).size.height * 0.699,
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
        ),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 40, top: 20, left: 20, right: 20),
          child: SingleChildScrollView(
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                'Ainsley’s Jerk\nChicken',
                maxLines: 2,
                style: AppTextStyle.poppinsProfile20.copyWith(height: 1.5),
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  Icon(
                    Icons.access_time,
                    color: AppColors.primary,
                  ),
                  Text(
                    '20-30 min',
                    // widget.tourEntity.country!,
                    style: AppTextStyle.poppins14.copyWith(color: AppColors.primary),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Container(
                width: 50,
                // height: 50,
                // constraints: BoxConstraints.expand(),
                padding: const EdgeInsets.symmetric(
                  horizontal: 7,
                  vertical: 2,
                ),
                decoration: BoxDecoration(color: AppColors.primarySecondary, borderRadius: BorderRadius.circular(100)),
                child: Center(
                  child: Text(
                    'Easy',
                    style: AppTextStyle.poppins12.copyWith(
                      color: AppColors.black,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'by Ainsley Harriott',
                style: AppTextStyle.poppins12,
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.favorite_border),
                      SizedBox(width: 5),
                      Text(
                        '12',
                        style: AppTextStyle.poppins12.copyWith(color: AppColors.black),
                      ),
                      SizedBox(width: 5),
                      Text(
                        'likes',
                        style: AppTextStyle.poppins12.copyWith(color: AppColors.black),
                      ),
                    ],
                  ),
                  Icon(Icons.bookmark_border),
                ],
              ),
              const SizedBox(height: 24),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Description",
                    style: AppTextStyle.poppins16.copyWith(color: AppColors.black),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "You pick up your palette knife and then work that into. Give your meat a good old rub. That’s it, nice and hot, hot and spicy meat. He-he boy...",
                    style: AppTextStyle.poppins14.copyWith(color: AppColors.black),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    "Ingredients",
                    style: AppTextStyle.poppins16.copyWith(color: AppColors.black),
                  ),
                  const SizedBox(height: 24),
                  Container(
                    // constraints:  ,
                    // height: double.minPositive,
                    child: ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: ingridients.length,
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
                                  ingridients[index].name!,
                                  style: AppTextStyle.poppins14.copyWith(
                                    color: AppColors.black,
                                  ),
                                ),
                                Text(
                                  ingridients[index].qantity!.toString(),
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
                  )
                ],
              ),
              // const ReviewWidget(),
              // SizedBox(
              //   height: MediaQuery.of(context).size.height / 9,
              // ),
            ]),
          ),
        ),
      ),
    );
  }
}

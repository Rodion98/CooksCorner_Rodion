import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:neobis_flutter_cooks_corner_rodion/core/app/io_ui.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/home/domain/entity/recipe_entity.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  // final TourUseCase tourUseCase;

  HomeBloc(
      // required this.tourUseCase
      )
      : super(
          HomeState(
            HomeStateModel.initial(),
          ),
        ) {
    on<Load>(_onLoad);
  }

  Future<void> _onLoad(Load event, Emitter<HomeState> emit) async {
    // final List<Tab> tabs = Constants.titles.map((title) => Tab(text: title)).toList();

    // final List<Tab> tabs = Constants.tabsHome.map((title) => Tab(text: title)).toList();

    List<RecipeEntity> recipes = [
      RecipeEntity(
        id: 0,
        name: 'Egg Omlet',
        author: 'Ainsley Harriot',
        likes: 10,
        favorites: 23,
        time: 20,
        level: 'easy',
        description:
            'You pick up your palette knife and then work that into. Give your meat a good old rub. That’s it, nice and hot, hot and spicy meat. He-he boy...',
        ingridients: ['Chicken', 'Olive oil', 'Garlic powder'],
        image_url: 'https://img1.russianfood.com/dycontent/images_upl/332/big_331048.jpg',
      ),
      RecipeEntity(
        id: 0,
        name: 'Egg Omlet',
        author: 'Ainsley Harriot',
        likes: 10,
        favorites: 23,
        time: 20,
        level: 'easy',
        description:
            'You pick up your palette knife and then work that into. Give your meat a good old rub. That’s it, nice and hot, hot and spicy meat. He-he boy...',
        ingridients: ['Chicken', 'Olive oil', 'Garlic powder'],
        image_url: 'https://img1.russianfood.com/dycontent/images_upl/332/big_331048.jpg',
      ),
      RecipeEntity(
        id: 0,
        name: 'Egg Omlet',
        author: 'Ainsley Harriot',
        likes: 10,
        favorites: 23,
        time: 20,
        level: 'easy',
        description:
            'You pick up your palette knife and then work that into. Give your meat a good old rub. That’s it, nice and hot, hot and spicy meat. He-he boy...',
        ingridients: ['Chicken', 'Olive oil', 'Garlic powder'],
        image_url: 'https://img1.russianfood.com/dycontent/images_upl/332/big_331048.jpg',
      ),
      RecipeEntity(
        id: 0,
        name: 'Egg Omlet',
        author: 'Ainsley Harriot',
        likes: 10,
        favorites: 23,
        time: 20,
        level: 'easy',
        description:
            'You pick up your palette knife and then work that into. Give your meat a good old rub. That’s it, nice and hot, hot and spicy meat. He-he boy...',
        ingridients: ['Chicken', 'Olive oil', 'Garlic powder'],
        image_url: 'https://img1.russianfood.com/dycontent/images_upl/332/big_331048.jpg',
      ),
      RecipeEntity(
        id: 0,
        name: 'Egg Omlet',
        author: 'Ainsley Harriot',
        likes: 10,
        favorites: 23,
        time: 20,
        level: 'easy',
        description:
            'You pick up your palette knife and then work that into. Give your meat a good old rub. That’s it, nice and hot, hot and spicy meat. He-he boy...',
        ingridients: ['Chicken', 'Olive oil', 'Garlic powder'],
        image_url: 'https://img1.russianfood.com/dycontent/images_upl/332/big_331048.jpg',
      ),
      RecipeEntity(
        id: 0,
        name: 'Egg Omlet',
        author: 'Ainsley Harriot',
        likes: 10,
        favorites: 23,
        time: 20,
        level: 'easy',
        description:
            'You pick up your palette knife and then work that into. Give your meat a good old rub. That’s it, nice and hot, hot and spicy meat. He-he boy...',
        ingridients: ['Chicken', 'Olive oil', 'Garlic powder'],
        image_url: 'https://img1.russianfood.com/dycontent/images_upl/332/big_331048.jpg',
      ),
      RecipeEntity(
        id: 0,
        name: 'Egg Omlet',
        author: 'Ainsley Harriot',
        likes: 10,
        favorites: 23,
        time: 20,
        level: 'easy',
        description:
            'You pick up your palette knife and then work that into. Give your meat a good old rub. That’s it, nice and hot, hot and spicy meat. He-he boy...',
        ingridients: ['Chicken', 'Olive oil', 'Garlic powder'],
        image_url: 'https://img1.russianfood.com/dycontent/images_upl/332/big_331048.jpg',
      ),
      RecipeEntity(
        id: 0,
        name: 'Egg Omlet',
        author: 'Ainsley Harriot',
        likes: 10,
        favorites: 23,
        time: 20,
        level: 'easy',
        description:
            'You pick up your palette knife and then work that into. Give your meat a good old rub. That’s it, nice and hot, hot and spicy meat. He-he boy...',
        ingridients: ['Chicken', 'Olive oil', 'Garlic powder'],
        image_url: 'https://img1.russianfood.com/dycontent/images_upl/332/big_331048.jpg',
      ),
    ];

    // String category = Constants.titles[event.index!].toLowerCase().replaceAll(' ', '-');
    // if (category == "asia" || category == "europe") {
    //   category = category.substring(0, 1).toUpperCase() + category.substring(1);
    //   category = "continent/$category";
    // }
    // List<RecipeEntity> recipes = [];
    // await tourUseCase.call(category);
    final index = event.index;
    // List<RecipeEntity> recipes = [];

    emit(HomeState(state.stateModel.copyWith(
      index: index,
      recipes: recipes,
    )));
  }
}

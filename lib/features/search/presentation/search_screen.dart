import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neobis_flutter_cooks_corner_rodion/core/app/enums/enums.dart';
import 'package:neobis_flutter_cooks_corner_rodion/core/app/io_ui.dart';
import 'package:neobis_flutter_cooks_corner_rodion/core/app/router/app_routes.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/search/presentation/bloc/search_bloc.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/search/presentation/widgets/custom_painter_widget.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/search/presentation/widgets/my_text_filed.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/search/presentation/widgets/search_result_widget.dart';
import 'package:neobis_flutter_cooks_corner_rodion/gen/strings.g.dart';

@RoutePage()
class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> with TickerProviderStateMixin {
  late TabController tabController;
  Timer? _debounce;
  final query = TextEditingController();
  @override
  void initState() {
    super.initState();
    tabController = TabController(
      length: Constants.tabsSearch.length,
      vsync: this,
    );
    tabController.addListener(() {
      if (tabController.indexIsChanging) {
        _performSearch();
      }
    });
  }

  @override
  void dispose() {
    query.dispose();
    _debounce?.cancel();
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 20,
            right: 20,
            top: 14,
          ),
          child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Text(
              textAlign: TextAlign.center,
              t.WhatToday,
              style: AppTextStyle.poppinsProfile22,
            ),
            SizedBox(height: 24),
            _buildTabBarWidget(),
            SizedBox(height: 28),
            _buildSearchFiled(),
            _buildResult(),
            _buildButton(context),
            SizedBox(height: 24),
          ]),
        ),
      ),
    );
  }

  MyElevatedButtonWidget _buildButton(BuildContext context) {
    return MyElevatedButtonWidget(
      onTap: () {
        AutoRouter.of(context).push(
          const CreateRecipeRoute(),
        );
      },
      text: t.AddRecipe,
      icon: Icons.add_circle,
    );
  }

  Expanded _buildResult() {
    return Expanded(
      child: TabBarView(controller: tabController, children: [
        SearchResultsWidget(type: SearchType.chefs),
        SearchResultsWidget(type: SearchType.recipes),
      ]),
    );
  }

  MyTextFieldhWidget _buildSearchFiled() {
    return MyTextFieldhWidget(
      onChanged: (_) {
        _onSearchChanged();
      },
      controller: query,
      hintText: t.SearchRecipes,
      suffixIcon: [Icons.search, Icons.clear],
    );
  }

  void _performSearch() {
    if (query.text.isNotEmpty) {
      context.read<SearchBloc>().add(
            Search(type: tabController.index, query: query.text),
          );
    } else if (query.text.isEmpty) {
      query.clear();
      context.read<SearchBloc>().add(
            ClearSearchResults(),
          );
    }
  }

  void _onSearchChanged() {
    if (_debounce?.isActive ?? false) _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 300), () {
      _performSearch();
    });
  }

  Container _buildTabBarWidget() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 6.5,
        vertical: 8,
      ),
      child: _buildTabBar(Constants.tabsSearch, 0),
      decoration: BoxDecoration(
        color: AppColors.primarySecondary,
        borderRadius: BorderRadius.circular(100),
      ),
    );
  }

  TabBar _buildTabBar(List<Tab> category, int selectedIndex) {
    return TabBar(
      controller: tabController,
      onTap: (S) {},
      tabAlignment: TabAlignment.fill,
      overlayColor: MaterialStateProperty.all(
        Colors.transparent,
      ),
      dividerColor: Colors.white,
      unselectedLabelStyle: AppTextStyle.poppins14.copyWith(
        color: AppColors.black,
        height: 1.5,
        fontWeight: FontWeight.w500,
      ),
      labelStyle: AppTextStyle.poppins16.copyWith(
        height: 1.5,
        fontWeight: FontWeight.w500,
        color: AppColors.white,
      ),
      indicatorColor: AppColors.black,
      tabs: category,
      indicator: CustomTabIndicator(
        indicatorWidth: 160,
        indicatorHeight: 48.0,
        indicatorColor: AppColors.primary,
      ),
    );
  }
}

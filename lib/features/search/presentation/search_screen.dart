import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:neobis_flutter_cooks_corner_rodion/core/app/io_ui.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/authorization/presentation/auth_screen.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/search/presentation/widgets/custom_painter_widget.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/search/presentation/widgets/my_text_filed.dart';
import 'package:neobis_flutter_cooks_corner_rodion/gen/strings.g.dart';

@RoutePage()
class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> with TickerProviderStateMixin {
  late TabController tabController;

  final search = TextEditingController();
  @override
  void initState() {
    super.initState();
    tabController = TabController(
      length: Constants.tabsSearch.length,
      vsync: this,
    );
    // tabController.addListener(() {
    //   if (tabController.indexIsChanging) {
    //     context.read<HomeBloc>().add(
    //           Load(index: tabController.index),
    //         );
    //   }
    // });
    // context.read<HomeBloc>().add(Load(index: 0));
  }

  @override
  void dispose() {
    search.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      resizeToAvoidBottomInset: false,
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
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 6.5,
                vertical: 8,
              ),
              // margin:,
              child: _buildTabBar(Constants.tabsSearch, 0),
              decoration: BoxDecoration(
                color: AppColors.primarySecondary,
                borderRadius: BorderRadius.circular(100),
              ),
            ),
            SizedBox(height: 28),
            MyTextFieldhWidget(
              controller: search,
              hintText: t.SearchRecipes,
              suffixIcon: [Icons.search, Icons.clear],
            ),
            Spacer(),
            MyElevatedButtonWidget(
              text: t.AddRecipe,
              icon: Icons.add_circle,
            ),
            SizedBox(height: 24),
          ]),
        ),
      ),
    );
  }

  TabBar _buildTabBar(List<Tab> category, int selectedIndex) {
    return TabBar(
      controller: tabController,
      onTap: (S) {},
      //  (index) {
      //   context.read<HomeBloc>().add(Load(index: index));
      // },
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

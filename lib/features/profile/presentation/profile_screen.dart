import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neobis_flutter_cooks_corner_rodion/core/app/io_ui.dart';
import 'package:neobis_flutter_cooks_corner_rodion/core/network/entity/state_status.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/home/presentation/widgets/build_grid_view%20copy.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/profile/presentation/widgets/app_bar_widget.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/profile/presentation/widgets/profile_content_widget.dart';

@RoutePage()
class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> with TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(
      length: Constants.tabsProfile.length,
      vsync: this,
    );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    context.read<ProfileBloc>().add(ProfileEvent.getProfile());
    context.read<ProfileBloc>().add(ProfileEvent.getRecipes());
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: ProfileAppBarWithDialog(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProfileContent(),
          _buildTabBar(Constants.tabsProfile),
          _buildResult(),
        ],
      ),
    );
  }

  Expanded _buildResult() {
    return Expanded(
      child: TabBarView(
        controller: tabController,
        children: [
          BlocBuilder<ProfileBloc, ProfileState>(builder: (context, state) {
            if (state.stateStatus == StateStatus.loading()) {
              return Center(child: CircularProgressIndicator());
            } else if (state.myRecipes!.isEmpty) {
              return Center(child: Text('No recipes yet'));
            } else {
              final recipes = state.myRecipes;
              return BuilGridView(recipes: recipes);
            }
          }),
          BlocBuilder<ProfileBloc, ProfileState>(builder: (context, state) {
            if (state.stateStatus == StateStatus.loading()) {
              return Center(child: CircularProgressIndicator());
            } else if (state.savedRedipes == []) {
              return Center(child: Text('No recipes yet'));
            } else {
              final recipes = state.savedRedipes;
              return BuilGridView(recipes: recipes);
            }
          }),
        ],
      ),
    );
  }

  TabBar _buildTabBar(List<Tab> category) {
    return TabBar(
      controller: tabController,
      tabAlignment: TabAlignment.fill,
      overlayColor: MaterialStateProperty.all(Colors.transparent),
      dividerColor: Colors.white,
      unselectedLabelStyle: AppTextStyle.poppins16.copyWith(
        color: AppColors.textFaded,
        height: 1.75,
      ),
      labelStyle: AppTextStyle.poppins16.copyWith(
        height: 1.75,
        fontWeight: FontWeight.w500,
        color: AppColors.black,
      ),
      indicator: UnderlineTabIndicator(
        insets: EdgeInsets.symmetric(horizontal: 16),
        borderSide: BorderSide(
          width: 1.5,
          color: AppColors.white,
        ),
      ),
      indicatorColor: AppColors.black,
      tabs: category,
    );
  }
}

import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neobis_flutter_cooks_corner_rodion/core/app/io_ui.dart';
import 'package:neobis_flutter_cooks_corner_rodion/core/app/router/app_routes.dart';
import 'package:neobis_flutter_cooks_corner_rodion/core/network/entity/state_status.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/authorization/presentation/bloc/authorization_bloc.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/home/presentation/widgets/build_grid_view%20copy.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/manage_profile/presentation/widgets/resend_email_widget.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/profile/domain/entity/profile_entity.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:neobis_flutter_cooks_corner_rodion/gen/strings.g.dart';

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
    context.read<ProfileBloc>().add(ProfileEvent.getProfile());
    tabController = TabController(
      length: Constants.tabsProfile.length,
      vsync: this,
    );
    tabController.addListener(() {
      if (tabController.index == 0) {
        context.read<ProfileBloc>().add(ProfileEvent.getMyRecipes());
      } else {
        context.read<ProfileBloc>().add(ProfileEvent.getSavedRecipes());
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: _buildAppBar(context),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildProfileInfo(),
          _buildTabBar(Constants.tabsProfile),
          Expanded(
            child: TabBarView(
              controller: tabController,
              children: [
                BlocBuilder<ProfileBloc, ProfileState>(
                  builder: (context, state) {
                    final recipes = state.myRecipes;
                    return recipes!.isNotEmpty
                        ? BuilGridViewCopy(recipes: recipes)
                        : Center(child: Text('No recipes yet'));
                  },
                ),
                BlocBuilder<ProfileBloc, ProfileState>(
                  builder: (context, state) {
                    final recipes = state.savedRedipes;
                    if (state.stateStatus == StateStatus.loading) {
                      return CircularProgressIndicator();
                    } else
                      return recipes!.isNotEmpty
                          ? BuilGridViewCopy(recipes: recipes)
                          : Center(child: Text('No recipes yet'));
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProfileInfo() {
    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (context, state) {
        if (state.stateStatus == StateStatus.loading()) {
          return Center(child: CircularProgressIndicator());
        } else if (state.stateStatus == StateStatus.failure(message: 'Failed to load profile')) {
          return Center(child: Text('Failed to load profile'));
        } else if (state.profileEntity == null) {
          return Center(child: CircularProgressIndicator());
        } else {
          final profile = state.profileEntity!;
          return Padding(
            padding: const EdgeInsets.only(top: 27, left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildGeneralInfo(profile),
                SizedBox(height: 10),
                Text(
                  state.profileEntity!.name!,
                  style: AppTextStyle.poppins16.copyWith(color: AppColors.black, height: 1.75),
                ),
                SizedBox(height: 5),
                Text(
                  profile.biography != null ? profile.biography! : 'No information',
                  style: AppTextStyle.poppins12.copyWith(
                    height: 1.41,
                  ),
                ),
                SizedBox(height: 10),
                _buildManageProfileButton(context),
              ],
            ),
          );
        }
      },
    );
  }

  Row _buildGeneralInfo(ProfileEntity profile) {
    return Row(
      children: [
        CircleAvatar(
          maxRadius: 44,
          backgroundImage: NetworkImage(
            profile.imageUrl!,
          ),
        ),
        SizedBox(width: 28),
        _buildAccountInfo(t.Recipe, profile.recipeQuantity!),
        SizedBox(width: 17),
        _buildAccountInfo(t.Followers, profile.followerQuantity!),
        SizedBox(width: 17),
        _buildAccountInfo(t.Following, profile.followingQuantity!)
      ],
    );
  }

  ElevatedButton _buildManageProfileButton(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(AppColors.primarySecondary),
        minimumSize: MaterialStateProperty.all<Size>(Size(double.infinity, 44)),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6.0),
          ),
        ),
      ),
      onPressed: () {
        AutoRouter.of(context).push(
          const ManageProfileRoute(),
        );
      },
      child: Text(
        t.ManageProfile,
        style: AppTextStyle.poppins14.copyWith(
          color: AppColors.primary,
          height: 1.21,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
        backgroundColor: AppColors.white,
        leadingWidth: 100,
        leading: Padding(
          padding: const EdgeInsets.only(
            left: 20,
            top: 14,
          ),
          child: Center(
              child: Text(
            t.Profile,
            style: AppTextStyle.poppinsProfile22,
          )),
        ),
        actions: [
          Padding(
              padding: const EdgeInsets.only(
                right: 20,
                top: 14,
              ),
              child: IconButton(
                  onPressed: () {
                    _buildShowDialog(context);
                  },
                  icon: Icon(Icons.logout)))
        ]);
  }

  Future<String?> _buildShowDialog(
    BuildContext context,
  ) {
    return showDialog<String>(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        content: Text(
          textAlign: TextAlign.center,
          t.wannaLeave,
          style: AppTextStyle.poppinsProfile22.copyWith(
            height: 1.5,
            color: AppColors.black,
          ),
        ),
        actions: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ShowModalButtons(
                onTap: () {
                  context.read<AuthorizationBloc>().add(
                        const AuthorizationEvent.signOut(),
                      );
                  AutoRouter.of(context).push(
                    const AuthorizationRoute(),
                  );
                },
                color: AppColors.primarySecondary,
                textColor: AppColors.black,
                text: t.Yes,
              ),
              ShowModalButtons(
                onTap: () {
                  Navigator.pop(context);
                },
                color: AppColors.primary,
                textColor: AppColors.white,
                text: t.No,
              ),
            ],
          )
        ],
        actionsAlignment: MainAxisAlignment.spaceBetween,
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

  Column _buildAccountInfo(String text, int number) {
    return Column(
      children: [
        Text(
          number.toString(),
          style: AppTextStyle.poppinsProfile20,
        ),
        Text(
          text,
          style: AppTextStyle.poppins14.copyWith(color: AppColors.textFaded),
        ),
      ],
    );
  }
}

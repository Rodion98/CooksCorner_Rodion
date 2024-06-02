import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neobis_flutter_cooks_corner_rodion/core/app/io_ui.dart';
import 'package:neobis_flutter_cooks_corner_rodion/core/app/router/app_routes.dart';
import 'package:neobis_flutter_cooks_corner_rodion/core/network/entity/state_status.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/profile/domain/entity/profile_entity.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:neobis_flutter_cooks_corner_rodion/gen/strings.g.dart';

class ProfileContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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

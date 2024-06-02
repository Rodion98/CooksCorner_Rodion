import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:auto_route/auto_route.dart';
import 'package:neobis_flutter_cooks_corner_rodion/core/app/io_ui.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/authorization/presentation/bloc/authorization_bloc.dart';
import 'package:neobis_flutter_cooks_corner_rodion/core/app/router/app_routes.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/manage_profile/presentation/widgets/resend_email_widget.dart';
import 'package:neobis_flutter_cooks_corner_rodion/gen/strings.g.dart';

class ProfileAppBarWithDialog extends StatelessWidget implements PreferredSizeWidget {
  ProfileAppBarWithDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
          ),
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(
            right: 20,
            top: 14,
          ),
          child: IconButton(
            onPressed: () {
              _showLogoutDialog(context);
            },
            icon: Icon(Icons.logout),
          ),
        ),
      ],
    );
  }

  Future<void> _showLogoutDialog(BuildContext context) async {
    await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
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
                    AutoRouter.of(context).replace(
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
            ),
          ],
          actionsAlignment: MainAxisAlignment.spaceBetween,
        );
      },
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

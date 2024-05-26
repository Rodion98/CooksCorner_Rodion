import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neobis_flutter_cooks_corner_rodion/core/app/io_ui.dart';
import 'package:neobis_flutter_cooks_corner_rodion/gen/strings.g.dart';

class ResendEmailWidget extends StatelessWidget {
  final String email;
  // final RegistrationModel registrationModel;
  const ResendEmailWidget({
    super.key,
    required this.email,
    // required this.registrationModel,
  });

  @override
  Widget build(
    BuildContext context,
  ) {
    return TextButton(
      onPressed: () {
        _buildShowDialog(context);
      },
      child: Text(
        t.AddRecipe,
        style: AppTextStyle.poppins16.copyWith(
          color: AppColors.iconFaded,
        ),
      ),
    );
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
          ShowModalButtons(
            onTap: () {},
            color: AppColors.primarySecondary,
            textColor: AppColors.black,
            text: t.Yes,
          ),
          ShowModalButtons(
            onTap: () {},
            color: AppColors.primary,
            textColor: AppColors.white,
            text: t.No,
          )
        ],
        actionsAlignment: MainAxisAlignment.spaceBetween,
      ),
    );
  }
}

class ShowModalButtons extends StatelessWidget {
  final VoidCallback? onTap;
  final String text;
  final Color color;
  final Color textColor;

  const ShowModalButtons({
    super.key,
    required this.color,
    required this.text,
    required this.textColor,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      child: Text(
        text,
        style: AppTextStyle.poppins14.copyWith(
          color: textColor,
        ),
      ),
      style: ButtonStyle(
        maximumSize: MaterialStatePropertyAll<Size>(
          Size(135, 45),
        ),
        minimumSize: MaterialStatePropertyAll<Size>(
          Size(115, 45),
        ),
        backgroundColor: MaterialStatePropertyAll<Color>(
          color,
        ),
        shape: MaterialStatePropertyAll<OutlinedBorder?>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}

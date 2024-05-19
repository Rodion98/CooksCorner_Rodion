import 'package:flutter/material.dart';
import 'package:neobis_flutter_cooks_corner_rodion/core/app/io_ui.dart';

class LevelWidget extends StatelessWidget {
  final String text;
  const LevelWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        padding: const EdgeInsets.symmetric(
          horizontal: 7,
          vertical: 2,
        ),
        decoration: BoxDecoration(color: AppColors.primarySecondary, borderRadius: BorderRadius.circular(100)),
        child: Text('Easy',
            style: AppTextStyle.poppins12.copyWith(
              color: AppColors.black,
            )),
      ),
    );
  }
}

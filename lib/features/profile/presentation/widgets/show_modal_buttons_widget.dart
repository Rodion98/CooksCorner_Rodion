import 'package:flutter/material.dart';
import 'package:neobis_flutter_cooks_corner_rodion/core/app/io_ui.dart';

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
        minimumSize: MaterialStatePropertyAll<Size>(
          Size(135, 45),
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

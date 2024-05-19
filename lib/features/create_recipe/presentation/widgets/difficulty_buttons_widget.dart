import 'package:flutter/material.dart';
import 'package:neobis_flutter_cooks_corner_rodion/core/app/io_ui.dart';
import 'package:neobis_flutter_cooks_corner_rodion/gen/strings.g.dart';

class DifficultyButtonWidget extends StatefulWidget {
  const DifficultyButtonWidget({
    super.key,
  });

  @override
  State<DifficultyButtonWidget> createState() => _DifficultyButtonWidgetState();
}

class _DifficultyButtonWidgetState extends State<DifficultyButtonWidget> {
  int selectedIndex = 0;

  void _onButtonPressed(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _buildButton(0, t.Easy, selectedIndex),
        SizedBox(width: 8),
        _buildButton(1, t.Medium, selectedIndex),
        SizedBox(width: 8),
        _buildButton(2, t.Hard, selectedIndex),
      ],
    );
  }

  ElevatedButton _buildButton(int index, String text, int selectedIndex) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(
          selectedIndex == index ? AppColors.primary : AppColors.inputFieldBackground,
        ),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              100,
            ),
          ),
        ),
      ),
      onPressed: () => _onButtonPressed(index),
      child: Text(text,
          style: AppTextStyle.poppins14.copyWith(
            color: selectedIndex == index ? AppColors.white : AppColors.black,
          )),
    );
  }
}

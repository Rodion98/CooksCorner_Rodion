import 'package:flutter/material.dart';
import 'package:neobis_flutter_cooks_corner_rodion/core/app/io_ui.dart';

class MeasurementDropdown extends StatefulWidget {
  @override
  _MeasurementDropdownState createState() => _MeasurementDropdownState();
}

class _MeasurementDropdownState extends State<MeasurementDropdown> {
  String? selectedValue;

  final List<String> items = ['kg', 'sp', 'gr', 'ml', 'l'];

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: Flexible(
        child: DropdownButton<String>(
          isDense: true,
          alignment: Alignment.bottomCenter,
          padding: EdgeInsets.only(left: 2),
          isExpanded: false,
          value: selectedValue,
          borderRadius: BorderRadius.circular(20),
          items: items.map((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(
                value,
                style: AppTextStyle.poppins14.copyWith(color: AppColors.iconFaded),
              ),
            );
          }).toList(),
          onChanged: (String? newValue) {
            setState(() {
              selectedValue = newValue;
            });
          },
        ),
      ),
    );
  }
}

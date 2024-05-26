import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neobis_flutter_cooks_corner_rodion/core/app/io_ui.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/search/presentation/bloc/search_bloc.dart';

class MyTextFieldhWidget extends StatefulWidget {
  final String? Function(String?)? validator;
  final String hintText;
  final TextEditingController controller;
  final String? title;

  final Function(String)? onChanged;
  final List<IconData>? suffixIcon;
  final double? width;

  const MyTextFieldhWidget({
    super.key,
    required this.hintText,
    required this.controller,
    this.validator,
    this.onChanged,
    this.suffixIcon,
    this.title,
    this.width,
  });

  @override
  State<MyTextFieldhWidget> createState() => _MyTextFieldhWidgetState();
}

class _MyTextFieldhWidgetState extends State<MyTextFieldhWidget> {
  @override
  void initState() {
    super.initState();
    widget.controller.addListener(_onTextChanged);
  }

  @override
  void dispose() {
    widget.controller.removeListener(_onTextChanged);
    super.dispose();
  }

  void _onTextChanged() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        widget.title != null
            ? Text(widget.title!,
                style: AppTextStyle.poppins12.copyWith(fontWeight: FontWeight.w500, color: AppColors.textFaded))
            : SizedBox(),
        SizedBox(
          height: 44,
          width: widget.width != null ? widget.width : MediaQuery.of(context).size.width,
          child: TextFormField(
            onChanged: widget.onChanged,
            decoration: InputDecoration(
              enabled: true,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(
                  AppProps.kBorderRadius42,
                ),
                borderSide: widget.controller.text.isEmpty
                    ? BorderSide.none
                    : BorderSide(
                        color: AppColors.primary,
                      ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(
                  AppProps.kBorderRadius42,
                ),
                borderSide: BorderSide(color: AppColors.primary), // Change this to your desired color
              ),
              errorStyle: AppTextStyle.poppins14.copyWith(
                color: AppColors.primarySecondary,
              ),
              fillColor: widget.controller.text.isEmpty ? AppColors.inputFieldBackground : AppColors.white,
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(
                  AppProps.kBorderRadius42,
                ),
              ),
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 19,
                vertical: 12,
              ),
              hintText: widget.hintText,
              labelStyle: AppTextStyle.poppins14,
              hintStyle: AppTextStyle.poppins14.copyWith(
                color: AppColors.iconFaded,
              ),
              suffixIcon: widget.suffixIcon != null
                  ? widget.controller.text.isEmpty
                      ? IconButton(
                          icon: Icon(
                            widget.suffixIcon![0],
                            color: AppColors.black,
                          ),
                          onPressed: () {},
                        )
                      : IconButton(
                          icon: Icon(
                            widget.suffixIcon![1],
                            color: AppColors.primary,
                          ),
                          onPressed: () {
                            if (!widget.controller.text.isEmpty) {
                              widget.controller.clear();
                              setState(() {});
                              context.read<SearchBloc>().add(
                                    ClearSearchResults(),
                                  );
                            }
                          },
                        )
                  : null,
            ),
            validator: widget.validator,
            controller: widget.controller,
          ),
        ),
      ],
    );
  }
}

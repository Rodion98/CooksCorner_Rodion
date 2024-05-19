part of io_ui;

class MyTextFieldWidget extends StatefulWidget {
  final String? Function(String?)? validator;
  final String hintText;
  final TextEditingController controller;
  final bool obscure;
  final String? error;
  final Function(String)? onChanged;
  final List<IconData> suffixIcon;
  final bool label;

  const MyTextFieldWidget({
    super.key,
    required this.hintText,
    required this.controller,
    this.obscure = false,
    this.error,
    this.validator,
    this.onChanged,
    required this.suffixIcon,
    required this.label,
  });

  @override
  State<MyTextFieldWidget> createState() => _MyTextFieldWidgetState();
}

class _MyTextFieldWidgetState extends State<MyTextFieldWidget> {
  bool _obscureText = true;

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
        widget.label
            ? Text(
                widget.hintText,
                style: AppTextStyle.poppins16,
              )
            : Container(),
        SizedBox(height: 5),
        TextFormField(
          onChanged: widget.onChanged,
          decoration: InputDecoration(
            // enabled: true,

            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(
                AppProps.kBorderRadius42,
              ),
              borderSide: BorderSide.none,
            ),
            errorStyle: AppTextStyle.poppins14.copyWith(color: AppColors.primarySecondary),
            fillColor: AppColors.inputFieldBackground,
            filled: true,
            border: OutlineInputBorder(
              borderSide: widget.controller.text.isEmpty
                  ? BorderSide.none
                  : BorderSide(
                      color: AppColors.primary,
                    ),
              borderRadius: BorderRadius.circular(
                AppProps.kBorderRadius42,
              ),
            ),
            contentPadding: const EdgeInsets.symmetric(horizontal: 19, vertical: 12),
            errorText: widget.error,
            hintText: widget.hintText,
            hintStyle: AppTextStyle.poppins14,
            suffixIcon: widget.obscure
                ? IconButton(
                    icon: Icon(
                      _obscureText ? widget.suffixIcon[0] : widget.suffixIcon[1],
                      color: Colors.grey,
                    ),
                    onPressed: () {
                      setState(() {
                        _obscureText = !_obscureText;
                      });
                    },
                  )
                : Icon(
                    widget.suffixIcon[0],
                    color: AppColors.iconFaded,
                  ),
          ),
          validator: widget.validator,
          controller: widget.controller,
          obscureText: widget.obscure ? _obscureText : false,
          obscuringCharacter: '*',
        ),
      ],
    );
  }
}

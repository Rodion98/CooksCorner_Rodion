part of io_ui;

class MyElevatedButtonWidget extends StatelessWidget {
  final VoidCallback? onTap;
  final String text;
  final IconData? icon;

  const MyElevatedButtonWidget({
    super.key,
    this.onTap,
    required this.text,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith<Color>((state) {
          if (state.contains(
            MaterialState.disabled,
          )) {
            return AppColors.inputFieldBackground;
          }
          return AppColors.primary;
        }),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              AppProps.kBorderRadius42,
            ),
          ),
        ),
        maximumSize: MaterialStatePropertyAll<Size>(Size(MediaQuery.of(context).size.width - 40, 44)),
        // minimumSize: MaterialStateProperty.resolveWith<Size>((state) {
        //   if (state.contains(
        //     MaterialState.disabled,
        //   )) {
        //     return Size(200, 44);
        //   }
        //   return Size(200, 44);
        // }),
      ),
      onPressed: onTap,
      child: Row(
        // crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (icon != null)
            Row(
              children: [
                Icon(
                  icon,
                  color: AppColors.white,
                ),
                SizedBox(width: 10),
              ],
            ),
          Text(
            text,
            style: TextStyle(
              height: 1.5,
              fontSize: 14,
              fontFamily: FontFamily.poppins,
              color: onTap != null ? AppColors.white : AppColors.iconFaded,
            ),
          ),
        ],
      ),
    );
  }
}

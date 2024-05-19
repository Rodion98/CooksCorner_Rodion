part of io_ui;

class AppSnackBar {
  static show({
    required BuildContext context,
    required String titleText,
    Duration duration = const Duration(
      seconds: 2,
    ),
    bool error = false,
  }) {
    ScaffoldMessenger.of(context)
        .showSnackBar(
          SnackBar(
            backgroundColor: AppColors.white,
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 15,
            ),
            elevation: 5,
            content: Text(
              t.Breakfast,
              style: AppTextStyle.poppins10.copyWith(
                color: AppColors.iconFaded,
              ),
            ),
            behavior: SnackBarBehavior.fixed,
            dismissDirection: DismissDirection.up,
            shape: RoundedRectangleBorder(
              side: const BorderSide(
                color: AppColors.primary,
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(
                AppProps.kMediumBorderRadius,
              ),
            ),
          ),
        )
        .closed
        .then((
      SnackBarClosedReason reason,
    ) {
      ScaffoldMessenger.of(context).removeCurrentSnackBar();
    });
  }
}

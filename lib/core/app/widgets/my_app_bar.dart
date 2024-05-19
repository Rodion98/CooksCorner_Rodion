part of io_ui;

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final String? text;
  const AppBarWidget({Key? key, this.text})
      : preferredSize = const Size.fromHeight(
          kToolbarHeight,
        ),
        super(key: key);

  @override
  final Size preferredSize;

  @override
  Widget build(
    BuildContext context,
  ) {
    return AppBar(
      backgroundColor: AppColors.white,
      centerTitle: true,
      title: text != null
          ? Text(
              text!,
              style: AppTextStyle.poppinsProfile20.copyWith(
                color: AppColors.inputText,
              ),
            )
          : null,
      leading: IconButton(
        icon: const Icon(
          Icons.arrow_back,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}

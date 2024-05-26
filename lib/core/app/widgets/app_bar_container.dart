part of io_ui;

class ColoredContainer extends StatelessWidget {
  final String firstString;
  final String secondString;
  final String thirdString;
  final double height;
  const ColoredContainer(
    this.firstString,
    this.secondString,
    this.thirdString,
    this.height,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.only(
        left: 20,
      ),
      width: double.infinity,
      height: MediaQuery.of(context).size.height * height + MediaQuery.of(context).padding.top,
      decoration: BoxDecoration(
        color: AppColors.primary,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: firstString,
                  style: AppTextStyle.poppins25,
                ),
                TextSpan(
                  text: secondString,
                  style: AppTextStyle.poppins25.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          RichText(
              text: TextSpan(children: [
            TextSpan(
              text: thirdString,
              style: AppTextStyle.poppins25,
            ),
          ]))
        ],
      ),
    );
  }
}

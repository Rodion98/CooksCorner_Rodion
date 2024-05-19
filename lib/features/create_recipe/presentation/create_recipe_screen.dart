import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:neobis_flutter_cooks_corner_rodion/core/app/io_ui.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/create_recipe/presentation/widgets/difficulty_buttons_widget.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/create_recipe/presentation/widgets/widget.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/search/presentation/widgets/my_text_filed.dart';
import 'package:neobis_flutter_cooks_corner_rodion/gen/assets.gen.dart';
import 'package:neobis_flutter_cooks_corner_rodion/gen/strings.g.dart';

@RoutePage()
class CreateRecipeScreen extends StatefulWidget {
  const CreateRecipeScreen({super.key});

  @override
  State<CreateRecipeScreen> createState() => _CreateRecipeScreenState();
}

class _CreateRecipeScreenState extends State<CreateRecipeScreen> with TickerProviderStateMixin {
  File? _image;
  final name = TextEditingController();
  final description = TextEditingController();
  final ingredient = TextEditingController();
  final time = TextEditingController();
  late TabController tabController;
  int currentDifficulty = 0;

  @override
  void initState() {
    super.initState();
    tabController = TabController(
      length: Constants.tabsCreate.length,
      vsync: this,
    );
  }

  @override
  void dispose() {
    name.dispose();
    description.dispose();
    ingredient.dispose();
    time.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBarWidget(text: t.CreateRecipe),
      resizeToAvoidBottomInset: false,
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buidPhotoLoad(),
            SizedBox(height: AppProps.kPageMargin),
            MyTextFieldhWidget(
              controller: name,
              hintText: t.NameYourRecipe,
              title: t.NameYourRecipe,
            ),
            SizedBox(height: AppProps.kPageMargin),
            MyTextFieldhWidget(
              controller: description,
              hintText: t.Description,
              title: t.AddDescription,
            ),
            SizedBox(height: AppProps.kPageMargin),
            _buildIngridients(context),
            SizedBox(height: AppProps.kPageMargin),
            _buildDifficultyButtons(),
            SizedBox(height: AppProps.kPageMargin),
            MyTextFieldhWidget(
              controller: time,
              hintText: t.HowMuchTimeNeed,
              title: t.time,
            ),
            // DropdownExample()
            SizedBox(height: AppProps.kPageMargin),
            _buildDropdownMenu(context),
            Spacer(),
            MyElevatedButtonWidget(text: t.CreateARecipe)
          ],
        ),
      )),
    );
  }

  Column _buildDifficultyButtons() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          t.Difficulty,
          style: AppTextStyle.poppins12.copyWith(
            fontWeight: FontWeight.w500,
            color: AppColors.textFaded,
          ),
        ),
        SizedBox(
          height: 4,
        ),
        DifficultyButtonWidget(),
      ],
    );
  }

  Column _buildDropdownMenu(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          t.CategoryOfMeal,
          style: AppTextStyle.poppins12.copyWith(color: AppColors.textFaded, fontWeight: FontWeight.w500),
        ),
        SizedBox(
          height: 8,
        ),
        DropdownMenu(
          dropdownMenuEntries: MealLabel.values.map<DropdownMenuEntry<MealLabel>>((MealLabel label) {
            return DropdownMenuEntry<MealLabel>(
              value: label,
              label: label.label,
              style: MenuItemButton.styleFrom(
                foregroundColor: label.color,
              ),
            );
          }).toList(),
          textStyle: AppTextStyle.poppins14.copyWith(
            color: AppColors.iconFaded,
          ),
          initialSelection: MealLabel.Breakfast,
          requestFocusOnTap: true,
          width: MediaQuery.of(context).size.width - 40,
          inputDecorationTheme: InputDecorationTheme(
            contentPadding: EdgeInsets.only(left: 20),
            disabledBorder: OutlineInputBorder(),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(42),
              borderSide: BorderSide.none,
            ),
            filled: true,
            fillColor: AppColors.inputFieldBackground,
          ),
          menuStyle: MenuStyle(
              backgroundColor: MaterialStatePropertyAll(AppColors.inputFieldBackground),
              shape: MaterialStatePropertyAll(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                  side: BorderSide.none,
                ),
              )),
        ),
      ],
    );
  }

  Row _buildIngridients(BuildContext context) {
    return Row(
      children: [
        MyTextFieldhWidget(
          controller: ingredient,
          hintText: t.IngredientName,
          title: t.AddIngredient,
          width: MediaQuery.of(context).size.width / 2,
        ),
        SizedBox(width: 6),
        Expanded(
          child: Container(
            margin: EdgeInsets.only(top: 20),
            height: 44,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: AppColors.inputFieldBackground,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 30,
                  child: TextField(
                    style: AppTextStyle.poppins14.copyWith(color: AppColors.iconFaded),
                    cursorHeight: 14,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      counterText: '',
                      isDense: true,
                      contentPadding: EdgeInsets.zero,
                    ),
                    maxLength: 3,
                    // textAlign: TextAlign.left,
                    keyboardType: TextInputType.number,
                  ),
                ),
                MeasurementDropdown(),
              ],
            ),
          ),
        ),
        SizedBox(width: 6),
        GestureDetector(
          onTap: () {},
          child: Container(
            margin: EdgeInsets.only(top: 20),
            height: 44,
            width: 44,
            decoration: BoxDecoration(color: AppColors.primary, borderRadius: BorderRadius.circular(100)),
            child: Icon(
              Icons.add,
              color: AppColors.white,
            ),
          ),
        )
      ],
    );
  }

  GestureDetector _buidPhotoLoad() {
    return GestureDetector(
      onTap: _pickImage,
      child: Container(
        child: Row(
          children: [
            SizedBox(width: 19),
            _image != null
                ? ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.file(
                      _image!,
                      height: 80,
                      width: 80,
                      fit: BoxFit.fill,
                    ),
                  )
                : SizedBox(
                    height: 48,
                    width: 48,
                    child: Assets.images.photo.image(),
                  ),
            SizedBox(width: 10),
            _image != null
                ? Text(
                    t.ChangepPhoto,
                    style: AppTextStyle.poppins14.copyWith(
                      color: AppColors.primary,
                      decoration: TextDecoration.underline,
                      decorationColor: AppColors.primary,
                      decorationThickness: 1,
                      // decorationStyle: TextDecorationStyle.wavy
                    ),
                  )
                : Text(
                    t.UploadFinalPhotoDish,
                    style: AppTextStyle.poppins14,
                  )
          ],
        ),
        height: 93,
        width: double.infinity,
        decoration: BoxDecoration(
          border: _image != null ? Border.all(color: AppColors.iconFaded) : null,
          color: _image != null ? AppColors.white : AppColors.inputFieldBackground,
          borderRadius: BorderRadius.circular(18),
        ),
      ),
    );
  }

  Future<void> _pickImage() async {
    final ImagePicker picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }
}

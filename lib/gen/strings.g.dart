/// Generated file. Do not edit.
///
/// Original: assets/i18n
/// To regenerate, run: `dart run slang`
///
/// Locales: 1
/// Strings: 67
///
/// Built on 2024-05-18 at 08:21 UTC

// coverage:ignore-file
// ignore_for_file: type=lint

import 'package:flutter/widgets.dart';
import 'package:slang/builder/model/node.dart';
import 'package:slang_flutter/slang_flutter.dart';
export 'package:slang_flutter/slang_flutter.dart';

const AppLocale _baseLocale = AppLocale.en;

/// Supported locales, see extension methods below.
///
/// Usage:
/// - LocaleSettings.setLocale(AppLocale.en) // set locale
/// - Locale locale = AppLocale.en.flutterLocale // get flutter locale from enum
/// - if (LocaleSettings.currentLocale == AppLocale.en) // locale check
enum AppLocale with BaseAppLocale<AppLocale, Translations> {
	en(languageCode: 'en', build: Translations.build);

	const AppLocale({required this.languageCode, this.scriptCode, this.countryCode, required this.build}); // ignore: unused_element

	@override final String languageCode;
	@override final String? scriptCode;
	@override final String? countryCode;
	@override final TranslationBuilder<AppLocale, Translations> build;

	/// Gets current instance managed by [LocaleSettings].
	Translations get translations => LocaleSettings.instance.translationMap[this]!;
}

/// Method A: Simple
///
/// No rebuild after locale change.
/// Translation happens during initialization of the widget (call of t).
/// Configurable via 'translate_var'.
///
/// Usage:
/// String a = t.someKey.anotherKey;
/// String b = t['someKey.anotherKey']; // Only for edge cases!
Translations get t => LocaleSettings.instance.currentTranslations;

/// Method B: Advanced
///
/// All widgets using this method will trigger a rebuild when locale changes.
/// Use this if you have e.g. a settings page where the user can select the locale during runtime.
///
/// Step 1:
/// wrap your App with
/// TranslationProvider(
/// 	child: MyApp()
/// );
///
/// Step 2:
/// final t = Translations.of(context); // Get t variable.
/// String a = t.someKey.anotherKey; // Use t variable.
/// String b = t['someKey.anotherKey']; // Only for edge cases!
class TranslationProvider extends BaseTranslationProvider<AppLocale, Translations> {
	TranslationProvider({required super.child}) : super(settings: LocaleSettings.instance);

	static InheritedLocaleData<AppLocale, Translations> of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context);
}

/// Method B shorthand via [BuildContext] extension method.
/// Configurable via 'translate_var'.
///
/// Usage (e.g. in a widget's build method):
/// context.t.someKey.anotherKey
extension BuildContextTranslationsExtension on BuildContext {
	Translations get t => TranslationProvider.of(this).translations;
}

/// Manages all translation instances and the current locale
class LocaleSettings extends BaseFlutterLocaleSettings<AppLocale, Translations> {
	LocaleSettings._() : super(utils: AppLocaleUtils.instance);

	static final instance = LocaleSettings._();

	// static aliases (checkout base methods for documentation)
	static AppLocale get currentLocale => instance.currentLocale;
	static Stream<AppLocale> getLocaleStream() => instance.getLocaleStream();
	static AppLocale setLocale(AppLocale locale, {bool? listenToDeviceLocale = false}) => instance.setLocale(locale, listenToDeviceLocale: listenToDeviceLocale);
	static AppLocale setLocaleRaw(String rawLocale, {bool? listenToDeviceLocale = false}) => instance.setLocaleRaw(rawLocale, listenToDeviceLocale: listenToDeviceLocale);
	static AppLocale useDeviceLocale() => instance.useDeviceLocale();
	@Deprecated('Use [AppLocaleUtils.supportedLocales]') static List<Locale> get supportedLocales => instance.supportedLocales;
	@Deprecated('Use [AppLocaleUtils.supportedLocalesRaw]') static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
	static void setPluralResolver({String? language, AppLocale? locale, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver}) => instance.setPluralResolver(
		language: language,
		locale: locale,
		cardinalResolver: cardinalResolver,
		ordinalResolver: ordinalResolver,
	);
}

/// Provides utility functions without any side effects.
class AppLocaleUtils extends BaseAppLocaleUtils<AppLocale, Translations> {
	AppLocaleUtils._() : super(baseLocale: _baseLocale, locales: AppLocale.values);

	static final instance = AppLocaleUtils._();

	// static aliases (checkout base methods for documentation)
	static AppLocale parse(String rawLocale) => instance.parse(rawLocale);
	static AppLocale parseLocaleParts({required String languageCode, String? scriptCode, String? countryCode}) => instance.parseLocaleParts(languageCode: languageCode, scriptCode: scriptCode, countryCode: countryCode);
	static AppLocale findDeviceLocale() => instance.findDeviceLocale();
	static List<Locale> get supportedLocales => instance.supportedLocales;
	static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
}

// translations

// Path: <root>
class Translations implements BaseTranslations<AppLocale, Translations> {
	/// Returns the current translations of the given [context].
	///
	/// Usage:
	/// final t = Translations.of(context);
	static Translations of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context).translations;

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	Translations.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final Translations _root = this; // ignore: unused_field

	// Translations
	String get welcomeBack => 'Welcome Back\nTo ';
	String get CooksCorner => ' CooksCorner';
	String get Gmail => 'Gmail';
	String get Password => 'Password';
	String get SignIn => 'Sign In';
	String get Signup => 'I don’t have an account? Sign Up Now';
	String get SignupTitle1 => 'Sign up for delicious';
	String get SignupTitle2 => ' Discoveries!';
	String get HaveAnAccount => 'Already have an account? Sign In Now';
	String get Name => 'Name';
	String get RePassword => 'Re-Password';
	String get Entername => 'Enter your name';
	String get EnterGmail => 'Enter your Gmail';
	String get ReEnteryourPassword => 'Re-Enter your Password';
	String get SignUp => 'Sign Up';
	String get Profile => 'Profile';
	String get Recipe => 'Recipe';
	String get Followers => 'Followers';
	String get Following => 'Following';
	String get Follow => 'Follow';
	String get ManageProfile => 'Manage Profile';
	String get MyRecipe => 'My recipe';
	String get SavedRecipe => 'Saved recipe';
	String get ChangeName => 'Change your name';
	String get ChangeBio => 'Change your bio';
	String get ChangeYourPhoto => 'Change your photo';
	String get UploadPhoto => 'Upload a new photo';
	String get Savechanges => 'Save changes';
	String get ChangepPhoto => 'Change photo';
	String get wannaLeave => 'Are you sure you wanna leave?';
	String get No => 'No';
	String get Yes => 'Yes';
	String get Hi => 'Hi,';
	String get UIDesignerCook => 'UI Designer & Cook';
	String get Category => 'Category';
	String get Breakfast => 'Breakfast';
	String get Lunch => 'Lunch';
	String get Dinner => 'Dinner';
	String get min => 'min';
	String get by => 'by';
	String get likes => 'likes';
	String get Description => 'Description';
	String get Ingredients => 'Ingredients';
	String get WhatToday => 'What to eat\ntoday?';
	String get Chefs => 'Chefs';
	String get Recipes => 'Recipes';
	String get SearchRecipes => 'Search recipes';
	String get AddRecipe => 'Add your recipe';
	String get CreateRecipe => 'Create recipe';
	String get AddRecipePhoto => 'Add a recipe photo';
	String get UploadFinalPhotoDish => 'Upload a final photo of your dish';
	String get NameYourRecipe => 'Name your recipe';
	String get AddDescription => 'Add a description';
	String get AddIngredient => 'Add an ingredient';
	String get IngredientName => 'Ingredient name';
	String get kg => 'kg';
	String get Difficulty => 'Difficulty';
	String get Easy => 'Easy';
	String get Medium => 'Medium';
	String get Hard => 'Hard';
	String get CategoryOfMeal => 'Category of meal';
	String get time => 'Preparation time';
	String get HowMuchTimeNeed => 'How much time does it need?(minutes)';
	String get CreateARecipe => 'Create a recipe';
	String get View => 'View';
	String get SearchResults => 'Search results';
	String get NoResultsFound => 'No results found';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.

extension on Translations {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'welcomeBack': return 'Welcome Back\nTo ';
			case 'CooksCorner': return ' CooksCorner';
			case 'Gmail': return 'Gmail';
			case 'Password': return 'Password';
			case 'SignIn': return 'Sign In';
			case 'Signup': return 'I don’t have an account? Sign Up Now';
			case 'SignupTitle1': return 'Sign up for delicious';
			case 'SignupTitle2': return ' Discoveries!';
			case 'HaveAnAccount': return 'Already have an account? Sign In Now';
			case 'Name': return 'Name';
			case 'RePassword': return 'Re-Password';
			case 'Entername': return 'Enter your name';
			case 'EnterGmail': return 'Enter your Gmail';
			case 'ReEnteryourPassword': return 'Re-Enter your Password';
			case 'SignUp': return 'Sign Up';
			case 'Profile': return 'Profile';
			case 'Recipe': return 'Recipe';
			case 'Followers': return 'Followers';
			case 'Following': return 'Following';
			case 'Follow': return 'Follow';
			case 'ManageProfile': return 'Manage Profile';
			case 'MyRecipe': return 'My recipe';
			case 'SavedRecipe': return 'Saved recipe';
			case 'ChangeName': return 'Change your name';
			case 'ChangeBio': return 'Change your bio';
			case 'ChangeYourPhoto': return 'Change your photo';
			case 'UploadPhoto': return 'Upload a new photo';
			case 'Savechanges': return 'Save changes';
			case 'ChangepPhoto': return 'Change photo';
			case 'wannaLeave': return 'Are you sure you wanna leave?';
			case 'No': return 'No';
			case 'Yes': return 'Yes';
			case 'Hi': return 'Hi,';
			case 'UIDesignerCook': return 'UI Designer & Cook';
			case 'Category': return 'Category';
			case 'Breakfast': return 'Breakfast';
			case 'Lunch': return 'Lunch';
			case 'Dinner': return 'Dinner';
			case 'min': return 'min';
			case 'by': return 'by';
			case 'likes': return 'likes';
			case 'Description': return 'Description';
			case 'Ingredients': return 'Ingredients';
			case 'WhatToday': return 'What to eat\ntoday?';
			case 'Chefs': return 'Chefs';
			case 'Recipes': return 'Recipes';
			case 'SearchRecipes': return 'Search recipes';
			case 'AddRecipe': return 'Add your recipe';
			case 'CreateRecipe': return 'Create recipe';
			case 'AddRecipePhoto': return 'Add a recipe photo';
			case 'UploadFinalPhotoDish': return 'Upload a final photo of your dish';
			case 'NameYourRecipe': return 'Name your recipe';
			case 'AddDescription': return 'Add a description';
			case 'AddIngredient': return 'Add an ingredient';
			case 'IngredientName': return 'Ingredient name';
			case 'kg': return 'kg';
			case 'Difficulty': return 'Difficulty';
			case 'Easy': return 'Easy';
			case 'Medium': return 'Medium';
			case 'Hard': return 'Hard';
			case 'CategoryOfMeal': return 'Category of meal';
			case 'time': return 'Preparation time';
			case 'HowMuchTimeNeed': return 'How much time does it need?(minutes)';
			case 'CreateARecipe': return 'Create a recipe';
			case 'View': return 'View';
			case 'SearchResults': return 'Search results';
			case 'NoResultsFound': return 'No results found';
			default: return null;
		}
	}
}

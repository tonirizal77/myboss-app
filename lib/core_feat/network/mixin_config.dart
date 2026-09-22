part of 'configs.dart';

mixin class SettingLanguage {
  Future<void> setLang(BuildContext context, String langCode) async {
    PrintHelper.printWhite("___setting language: $langCode");

    /// 1-Set locale
    await context.setLocale(Locale(langCode));
    await getIt<SharedPreferencesHelper>().setLangApp(context, langCode);

    /// 2-Update locate at Config Server
    ConfigServer.setLocale = langCode;

    /// 3-Reset Base Url
    ConfigServer.resetDioBaseUrl();

    /// 4-Refresh the app
    final binding = WidgetsFlutterBinding.ensureInitialized();
    await binding.performReassemble();
  }
}

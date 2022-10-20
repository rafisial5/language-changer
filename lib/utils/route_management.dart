import 'package:get/get.dart';
import 'package:language_switch/utils/bindings.dart';
import 'package:language_switch/utils/constants.dart';
import 'package:language_switch/view/language_view.dart';

class RouteManagement{
  static List<GetPage> getPages() {
    return [
      GetPage(
          name: kHomepage,
          page: () => const LanguageScreen(),
          binding: ScreenBindings()),
    ];
  }
}
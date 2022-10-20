import 'package:get/get.dart';
import 'package:language_switch/controller/language_controller.dart';

class ScreenBindings extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => LanguageController());
  }

}
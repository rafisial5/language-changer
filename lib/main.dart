import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:language_switch/translation_file/translations.dart';
import 'package:language_switch/utils/bindings.dart';
import 'package:language_switch/utils/constants.dart';
import 'package:language_switch/utils/get_storage.dart';
import 'package:language_switch/utils/route_management.dart';



void main() async {
 await GetStorage.init();
 runApp(GetMaterialApp(
  initialRoute: kHomepage,
  initialBinding: ScreenBindings(),
  getPages: RouteManagement.getPages(),
  debugShowCheckedModeBanner: false,
  translations: TranslationFile(),
  locale: const Locale('en', 'US'),
  onInit: () async {
    if(box.read('urdu') != null && box.read('urdu') ==  true){
      englishLanguage.value = false;
      sindhiLanguage.value = false;
      urduLanguage.value = true;
      Get.updateLocale(const Locale("ur", "PK"),);
      }else if(box.read('sindhi') != null && box.read('sindhi') ==  true){
      sindhiLanguage.value = true;
      urduLanguage.value = false;
      englishLanguage.value = false;
      Get.updateLocale(const Locale("si", "PK"),);
    }else if(box.read('english') != null && box.read('english') == true){
      sindhiLanguage.value = false;
      urduLanguage.value = false;
      englishLanguage.value = true;
      Get.updateLocale(const Locale("en", "US"),);
    }
    }
 ));
}

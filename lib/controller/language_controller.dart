import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:language_switch/utils/get_storage.dart';

class LanguageController extends GetxController{


  void changeLanguageMethod(){
    if(englishLanguage.isTrue){
      Get.updateLocale(const Locale("en", "US"),);
    }else if(urduLanguage.isTrue){
      Get.updateLocale(const Locale("ur", "PK"),);
    }else if(sindhiLanguage.isTrue){
      Get.updateLocale(const Locale("si", "PK"),);
    }
  }

  void englishCheck(){
   // Get.updateLocale(const Locale("en", "US"),);
    englishLanguage.value=true;
    urduLanguage.value = false;
    sindhiLanguage.value = false;
    box.write('urdu',  urduLanguage.value);
    box.write('sindhi', sindhiLanguage.value);
    box.write('english', englishLanguage.value);
  }
  void urduCheck(){
   // Get.updateLocale(const Locale("ur", "PK"),);
    urduLanguage.value = true;
    sindhiLanguage.value = false;
    englishLanguage.value = false;
    box.write('urdu',  urduLanguage.value);
    box.write('sindhi', sindhiLanguage.value);
    box.write('english', englishLanguage.value);
  }
  void sindhiCheck(){
   // Get.updateLocale(const Locale("si", "PK"),);
    sindhiLanguage.value = true;
    englishLanguage.value = false;
    urduLanguage.value = false;
    box.write('urdu',  urduLanguage.value);
    box.write('sindhi', sindhiLanguage.value);
    box.write('english', englishLanguage.value);
  }

 /* void checkBoxOnChange(){
  *//*  box.writeIfNull('urdu', false);
    box.writeIfNull('sindhi', false);
    box.writeIfNull('english', true);*//*
    if(englishLanguage.isTrue && (urduLanguage.isFalse || sindhiLanguage.isFalse)){
        Get.updateLocale(const Locale("en", "US"),);
        print('--------------------->>>English: ${englishLanguage.isTrue}');
        englishLanguage.value=true;
        urduLanguage.value = false;
        sindhiLanguage.value = false;

    }else if(urduLanguage.isFalse && (englishLanguage.isTrue || sindhiLanguage.isTrue)){
        Get.updateLocale(const Locale("ur", "PK"),);
        print('--------------------->>>Urdu: ${urduLanguage.isTrue}');
        urduLanguage.value = true;
        sindhiLanguage.value = false;
        englishLanguage.value = false;

    }else if((!urduLanguage.isTrue && !englishLanguage.isTrue)){
        Get.updateLocale(const Locale("si", "PK"),);
        print('--------------------->>>Sindhi: ${sindhiLanguage.isTrue}');
        sindhiLanguage.value = true;
        englishLanguage.value = false;
        urduLanguage.value = false;
    }
    box.write('urdu',  urduLanguage.value);
    box.write('sindhi', sindhiLanguage.value);
    box.write('english', englishLanguage.value);
  }*/

}
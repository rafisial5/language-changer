
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:language_switch/controller/language_controller.dart';

import '../utils/get_storage.dart';

class LanguageScreen extends GetView<LanguageController> {
  const LanguageScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title:  Text("title".tr, style: const TextStyle(color: Colors.black),),
        backgroundColor: Colors.grey.shade200,
        elevation: 0,
        actions:  [GestureDetector(
          onTap:(){
            _settingModalBottomSheet(context);
          },
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Icon(Icons.settings, color: Colors.black,),
          ),
        )],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 15),
          child:  Column(
              children: [
                customTextField("name".tr, "your_name".tr ),
                const SizedBox(height: 10,),
                customTextField("father_name".tr, "your_father_name".tr),
                const SizedBox(height: 10,),
                customTextField("age".tr, "your_age".tr),
                const SizedBox(height: 10,),
                customTextField("gender".tr, "your_gender".tr),
                const SizedBox(height: 50,),
                ElevatedButton(
                    onPressed: (){},
                    child:  Text(
                      "submit".tr,
                      style: const TextStyle(
                        fontSize: 16
                      ),
                    ),
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xff101cc7),
                    minimumSize: const Size(500, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    )
                  )
                ),
                const SizedBox(height: 10,),
              ],
            ),
        ),
      ),
    );
  }
  void _settingModalBottomSheet(context){
    showModalBottomSheet(
        backgroundColor: Colors.white,
        context: context,
        builder: (BuildContext bc){
          return SizedBox(
            height: 300,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                  children: [
                    const SizedBox(height: 10,),
                    Obx(
                          () => checkBoxItem(
                          ontapMethod: controller.englishCheck,
                          languageTitle: "English",
                          languageValue: englishLanguage.value),
                    ),
                    const SizedBox(height: 10,),
                    Obx(
                          () => checkBoxItem(
                          ontapMethod: controller.urduCheck,
                          languageTitle: "اردو",
                          languageValue: urduLanguage.value),
                    ),
                    const SizedBox(height: 10,),
                    Obx(
                          () => checkBoxItem(
                          ontapMethod: controller.sindhiCheck,
                          languageTitle:"سنڌي" ,
                          languageValue: sindhiLanguage.value),
                    ),
                    const SizedBox(height: 10,),
                    ElevatedButton(
                      onPressed: (){
                        controller.changeLanguageMethod();
                      },
                      child:  Text("change_language".tr,
                        style: const TextStyle(
                          fontSize: 16,
                        ),),
                      style: ElevatedButton.styleFrom(
                        primary: const Color(0xff101cc7),
                          minimumSize: const Size(500, 50),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(7),
                          )
                      ),
                    ),
                  ]
              ),
            ),
          );
        }
    );

  }
  Widget checkBoxItem({required Function ontapMethod, required String languageTitle, required bool languageValue }){
    return GestureDetector(
      onTap: (){
       ontapMethod();
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
        decoration: BoxDecoration(
          color: Colors.blue.withOpacity(0.05),
          borderRadius: BorderRadius.circular(7),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              languageTitle,
              style: const TextStyle(
              fontSize: 18,
            ),),
            const Spacer(),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
              ),
              child: Icon( languageValue ?
              Icons.done : null,
                color: Colors.blueAccent,
              ),
            )
          ],
        ),
      ),
    );
  }
  Widget customTextField(String nameTitle, String nameHint){
    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: Colors.blue.withOpacity(0.05),
borderRadius: BorderRadius.circular(7)
      ),
      child: Column(

        mainAxisAlignment:  MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         // Text(nameTitle),
          TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: nameHint,
              contentPadding: const EdgeInsets.symmetric(horizontal: 5, )
            ),
          ),
        ],
      ),
    );
  }
}

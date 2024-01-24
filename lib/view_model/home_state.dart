import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class homeState extends GetxController {
  // int count = 0;
  RxInt count = 1.obs;
  incrementCount() {
    count.value++;
    print(count.value);
  }

  RxBool isDark = true.obs;
  onThemeChanged(val) {
    isDark.value = val;
    isDark.value == true
        ? Get.changeTheme(ThemeData.dark())
        : Get.changeTheme(ThemeData.light());
  }

  RxDouble sliderValue = 0.0.obs;
  onSliderValueChanged(val) {
    sliderValue.value = val;
  }

  RxString? imagePath;
  Future pickImage(ImageSource source) async {
    try {
      ImagePicker _imagePicker = ImagePicker();
      final image = await _imagePicker.pickImage(source: source);
      imagePath!.value = image!.path.toString();
    } catch (e) {
      print(e);
    }
  }
}

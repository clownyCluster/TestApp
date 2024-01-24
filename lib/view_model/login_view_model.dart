import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:getx_tuts/data/network/network_api_services.dart';
import 'package:getx_tuts/repository/login_repository.dart';
import 'package:getx_tuts/resources/app_url/app_url.dart';
import 'package:getx_tuts/resources/getx_localization/language_constant.dart';
import 'package:getx_tuts/resources/routes/app_route.dart';
import 'package:getx_tuts/resources/routes/route_name.dart';

class LoginViewModel extends GetxController {
  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;

  final loginFocusNode = FocusNode().obs;
  final passwordFocusNode = FocusNode().obs;

  RxBool isLoading = false.obs;
  setLoading(val) {
    isLoading.value = val;
  }

  final _api = LoginRepository();

  login() {
    print('View Model ko login chalyo');
    Map data = {
      'email': emailController.value.text,
      'password': passwordController.value.text,
    };
    _api.login(data).then((value) {
      Get.snackbar('SUCCESS', LanguageConstants.loginSuccessMessage.tr);
    }).onError((error, stackTrace) {
      print(stackTrace);
      // Get.snackbar(LanguageConstants.loginFailedMessage.tr, error.toString());
    });
  }
}

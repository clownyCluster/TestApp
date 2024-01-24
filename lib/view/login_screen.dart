import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tuts/resources/getx_localization/language_constant.dart';
import 'package:getx_tuts/utils/constant.dart';
import 'package:getx_tuts/utils/helpers/helpers.dart';
import 'package:getx_tuts/utils/widgets/k_button.dart';
import 'package:getx_tuts/utils/widgets/k_text_field.dart';
import 'package:getx_tuts/view_model/login_view_model.dart';

import '../utils/widgets/k_text_form_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final state = Get.put(LoginViewModel());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          padding: kStandardPadding(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(child: Text('login_instruction'.tr)),
              sHeightSpan,
              Text(LanguageConstants.email.tr),
              KTextFormField(
                hint: LanguageConstants.emailHint.tr,
                controller: state.emailController.value,
              ),
              sHeightSpan,
              Text(LanguageConstants.pass.tr),
              KTextFormField(
                controller: state.passwordController.value,
                hint: LanguageConstants.passHint.tr,
              ),
              mHeightSpan,
              Obx(() => KButton(
                    child: Text(
                      LanguageConstants.login.tr,
                      style: kkWhiteBoldTextStyle(context),
                    ),
                    onPressed: () {
                      state.login();
                    },
                    size: ButtonSize.medium,
                    // variant: 'ghost',
                    borderColor: primaryColor,
                    bordered: true,
                    radius: 15,
                    isBusy: state.isLoading.value,
                  ))
            ],
          ),
        ),
        Positioned(
            bottom: 10,
            right: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                    onTap: () {
                      Get.updateLocale(Locale('en', 'US'));
                    },
                    child: Text(
                      'English',
                      style: TextStyle(
                          color: primaryColor,
                          decoration: TextDecoration.underline),
                    )),
                minWidthSpan(),
                InkWell(
                    onTap: () {
                      Get.updateLocale(Locale('np', 'NP'));

                    },
                    child: Text(
                      'नेपाली',
                      style: TextStyle(
                          color: primaryColor,
                          decoration: TextDecoration.underline),
                    )),
              ],
            ))
      ],
    ));
  }
}

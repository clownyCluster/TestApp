import 'package:get/get.dart';
import 'package:getx_tuts/resources/getx_localization/language_constant.dart';

class Languages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          LanguageConstants.emailHint: 'Enter your email',
          LanguageConstants.passHint: 'Enter your password',
          LanguageConstants.email: 'Email',
          LanguageConstants.pass: 'Password',
          LanguageConstants.login: 'Login',
          LanguageConstants.loginSuccessMessage: 'Your login was successful',
          LanguageConstants.loginFailedMessage: 'Your login failed',
          LanguageConstants.home: 'Home Page',
          LanguageConstants.darkMode: 'Dark Mode',
          LanguageConstants.loginInstruction: 'Please login to proceed',
          LanguageConstants.language: 'Language',
          LanguageConstants.preferedLanguage: 'English',


        },
        'np_NP': {
          LanguageConstants.emailHint: 'आफ्नो इमेल प्रविष्ट गर्नुहोस्',
          LanguageConstants.passHint: 'आफ्नो पासवर्ड प्रविष्ट गर्नुहोस्',
          LanguageConstants.email: 'इमेल',
          LanguageConstants.pass: 'पासवर्ड',
          LanguageConstants.login: 'लग - इन',
          LanguageConstants.loginSuccessMessage: 'तपाईको लगइन सफल भयो',
          LanguageConstants.loginFailedMessage: 'तपाईंको लगइन असफल भयो',
          LanguageConstants.home: 'गृह पृष्ठ',
          LanguageConstants.darkMode: 'अँध्यारो मोड',
          LanguageConstants.loginInstruction: 'कृपया अगाडि बढ्न लगइन गर्नुहोस्',
          LanguageConstants.language: 'भाषा',
          LanguageConstants.preferedLanguage: 'नेपाली',


        }
      };
}

import 'package:babycare/features/authentication/screens/login/login.dart';
import 'package:babycare/features/authentication/screens/onboarding/onboarding.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  final deviceStorage = GetStorage();

  ///Called from main.dart on app launch
  @override
  void onReady(){
    FlutterNativeSplash.remove();
    screenRedirect();
  }

  ///Show Relevant screens
  screenRedirect() async {
    //local storage
    if(kDebugMode){
      print('============== Get Storage Auth =====================');
      print(deviceStorage.read('isFirstTime'));
    }

    deviceStorage.writeIfNull('isFirstTime', true);
    deviceStorage.read('isFirstTime') != true ? Get.offAll(()=> const LoginScreen()) : Get.offAll(const OnBoardingScreen());
  }

}
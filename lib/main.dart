
import 'package:babycare/data/repositories/authentication/authentication_repository.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'app.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

Future<void> main() async{
  //todo : add widgets binding
  final WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

  //todo : init local storage
  await GetStorage.init();

  //todo : await native splash
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  //todo : initialize firebase
  //todo : initialize authentication

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform).then((FirebaseApp value) => Get.put(AuthenticationRepository()));
  runApp(const App());
}


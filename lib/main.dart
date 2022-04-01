import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oow/checkout.dart';
import 'package:oow/detail.dart';
import 'package:oow/home/home.dart';
import 'package:oow/order%20status.dart';
import 'package:oow/signin.dart';
import 'package:oow/signup.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'code page.dart';
import 'location.dart';
import 'package:url_strategy/url_strategy.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyC0qwoOmwFXZoGbou_0UYIB6sllKoZDX1A",
          authDomain: "orderofwater-69afd.firebaseapp.com",
          projectId: "orderofwater-69afd",
          storageBucket: "orderofwater-69afd.appspot.com",
          messagingSenderId: "1060050637001",
          appId: "1:1060050637001:web:918db727d1caec97bf3d18",
          measurementId: "G-BKEQRE3T1H"));
  setPathUrlStrategy();
  runApp(GetMaterialApp(
    builder: (context, Widget) => ResponsiveWrapper.builder(
        ClampingScrollWrapper.builder(context, Widget!),
        maxWidth: 1600,
        minWidth: 350,
        // defaultScale: true,
        breakpoints: [
          ResponsiveBreakpoint.resize(350, name: MOBILE),
          ResponsiveBreakpoint.autoScale(400, name: MOBILE),
          ResponsiveBreakpoint.resize(450, name: MOBILE),
          // ResponsiveBreakpoint.resize(550, name: MOBILE),
          ResponsiveBreakpoint.autoScale(600, name: DESKTOP),
          // ResponsiveBreakpoint.autoScale(750, name: DESKTOP),
          ResponsiveBreakpoint.autoScale(850, name: DESKTOP),
          ResponsiveBreakpoint.resize(1200, name: DESKTOP),
          ResponsiveBreakpoint.autoScale(1600, name: DESKTOP),
        ]),
    debugShowCheckedModeBanner: false,
    home: home(),
    // initialRoute: '/signin',
    // routes: {
    //   '/signin': (context) => const signin(),
    //   '/signup': (context) => const SignUp(),
    //   '/codepage': (context) => const codepage(),
    //   '/location': (context) => const location(),
    //   '/home': (context) => const home(),
    //   '/status': (context) => const status(),
    //   '/detail': (context) => const detail(),
    // },
  ));
}

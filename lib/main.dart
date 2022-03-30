import 'package:flutter/material.dart';
import 'package:oow/checkout.dart';
import 'package:oow/detail.dart';
import 'package:oow/home/home.dart';
import 'package:oow/order%20status.dart';
import 'package:oow/signin.dart';
import 'package:oow/signup.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'code page.dart';
import 'location.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp(
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

    home: status(),
    // initialRoute: '/signin',
    routes: {
      '/signin': (context) => const signin(),
      '/signup': (context) => signup(),
      '/codepage': (context) => const codepage(),
      '/location': (context) => const location(),
      '/home': (context) => const home(),
      '/status': (context) => const status(),
      '/detail': (context) => const detail(),
    },
  ));
}

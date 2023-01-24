import 'package:bloodbank_app/screens/mobile_number.dart';
import 'package:bloodbank_app/screens/onboarding/onboarding1.dart';
import 'package:bloodbank_app/screens/onboarding/onboarding2.dart';
import 'package:flutter/material.dart';

import 'screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:
          'Bllood Bank App', //primarySwatch is responsible for color of Buttons and AppBar
      theme: ThemeData(
          //primaryColor is used to define color shades
          primaryColor: Colors.red,
          primarySwatch: Colors.teal,
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.purple),
            padding: MaterialStateProperty.all(EdgeInsets.all(10)),
          ))),
      // home: SplashScreen(),
      initialRoute: '/',
      routes: {
        "/": (context) => SplashScreen(),
        '/onboarding': (context) => OnboardingPage1(),
        '/onboarding2': (context) => OnboardingPage2(),
      },
    );
  }
}

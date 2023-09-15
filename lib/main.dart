import 'package:flutter/material.dart';
import 'package:learning_mobile/shared/theme.dart';
import 'package:learning_mobile/ui/screen/profile_page.dart';
import 'package:learning_mobile/ui/screen/setting_page.dart';
import 'package:learning_mobile/ui/screen/sign_in_page.dart';
import 'package:learning_mobile/ui/screen/onboarding_page.dart';
import 'package:learning_mobile/ui/screen/sign_up_page.dart';
import 'package:learning_mobile/ui/screen/splash_page.dart';
import 'package:learning_mobile/ui/screen/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: white,
        appBarTheme: AppBarTheme(
          backgroundColor: white,
          elevation: 0.0,
          centerTitle: true,
          iconTheme: IconThemeData(
            color: dark,
          ),
        ),
      ),
      routes: {
        '/': (context) => const SplashPage(),
        '/onboarding': (context) => const OnboardingPage(),
        '/login': (context) => const SignInPage(),
        '/sign_up':(context) => const SignUpPage(),
        '/home':(context) => const HomePage(),
        '/profile':(context) => const ProfilePage(),
        '/setting':(context) => const SettingPage(),
      },
    );
  }
}

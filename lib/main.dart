import 'package:fitness_app_live/screens/GoalScreen/GoalScreen.dart';
import 'package:fitness_app_live/screens/Login%20signUp/LoginSignup.dart';
import 'package:fitness_app_live/screens/Login%20signUp/forgotPassword.dart';
import 'package:fitness_app_live/screens/ProfilePage/PrivacyPolicy.dart';
import 'package:fitness_app_live/screens/ProfilePage/Settings.dart';
import 'package:fitness_app_live/screens/ProfilePage/profilePage.dart';
import 'package:fitness_app_live/screens/activityLevelScreen/activityLevelScreen.dart';
import 'package:fitness_app_live/screens/ageScreen/ageScreen.dart';
import 'package:fitness_app_live/screens/genderScreen/genderScreen.dart';
import 'package:fitness_app_live/screens/heightScreen/heightScreen.dart';
import 'package:fitness_app_live/screens/homeScreen/Notifications.dart';
import 'package:fitness_app_live/screens/homeScreen/bottomNavigationbar.dart';
import 'package:fitness_app_live/screens/homeScreen/homeScreen.dart';
import 'package:fitness_app_live/screens/onBoardingScreen/onBoardingScreen.dart';
import 'package:fitness_app_live/screens/weightScreen/weightScreen.dart';
import 'package:fitness_app_live/screens/workoutCategories.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      color: Colors.black,
      routes: {
        '/onboarding': (context) => OnBoardingScreen(),
        '/gender': (context) => GenderPage(),
        '/age': (context) => AgePage(),
        '/height': (context) => HeightPage(),
        '/weight': (context) => WeightPage(),
        '/activity': (context) => ActivityLevelPage(),
        '/goal': (context) => GoalPage(),
        '/forgotPassword': (context) => ForgotPassword(),
        '/login': (context) => SignUp(),
        '/home': (context) => HomePage(),
        '/notifications': (context) => NotificationPage(),
        '/workoutCategories': (context) => WorkoutCategories(),
        '/bottomNavigationbar': (context) => HomepageNavbar(),
        '/profile': (context) => ProfilePage(),
        '/privacyPolicy': (context) => PrivacyPolicyPage(),
        '/settings': (context) => SettingsPage(),

      },
      debugShowCheckedModeBanner: false,
      home: HomepageNavbar(),
    );
  }
}
import 'package:fitness_app_live/screens/Login%20signUp/LoginSignup.dart';
import 'package:flutter/material.dart';

import '../../models/DetailPageButton.dart';
import '../../models/DetailPageTitle.dart';
import '../../models/ListWheelViewScroller.dart';

class ActivityLevelPage extends StatefulWidget {
  const ActivityLevelPage({super.key});

  @override
  State<ActivityLevelPage> createState() => _ActivityLevelPageState();
}

class _ActivityLevelPageState extends State<ActivityLevelPage> {
  @override
  Widget build(BuildContext context) {
    List<String> items=[
      'Rookie',
      'Beginner',
      'Intermediate',
      'Advanced',
      'Pro',

    ];

    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        width: size.width,
        height: size.height,
        padding: EdgeInsets.only(
          top: size.height * 0.06,
          left: size.height * 0.05,
          right: size.height * 0.05,
          bottom: size.height * 0.03,
        ),
        child: Column(
          children: [
            const DetailPageTitle(
                text:
                'This will help us to create a personalized plan for you',
                title: 'What is your Activity Level?',
                color: Colors.white),
            SizedBox(
              height: size.height*0.055,
            ),
            SizedBox(
              height: size.height*0.5,
              child: listwheelScrollView(items: items,),
            ),
            DetailPageButton(
              text: 'Next',
              onTap: () {
                SignUp();

              },
              showBackButton: true,
              onBackTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}

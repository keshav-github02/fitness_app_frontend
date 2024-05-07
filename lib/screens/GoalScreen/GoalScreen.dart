import 'package:flutter/material.dart';

import '../../models/DetailPageButton.dart';
import '../../models/DetailPageTitle.dart';
import '../../models/ListWheelViewScroller.dart';

class GoalPage extends StatelessWidget {
  const GoalPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> items=[
      'Lose Weight',
      'Gain Weight',
      'Stay Fit',
      'Build Muscles',
      'Improve Endurance',
      'Stay Healthy',

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
                title: 'What is your Goal?',
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
                Navigator.pushNamed(context, '/activity');

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

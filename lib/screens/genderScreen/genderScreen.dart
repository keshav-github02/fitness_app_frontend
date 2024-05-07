import 'package:fitness_app_live/constants/color.dart';
import 'package:fitness_app_live/models/DetailPageButton.dart';
import 'package:fitness_app_live/models/DetailPageTitle.dart';
import 'package:flutter/material.dart';

class GenderPage extends StatefulWidget {
  const GenderPage({super.key});

  @override
  State<GenderPage> createState() => _GenderPageState();
}

class _GenderPageState extends State<GenderPage> {
  bool isMale = true;
  bool isFemale = false;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        padding: EdgeInsets.only(
            top: size.width * 0.06,
            right: size.width * 0.05,
            left: size.width * 0.05,
            bottom: size.width * 0.03),
        width: size.width,
        height: size.height,
        child: Column(
          children: [
          const DetailPageTitle(
            title: "Tell usAbout YourSelf",
            color: Colors.white,
            text: "This will help us to find the best \n content for you",
          ),
            SizedBox(
              height: size.height * 0.05,
            ),
            GenderIcon(
              title: 'Male',
              icon: Icons.male,
              onTap: () {
                setState(() {
                  isFemale = false;
                  isMale = true;
                });
              },
              isSelected: isMale,
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            GenderIcon(
              title: 'Female',
              icon: Icons.female,
              onTap: () {
                setState(() {
                  isFemale = true;
                  isMale = false;
                });
              },
              isSelected: isFemale,
            ),
            const Spacer(),
            DetailPageButton(
              text: "Next",
              onTap: () {
                Navigator.pushNamed(context, '/age');
              },
              showBackButton: false,
            ),
          ],
        ),
      ),
    );
  }
}

class GenderIcon extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback onTap;
  final bool isSelected;
  const GenderIcon(
      {super.key,
      required this.icon,
      required this.title,
      required this.onTap,
      required this.isSelected});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(size.width * 0.05),
        decoration: BoxDecoration(
          color: isSelected ? PrimaryColor : Colors.transparent,
          //borderRadius: BorderRadius.circular(20),
          shape: BoxShape.circle,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Icon(
                icon,
                size: size.width * 0.1,
                color: isSelected ? Colors.black : Colors.white,
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Text(
                title,
                style: TextStyle(
                  color: isSelected ? Colors.black : Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

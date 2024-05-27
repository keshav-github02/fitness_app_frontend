import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Positioned(
            top: 0,
              left: 0,
              right: 0,
              child: Image.asset('assets/onboardingImages/Background.png',
                height: size.height*0.6,
                width: size.width,
                fit: BoxFit.cover,


              ),),
        ],
      ),
    );
  }
}

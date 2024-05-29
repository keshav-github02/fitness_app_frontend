import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    bool isLoginSelected=true;
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Image.asset(
              'assets/onboardingImages/Background.png',
              height: size.height * 0.6,
              width: size.width,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 45,
            left: 20,
            right: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    )),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'SignUp',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    )),

              ],
            ),
          ),
          Positioned(
            top: size.height*0.4,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                isLoginSelected
                    ? "Welcome Back, \nUser".toUpperCase()
                    : "Hello rookies".toUpperCase(),
                style: TextStyle(
                  fontSize: size.width*0.095,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,

                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),

        ],
      ),
    );
  }
}

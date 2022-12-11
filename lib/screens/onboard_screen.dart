import 'dart:developer';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:restaurants/screens/login_screen.dart';
import 'package:restaurants/screens/sign_up_screen.dart';

class ScreenOnBoard extends StatelessWidget {
  const ScreenOnBoard({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.yellow,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: size.height * 0.6,
              color: Colors.yellow,
              child: Column(
                children: [
                  LottieBuilder.asset(
                    'assets/animation/splash.json',
                    width: size.width * 0.9,
                    height: size.height * 0.1,
                    animate: true,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(
                    height: size.height * 0.3,
                  ),
                  DefaultTextStyle(
                    style: GoogleFonts.pressStart2p(
                      fontSize: 30,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                    child: AnimatedTextKit(
                      pause: const Duration(milliseconds: 1000),
                      totalRepeatCount: 100,
                      animatedTexts: [
                        RotateAnimatedText('Eat Together'.toUpperCase()),
                        RotateAnimatedText('Sit Together'.toUpperCase()),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                height: size.height,
                decoration:const BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 50,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: InkWell(
                        onTap: () {
                          log('go to login screen');
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(builder: (context) {
                            return  ScreenLogin();
                          }));
                        },
                        child: Container(
                          height: size.height * 0.07,
                          decoration: BoxDecoration(
                            color: Colors.yellow,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Center(
                            child: Text(
                              'Login',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Flexible(
                            child: Container(
                              height: 1,
                              color: Colors.yellow,
                            ),
                          ),
                          SizedBox(
                            width: size.width * 0.04,
                          ),
                          const Text(
                            'OR',
                            style: TextStyle(
                                color: Colors.yellow,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: size.width * 0.04,
                          ),
                          Flexible(
                              child: Container(
                            height: 1,
                            color: Colors.yellow,
                          ))
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: InkWell(
                        onTap: () {
                          log('go to Signup screen');
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(builder: (context) {
                            return  ScreenSignUp();
                          }));
                        },
                        child: Container(
                          height: size.height * 0.07,
                          decoration: BoxDecoration(
                            color: Colors.yellow,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Center(
                            child: Text(
                              'Sign Up',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

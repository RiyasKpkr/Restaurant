import 'dart:developer';
// import 'dart:js';

import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:restaurants/screens/user/home_screen.dart';
// import 'package:restaurants/screens/home_screen.dart';
import 'package:restaurants/screens/user/login_screen.dart';
import 'package:restaurants/widgets/text_field_widget.dart';

class ScreenSignUp extends StatefulWidget {
  ScreenSignUp({super.key});

  @override
  State<ScreenSignUp> createState() => _ScreenSignUpState();
}

class _ScreenSignUpState extends State<ScreenSignUp> {
  //controllers
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController userController = TextEditingController();
  //FUNCTION SIGNIN
  signupFunction({required email, required password}) {
    FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email, password: password)
        .then((value) {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
        return HomeScreen();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: size.height * 0.35,
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    )),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: Lottie.asset(
                    'assets/animation/food-carousel.json',
                    // height: size.height * 0.01,
                    // width: size.width * 0.1,
                    animate: true,
                    repeat: true,
                    reverse: false,
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  children: [
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    Text(
                      'Sign UP',
                      style: GoogleFonts.pacifico(
                          fontSize: 30,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    //username
                    TextFieldWidget(
                        Controller: userController,
                        size: size,
                        iconsData: Icons.person,
                        hintText: 'User name'),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    //email
                    TextFieldWidget(
                        Controller: emailController,
                        size: size,
                        iconsData: Icons.email,
                        hintText: 'Email'),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    //password
                    TextFieldWidget(
                        Controller: passwordController,
                        size: size,
                        iconsData: Icons.lock,
                        hintText: 'Password'),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    InkWell(
                      onTap: () {
                        log('Sign up');
                        setState(() {
                          signupFunction(
                            email: emailController.text,
                            password: passwordController.text,
                          );
                        });
                      },
                      child: Container(
                        height: size.height * 0.06,
                        width: size.width * 0.5,
                        decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            'Sign Up',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Already have accout.!",
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            log('go to login page');
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (context) {
                              return ScreenLogin();
                            }));
                          },
                          child: const Text(
                            '  Login',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.amber,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

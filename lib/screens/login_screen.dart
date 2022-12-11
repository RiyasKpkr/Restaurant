import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:restaurants/screens/home_screen.dart';
import 'package:restaurants/screens/sign_up_screen.dart';
import 'package:restaurants/widgets/text_field_widget.dart';

class ScreenLogin extends StatefulWidget {
  ScreenLogin({super.key});

  @override
  State<ScreenLogin> createState() => _ScreenLoginState();
}

class _ScreenLoginState extends State<ScreenLogin> {
  //textControllers
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  //login function
  loginFunction({required email, required password}) {
    FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email, password: password)
        .then(
      (value) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) {
              return const HomeScreen();
            },
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
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
                  ),
                ),
                child: Lottie.asset(
                  'assets/animation/foodies.json',
                  height: size.height * 0.2,
                  animate: true,
                  repeat: true,
                  reverse: false,
                ),
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                child: Column(
                  children: [
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    Text("Login",
                        style: GoogleFonts.pacifico(
                          fontSize: 30,
                          color: Colors.amber,
                          fontWeight: FontWeight.bold,
                        )),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    //email
                    TextFieldWidget(
                        Controller: emailController,
                        size: size,
                        hintText: 'Email',
                        iconsData: Icons.email),
                    SizedBox(
                      height: size.height * 0.05,
                    ),
                    //password
                    TextFieldWidget(
                        Controller: passwordController,
                        size: size,
                        iconsData: Icons.lock,
                        hintText: 'Password'),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(right: 5),
                          child: Text(
                            'Forgot Password',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          loginFunction(
                            email: emailController.text,
                            password: passwordController.text,
                          );
                        });
                        log('Login');
                      },
                      child: Container(
                        height: size.height * 0.06,
                        width: size.width * 0.5,
                        decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Center(
                          child: Text(
                            'Login',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Create New Account.!  ',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      log('Sign in');
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return ScreenSignUp();
                      }));
                    },
                    child: Text(
                      'Sign In',
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
        ),
      ),
    );
  }
}

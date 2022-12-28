import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:restaurants/screens/user/home_screen.dart';
import 'package:restaurants/screens/user/onboard_screen.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Widget spalshScreen = SplashScreenView(
      navigateRoute: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return const HomeScreen();
          } else {
            const ScreenOnBoard();
          }
          return const ScreenOnBoard();
        },
      ),
      duration: 5000,
      imageSize: 500,
      speed: 1,
      imageSrc: 'assets/images/food-splash.jpg',
      text: 'Restuarent'.toUpperCase(),
      textType: TextType.TyperAnimatedText,
      textStyle: const TextStyle(
        fontSize: 30,
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
      backgroundColor: Colors.yellow[600],
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // useMaterial3: true,
        primarySwatch: Colors.blue,
      ),
      home: spalshScreen,
    );
  }
}

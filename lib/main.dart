import 'package:flutter/material.dart';
import 'package:dudeloka/bottom_bar.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DudeLoka',
      home: SplashScreenView(
        navigateRoute: MainScreen(),
        duration: 4000,
        imageSize: 130,
        imageSrc: "assets/images/logo.png",
        backgroundColor: Colors.green,
        text: "DudeLoka",
        textType: TextType.TyperAnimatedText,
        textStyle: TextStyle(
          fontSize: 30.0,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:mark_app/home_page.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Marks List',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.grey,
          // visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        // home: const HomePage(),
        home: AnimatedSplashScreen(
            duration: 3000,
            //splash: Icons.construction,
            //splash: Icons.format_shapes,
            splash: const Text(
              "NTD24",
              style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.white)
            ),
            nextScreen: HomePage(),
            splashTransition: SplashTransition.rotationTransition,
            backgroundColor: Colors.blueGrey));
  }
}

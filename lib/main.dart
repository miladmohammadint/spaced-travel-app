import 'package:flutter/material.dart';
import 'package:spaced_trip_scheduler/constants.dart';
import 'package:spaced_trip_scheduler/pages/authentication_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(
        brightness: Brightness.light,
        scaffoldBackgroundColor: kBackgroundColor,
        primarySwatch: Colors.grey,
        unselectedWidgetColor: Colors.white,
        primaryColor: kPrimaryColor,
        appBarTheme: const AppBarTheme(
          elevation: 0,
          backgroundColor: Colors.transparent,
          titleTextStyle: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Colors.white, // Add color to ensure the text is visible
          ),
        ),
        textTheme: const TextTheme(
          bodyMedium: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontFamily: 'SFProText',
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            foregroundColor: kPrimaryColor, // Use foregroundColor instead of primary
          ),
        ),
      ),
      home: const AuthenticationPage(),
    );
  }
}

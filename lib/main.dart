import 'package:flutter/material.dart';
import 'package:kqr/constants/colors.dart';
import 'package:kqr/screens/home/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: primaryColor,
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          foregroundColor: darkTextColor,
          backgroundColor: primaryColor,
          elevation: 0,
          iconTheme: IconThemeData(color: darkTextColor),
        ),
        fontFamily: 'CarroisGothic',
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const Home(),
    );
  }
}

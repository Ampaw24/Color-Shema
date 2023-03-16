import 'package:colorschema/constants/colors.dart';
import 'package:flutter/material.dart';
import 'screens/splashscreen/splashscreen.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Color Schema',
      theme: ThemeData.light().copyWith(
      primaryColor: GreenishgDarkTheme['themeColorDark'],
      scaffoldBackgroundColor: GreenishgDarkTheme['themeColorDark']
      ),
      home: const SplashScreen(),
    );
  }
}


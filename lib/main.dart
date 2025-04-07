import 'package:colorschema/core/utils/theme.dart';
import 'package:flutter/material.dart';
import 'Presentation/splashscreen/splashscreen.dart';

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
     theme:AppTheme.lightTheme,
      home: const SplashScreen(),
    );
  }
}


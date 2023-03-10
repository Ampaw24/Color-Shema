// ignore_for_file: prefer_const_constructors

import 'dart:async';
import 'package:colorschema/constants/textstyle.dart';
import 'package:flutter/material.dart';
import '../homepage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:colorschema/constants/colors.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import '../Login-SignUp/login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  var logo = "assets/logomain.png";
  @override
  void initState() {
    loadUp();
    super.initState();
  }

  Future<Timer> loadUp() async {
    return Timer(Duration(seconds: 6), onDoneLoading);
  }

  void onDoneLoading() {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) => LoginPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GreenishgDarkTheme['themeColorDark'],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              height: 180,
              width: 190,
              decoration: BoxDecoration(
             image:  DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/logomain.png"),
              )
              ),
        
            ),
          ),
          Text("ALPHA SCHEMA",style: GoogleFonts.poppins(
            textStyle: kCompanyTitleText,
          ),),
             Text("The Color Scheming App",style: GoogleFonts.poppins(
            textStyle: kCompanysubTitleText,
          ),),
          SizedBox(height: 20,),
          SpinKitThreeBounce(
            color: GreenishgDarkTheme['ballWhite'],
          )
        ],
      ),
    );
  }
}

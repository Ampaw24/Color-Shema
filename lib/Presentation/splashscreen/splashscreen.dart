// ignore_for_file: prefer_const_constructors

import 'dart:async';
import 'package:colorschema/core/utils/colors.utils.dart';
import 'package:colorschema/core/utils/fontstyles.dart';
import 'package:colorschema/core/utils/image.utils.dart';
import 'package:colorschema/core/utils/strings.utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import '../Login-SignUp/login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
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
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              height: size.height * 0.20,
              width: size.width * 0.50,
              decoration: BoxDecoration(
                  image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(AppImages.logo),
              )),
            ),
          ),
          Text(
            APPTITLE,
            style: kCompanyTitleText,
          ),
          Text(
            SUBNAME,
            style: kCompanysubTitleText,
          ),
          SpinKitFadingCircle(color: PRIMARY)
        ],
      ),
    );
  }
}

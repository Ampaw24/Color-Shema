// ignore_for_file: prefer_const_constructors
import 'package:colorschema/screens/Login-SignUp/signup.dart';
import 'package:colorschema/screens/homepage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:colorschema/constants/colors.dart';
import 'package:colorschema/constants/textstyle.dart';
import '../../widget/curledContainer.dart';
import '../../widget/custombutton.dart';
import '../../widget/formfieldbox.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GreenishgDarkTheme['themeColorDark'],
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Center(
                child: Container(
                    margin: const EdgeInsets.only(top: 20),
                    width: 190,
                    height: 160,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/logomain.png")))),
              ),
              CurledContainer(
                topleft: 68,
                bottomright: 68,
                boxheight: MediaQuery.of(context).size.height * 1.43,
                boxwidth: 350,
                color: GreenishgDarkTheme['cardWhite']!,
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 30),
                      child: Text(
                        "Login",
                        style: GoogleFonts.poppins(
                          textStyle: kLoginTextHead,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    FormFieldBox(
                      prefixi: Icons.person,
                      hinttext: "Enter UserName",
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    FormFieldBox(
                      prefixi: Icons.lock,
                      suffixi: Icons.remove_red_eye,
                      hinttext: "Enter Password",
                    ),
                    CustomButton1(
                      onpressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomePage()));
                      },
                      buttonText: "Login",
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 40,
                        ),
                        GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                        builder: (context) => SignUpPage()));
                            },
                            child: Text(
                              "Create Account",
                              style: kCreateTextfield,
                            )),
                        SizedBox(
                          width: 30,
                        ),
                        Text("Forgot Password?")
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

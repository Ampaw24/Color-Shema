import 'package:colorschema/screens/Login-SignUp/login.dart';
import 'package:flutter/material.dart';
import 'package:colorschema/constants/colors.dart';
import 'package:colorschema/widget/curledContainer.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../../constants/textstyle.dart';
import '../../widget/custombutton.dart';
import '../../widget/formfieldbox.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

TextEditingController _username = TextEditingController();
TextEditingController _password = TextEditingController();
TextEditingController _mail = TextEditingController();

class _SignUpPageState extends State<SignUpPage> {
  void verifyMe(String username, String password, String mail) {
    if (username.isEmpty) {
      Fluttertoast.showToast(
          msg: "User Name Required ",
          gravity: ToastGravity.CENTER,
          fontSize: 30,
          toastLength: Toast.LENGTH_SHORT);
      print("Helo ");
    }
  }

  void NextPage() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => LoginPage()));
  }

  void showToast() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GreenishgDarkTheme['themeColorDark'],
      body: SingleChildScrollView(
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
                color: GreenishgDarkTheme['cardWhite'],
                boxwidth: 350,
                boxheight: MediaQuery.of(context).size.height * 1.43,
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 30),
                      child: Text(
                        "Sign Up",
                        style: GoogleFonts.poppins(
                          textStyle: kLoginTextHead,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    FormFieldBox(
                      controller: _username,
                      prefixi: Icons.person,
                      hinttext: "Enter UserName",
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    FormFieldBox(
                      controller: _mail,
                      prefixi: Icons.mail,
                      hinttext: "Enter Email",
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    FormFieldBox(
                      controller: _password,
                      prefixi: Icons.lock,
                      suffixi: Icons.remove_red_eye,
                      hinttext: "Enter Password",
                    ),
                    CustomButton1(
                      onpressed: () {
                        setState(() {
                          verifyMe(_username.text, _password.text, _mail.text);
                        });
                      },
                      buttonText: "Create Account",
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}

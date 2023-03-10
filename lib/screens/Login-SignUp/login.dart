import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:colorschema/constants/colors.dart';
import 'package:colorschema/constants/textstyle.dart';

import '../../widget/curledContainer.dart';

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
                      image: AssetImage("assets/logomain.png"))
                )),
              ),
              CurledContainer(
                topleft: 68,
                bottomright: 68,
                boxheight: MediaQuery.of(context).size.height * 1.43,
                boxwidth: 350,
                color: GreenishgDarkTheme['cardWhite'],
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      child: Text("Login",style:GoogleFonts.poppins(
                        textStyle:kLoginTextHead,
                      ),),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      height: 64,
                      width: 296,
                      decoration: BoxDecoration(
                        // color: GreenishgDarkTheme['formfieldwhite'],
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(

                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(
                              color: Colors.white,
                            ),
                            
                          ),
                          filled: true,
                          fillColor: GreenishgDarkTheme['formfieldwhite'],
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          
                            
                          )
                        ),
                      ),
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


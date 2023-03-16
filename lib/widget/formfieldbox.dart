import 'package:flutter/material.dart';
import '../constants/colors.dart';
import '../constants/textstyle.dart';

typedef MyCallback = void Function(String);

class FormFieldBox extends StatelessWidget {
  const FormFieldBox(
      {super.key,
      required this.hinttext,
      this.prefixi,
      this.suffixi,
      this.showtxt = false,
      this.postAction,
      this.controller,
      this.onChangedAction,
 
      
      });
  final String hinttext;
  final IconData? prefixi, suffixi;
  final bool showtxt;
  final VoidCallback? postAction;
  final MyCallback? onChangedAction;
  final controller;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      width: 296,
      decoration: BoxDecoration(
        // color: GreenishgDarkTheme['formfieldwhite'],
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextFormField(
        onChanged: onChangedAction,
        controller: controller,
        obscureText: showtxt,
        cursorHeight: 25,
        decoration: InputDecoration(
            suffixIcon: IconButton(
                onPressed: postAction,
                icon: Icon(
                  suffixi,
                )),
            prefixIcon: IconButton(onPressed: () {}, icon: Icon(prefixi)),
            hintText: "Enter UserName",
            hintStyle: kLoginTextfield,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(
                color: Color(0xffEEE6E6),
              ),
            ),
            filled: true,
            fillColor: GreenishgDarkTheme['formfieldwhite'],
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            )),
      ),
    );
  }
}

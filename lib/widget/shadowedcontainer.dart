import 'package:flutter/material.dart';
import 'package:colorschema/widget/textstyles.dart';
class ShadowedCard extends StatelessWidget {
  ShadowedCard({
    required this.red1,
    required this.red2,
    required this.red3,
    required this.green1,
    required this.green2,
    required this.green3,
    required this.blue1,
    required this.blue2,
    required this.blue3,
    required this.code1,
    required this.code2,
    required this.code3,
  });
  final red1, red2, red3, green1, green2, green3, blue1, blue2, blue3;
  final String? code1, code2, code3;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: MediaQuery.of(context).size.width * .95,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(255, 27, 27, 27).withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 10,
            offset: Offset(0, 3),
          ),
        ],
        color: Color.fromARGB(255, 255, 255, 255),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                Text(
                  "Color",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
                ),
                Spacer(),
                Text(
                  "Hex-Code ",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
                ),
                Spacer(),
                Text(
                  "Copy ",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 20),
                height: 40,
                width: 70,
                color: Color.fromARGB(255, red1, green1, blue1),
              ),
              Container(
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 27, 27, 27).withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 10,
                        offset: Offset(0, 3),
                      ),
                    ],
                    color: Colors.amber[50],
                    borderRadius: BorderRadius.circular(10)),
                margin: const EdgeInsets.only(left: 30),
                height: 40,
                width: MediaQuery.of(context).size.width * 0.5,
                child: Center(child: Text(code1.toString(),style: kCodeColor,)),
              ),
              SizedBox(
                width: 20,
              ),
              Icon(Icons.copy)
            ],
          ),
          Spacer(),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 20),
                height: 40,
                width: 70,
                color: Color.fromARGB(255, red2, green2, blue2),
              ),
              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(255, 27, 27, 27).withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 10,
                      offset: Offset(0, 3),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.amber[50],
                ),
                margin: const EdgeInsets.only(left: 30),
                height: 40,
                width: MediaQuery.of(context).size.width * 0.5,
                 child: Center(child: Text(code2.toString(),style: kCodeColor,)),
              ),
              SizedBox(
                width: 20,
              ),
              Icon(Icons.copy)
            ],
          ),
          Spacer(),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 20),
                height: 40,
                width: 70,
                color: Color.fromARGB(255, red3, green3, blue3),
              ),
              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(255, 27, 27, 27).withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 10,
                      offset: Offset(0, 3),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.amber[50],
                ),
                margin: const EdgeInsets.only(left: 30),
                height: 40,
                width: MediaQuery.of(context).size.width * 0.5,
                 child: Center(child: Text(code3.toString(),style: kCodeColor,)),
              ),
              SizedBox(
                width: 20,
              ),
              Icon(Icons.copy)
            ],
          ),
          Spacer(),
        ],
      ),
    );
  }
}

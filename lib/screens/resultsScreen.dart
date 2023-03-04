// ignore_for_file: prefer_const_constructors

import 'package:colorschema/screens/homepage.dart';
import 'package:flutter/material.dart';
import 'package:colorschema/networking/networkhelper.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:colorschema/widget/shadowedcontainer.dart';


class ResultPage extends StatefulWidget {
  const ResultPage({super.key, required this.colorResult});
  final colorResult;
  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  var red1, red2, red3, green1, green2, green3, blue1, blue2, blue3;
  String? code1, code2, code3;
  // var  code1, code2, code3;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    updateUi(widget.colorResult);

    print(widget.colorResult);
  }

  void updateUi(dynamic data) {
    red1 = data['colors'][0]['rgb']['r'];
    green1 = data['colors'][0]['rgb']['g'];
    blue1 = data['colors'][0]['rgb']['b'];

    //Color2
    red2 = data['colors'][1]['rgb']['r'];
    green2 = data['colors'][1]['rgb']['g'];
    blue2 = data['colors'][1]['rgb']['b'];

    //Color 3
    red3 = data['colors'][2]['rgb']['r'];
    green3 = data['colors'][2]['rgb']['g'];
    blue3 = data['colors'][2]['rgb']['b'];

    //color code
    // code1 = data['datacolors'][0]['name']['closest_named_hex'];
    // code3 = data['datacolors'][2]['name']['closest_named_hex'];
    // code2 = data['datacolors'][1]['name']['closest_named_hex'];
    code1 = data['colors'][0]['hex']['value'];
    code2 = data['colors'][1]['hex']['value'];
    code3 = data['colors'][2]['hex']['value'];
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return HomePage();
              }));
            },
            // ignore: prefer_const_constructors
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: Color.fromARGB(255, 19, 18, 18),
              size: 30,
            )),
        title: const Text(
          "Color Schema ",
          style: TextStyle(
            color: Color.fromARGB(255, 17, 16, 16),
            fontSize: 30,
          ),
        ),
        actions: [
          Container(
            padding: const EdgeInsets.only(right: 20),
            child: CircleAvatar(
              backgroundColor: Colors.purple,
              child: Center(
                child: Text(
                  "A",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 10, right: 120, bottom: 15),
            child: Text(
              "Generated Scheme",
              style: TextStyle(
                color: Color.fromARGB(255, 49, 49, 49),
                fontSize: 33,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Divider(color: Colors.black),
          SizedBox(
            height: 5,
          ),
          GestureDetector(
            onTap: () {},
            child: Center(
              child: Container(
                height: MediaQuery.of(context).size.height / 3,
                width: MediaQuery.of(context).size.width * .95,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(26),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 10,
                      offset: Offset(0, 3),
                    ),
                  ],
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    Expanded(
                        child: Container(
                      color: Color.fromARGB(255, red1, green1, blue1),
                    )),
                    Expanded(
                        child: Container(
                      color: Color.fromARGB(255, red2, green2, blue2),
                    )),
                    Expanded(
                        child: Container(
                      color: Color.fromARGB(255, red3, green3, blue3),
                    )),
                  ],
                ),
              ),
            ),
          ),
          Spacer(),
          ShadowedCard(
            red1: red1,
            red2: red2,
            red3: red3,
            blue1: blue1,
            blue2: blue2,
            blue3: blue3,
            green1: green1,
            green2: green2,
            green3: green3,
            code1: code1,
            code2: code2,
            code3: code3,
          ),
          Spacer()
        ],
      ),
    );
  }
}


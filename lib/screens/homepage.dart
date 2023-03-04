// ignore_for_file: prefer_const_constructors

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:colorschema/module/slectordata.dart';
import 'package:http/http.dart' as http;
import 'resultsScreen.dart';
import 'package:colorschema/networking/networkhelper.dart';
import 'loadingpage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String selectedItem = "Triad";
  String hexCode="";

  List<DropdownMenuItem> getDropdownData() {
    List<DropdownMenuItem<String>> dropdownItem = [];
    for (var index = 0; index < chrome.length; index++) {
      String options = chrome[index];
      var dropItem =
          DropdownMenuItem(value: options, child: Text(options.toLowerCase()));
      dropdownItem.add(dropItem);
    }
    return dropdownItem;
  }

  Widget sheetContent(context) => Container(
        child: Center(
          child: Text(
            "",
            style: TextStyle(fontSize: 40, color: Colors.black),
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
            onPressed: () {},
            // ignore: prefer_const_constructors
            icon: Icon(
              Icons.menu,
              color: Color.fromARGB(255, 19, 18, 18),
              size: 30,
            )),
        title: const Text(
          "Color Schema",
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
          SizedBox(
            height: 50,
          ),
          Container(
              padding: const EdgeInsets.all(25),
              child: TextField(
                onChanged: (value) {
                  setState(() {
                    hexCode = value;
                  });
                },
                decoration: InputDecoration(
                    hintText: "Enter Color Code..",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                            BorderSide(width: 2, color: Colors.black12)),
                    fillColor: Color.fromARGB(255, 139, 138, 138),
                    label: Text(
                      "Color Code",
                      style: TextStyle(fontSize: 20),
                    )),
              )),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: const EdgeInsets.all(25),
            child: DropdownButtonFormField(
                isExpanded: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(width: 2, color: Colors.black))),
                value: selectedItem,
                elevation: 3,
                items: getDropdownData(),
                onChanged: (value) {
                  setState(() {
                    selectedItem = value;
                  });
                }),
          ),
          SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          LoadingPage(colorcode: hexCode.toString(), mode: selectedItem)));
            },
            child: Container(
              width: MediaQuery.of(context).size.width * 0.92,
              height: 80,
              decoration: BoxDecoration(
                color: Colors.purple,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.search,
                    color: Colors.white54,
                    size: 30,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Get Scheme",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

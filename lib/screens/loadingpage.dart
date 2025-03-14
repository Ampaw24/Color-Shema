import 'package:colorschema/screens/resultsScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../networking/networkhelper.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({super.key, required this.colorcode, required this.mode});
  final String colorcode;
  final String mode;
  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  void loadData() async {
    try {
      NetworkHelper helper = NetworkHelper(
          url:
              "https://www.thecolorapi.com/scheme?hex=${widget.colorcode}&count=3&mode=${(widget.mode).toLowerCase()}");
      var colorData = await helper.getData();
      Navigator.of(context).push(MaterialPageRoute(builder: (context) {
        return ResultPage(
          colorResult: colorData,
        );
      }));
      print(widget.colorcode);
      print((widget.mode).toLowerCase());
    } catch (e) {
      print("Failed to load data $e");
      Navigator.pop(context);
    }
  }

  @override
  void initState() {
    loadData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromARGB(31, 54, 54, 54),
      body: Center(
          child: SpinKitFadingCircle(
        color: Colors.white,
        size: 100,
      )),
    );
  }
}

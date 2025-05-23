import 'package:flutter/material.dart';

class CurledContainer extends StatelessWidget {
  const CurledContainer(
      {super.key,
      required this.color,
      required this.boxwidth,
      required this.boxheight,
      required this.child,
      this.topright = 0,
      this.topleft = 0,
      this.bottomright = 0,
      this.bottomleft = 0});
  final double boxwidth, boxheight, topright, topleft, bottomright, bottomleft;
  final Color color;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 356,
      height: MediaQuery.of(context).size.height / 1.5,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 0, 0, 0).withValues(alpha:0.5),
            spreadRadius: 1,
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(bottomleft),
          topRight: Radius.circular(topright),
          topLeft: Radius.circular(topleft),
          bottomRight: Radius.circular(bottomright),
        ),
        color: color,
      ),
      child:child,
    );
  }
}

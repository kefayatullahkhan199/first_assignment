import 'package:flutter/material.dart';

class CustomSocailButtons extends StatelessWidget {
  final Icon buttonICon;
  final Color buttonColor;

  CustomSocailButtons({
    required this.buttonICon,
    required this.buttonColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: buttonColor,
          border: Border.all(
            color: Colors.black,width: 1.5,
          )),
      child: buttonICon,
    );
  }
}

import 'package:flutter/material.dart';
class CustomHomeScreen extends StatelessWidget{
  final Color containerColor;
  final String? text;
  final double containerHeight;
  final double containerWidth;
  final String containerImage;
  CustomHomeScreen({
  this.containerColor=Colors.white, this.text,required this.containerHeight,required this.containerWidth,required this.containerImage
});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: containerHeight,
      width: containerWidth,

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(width: 1,color: Colors.black),
        color: containerColor,
        image:DecorationImage(image: AssetImage(containerImage),

        )
      ),
    );
  }
}

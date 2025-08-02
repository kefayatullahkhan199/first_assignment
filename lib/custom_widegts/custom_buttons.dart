import 'package:flutter/cupertino.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Color textColor;
  final Color buttonColor;
  final FontWeight? fontWeight;
  CustomButton(
      {required this.text,
      required this.textColor,
      required this.buttonColor,
       this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Container(
        height: 48,
        width: double.infinity,
        decoration: BoxDecoration(
          color:buttonColor ,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: Text(text,style: TextStyle(
            color: textColor,
            fontWeight: fontWeight,
            fontSize: 12
          ),),
        ),
      ),
    );
  }
}

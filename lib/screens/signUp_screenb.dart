import 'package:first_assignment/configs/app_colors.dart';
import 'package:first_assignment/controllers/login_provider.dart';
import 'package:first_assignment/custom_widegts/custom_buttons.dart';
import 'package:first_assignment/custom_widegts/custom_socailButtons.dart';
import 'package:first_assignment/custom_widegts/custom_textfields.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'login_screenb.dart';

class SignupScreenb extends StatelessWidget {
  const SignupScreenb({super.key});

  @override
  Widget build(BuildContext context) {
    final val = Provider.of<LoginProvider>(context, listen: false);
    return Scaffold(
      backgroundColor: AppColors.greyWhiteColor,
      appBar: AppBar(
        title: Text(''),
        backgroundColor: AppColors.greyWhiteColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 50,),
            Text(
              'Welcome!',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 6,
            ),
            Text(
              'Sign up to get started',style: TextStyle(fontSize: 10),
            ),
            SizedBox(
              height: 30,
            ),
            CustomFields(
                hintText: 'Username',
                textEditingController: val.userNameBController,
                fieldColor: AppColors.whiteColor),
            SizedBox(
              height: 20,
            ),
            CustomFields(
                hintText: 'email',
                textEditingController: val.emailBController,
                fieldColor: AppColors.whiteColor),
            SizedBox(
              height: 20,
            ),
            CustomFields(
                hintText: 'password',
                textEditingController: val.passwordBController,
                fieldColor: AppColors.whiteColor),
            SizedBox(
              height: 25,
            ),
            Text('or'),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                CustomSocailButtons(buttonICon: Icon(Icons.facebook), buttonColor: AppColors.whiteColor),
                SizedBox(width: 15,),
                CustomSocailButtons(buttonICon:  Icon(Icons.facebook), buttonColor: AppColors.whiteColor),
                SizedBox(width: 15,),
                CustomSocailButtons(buttonICon:  Icon(Icons.facebook), buttonColor: AppColors.whiteColor)
              ],
            ),
            SizedBox(height: 30,),
            CustomButton(
                text: 'Sign up',
                textColor: AppColors.whiteColor,
                buttonColor: Colors.black),
            SizedBox(
              height: 15,
            ),
            Text('Already have an account?',style: TextStyle(color: Colors.grey),),
            InkWell
              (
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreenb()));
              },
                child: Text('Sign in'))
          ],
        ),
      ),
    );
  }
}

import 'package:first_assignment/configs/app_colors.dart';
import 'package:first_assignment/controllers/login_provider.dart';
import 'package:first_assignment/custom_widegts/custom_buttons.dart';
import 'package:first_assignment/custom_widegts/custom_socailButtons.dart';
import 'package:first_assignment/custom_widegts/custom_textfields.dart';
import 'package:first_assignment/screens/signUp_screenb.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';

class LoginScreenb extends StatelessWidget {
  const LoginScreenb({super.key});

  @override
  Widget build(BuildContext context) {
    final val = Provider.of<LoginProvider>(context, listen: false);
    return Scaffold(
      backgroundColor: AppColors.greyWhiteColor,
      appBar: AppBar(
        title: Text(''),
        backgroundColor: AppColors.greyWhiteColor,
        automaticallyImplyLeading: false,
      ),

      body: SingleChildScrollView(

        child: Column(

          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 80,),
            Text(
              'Good to see you!',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              'Let\'s continue the journey.',
              style: TextStyle(fontSize: 14),
            ),
            SizedBox(
              height: 12,
            ),
            CustomFields(
                hintText: 'Username',
                textEditingController: val.userNameController,
                fieldColor: AppColors.whiteColor),
            SizedBox(
              height: 30,
            ),
            CustomFields(
                hintText: 'Password',
                textEditingController: val.sbPassController,
                fieldColor: AppColors.whiteColor),
            SizedBox(
              height: 30,
            ),
            Text('or'),
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomSocailButtons(buttonICon:Icon(Icons.facebook), buttonColor: AppColors.whiteColor),
                SizedBox(width: 15,),
                CustomSocailButtons(buttonICon: Icon(Icons.facebook), buttonColor: AppColors.whiteColor),
                SizedBox(width: 15,),
                CustomSocailButtons(buttonICon: Icon(Icons.facebook), buttonColor: AppColors.whiteColor,)
              ],
            ),
            SizedBox(height: 30,),
            CustomButton(
                text: 'Log in',
                textColor: AppColors.whiteColor,
                buttonColor: Colors.black),
            SizedBox(
              height: 12,
            ),
            Text(
              'Don\'t have any account?',
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(
              height: 6,
            ),
            InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignupScreenb()));
                },
                child: Text(
                  'Sign up',
                  style: TextStyle(fontSize: 14),
                ))
          ],
        ),
      ),
    );
  }
}

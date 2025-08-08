import 'package:first_assignment/configs/app_colors.dart';
import 'package:first_assignment/controllers/login_provider.dart';
import 'package:first_assignment/custom_widegts/custom_buttons.dart';
import 'package:first_assignment/custom_widegts/custom_textfields.dart';
import 'package:first_assignment/screens/sign_up_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final val = Provider.of<LoginProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 18),
              child: Text(
                'Welcome Back!',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            CustomFields(
                hintText: 'Enter your email',
                textEditingController: val.emailController,
                fieldColor: AppColors.whiteColor),
            SizedBox(
              height: 12,
            ),
            CustomFields(
                hintText: 'Enter your password',
                textEditingController: val.passController,
                fieldColor: AppColors.whiteColor),
            SizedBox(
              height: 12,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Text(
                  'Forget Password?',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.black,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            CustomButton(
                text: 'Log in',
                textColor: AppColors.whiteColor,
                buttonColor: AppColors.orangeColor,
                fontWeight: FontWeight.normal),
            SizedBox(
              height: 100,
            ),
            Center(child: Text('Or log in')),
            SizedBox(
              height: 100,
            ),
        
            CustomButton(
              text: 'LOGIN WITH GOOGLE',
              textColor: AppColors.whiteColor,
              buttonColor: Colors.deepOrange,
            ),
            SizedBox(
              height: 16,
            ),
            CustomButton(
                text: 'LOGIN WITH FACEBOOK',
                textColor: AppColors.whiteColor,
                buttonColor: AppColors.blueColor),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Don\'t  have any account? ', style: TextStyle(fontSize: 14, color: Colors.black),),
                InkWell(
                  onTap:() {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpScreen()));
                  },
                  child: Text('Sign up', style:
                  TextStyle(fontSize: 14, color: AppColors.lightOrangeColor),),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

import 'package:first_assignment/configs/app_colors.dart';
import 'package:first_assignment/controllers/login_provider.dart';
import 'package:first_assignment/custom_widegts/custom_buttons.dart';
import 'package:first_assignment/custom_widegts/custom_textfields.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'login_screen.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    final val=Provider.of<LoginProvider>(context,listen: false);
    return Scaffold(

      appBar: AppBar(
        title: Text(''),
        backgroundColor: AppColors.whiteColor,
      ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18,vertical: 16),
                child: Text('Let\'s gets Started!',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
              ),
              CustomFields(hintText: 'Full name', textEditingController:val.nameController, fieldColor: AppColors.whiteColor),
              SizedBox(height: 12,),
              CustomFields(hintText: 'email', textEditingController: val.sEmailController, fieldColor: AppColors.whiteColor),
              SizedBox(height: 12,),
              CustomFields(hintText: 'Password', textEditingController: val.sPassController, fieldColor:AppColors.whiteColor),
              SizedBox(height: 12,),
              CustomFields(hintText: 'Confirm your password', textEditingController: val.sCPassController, fieldColor: AppColors.whiteColor),
              SizedBox(height: 12,),
              CustomButton(text: 'Sign up', textColor: AppColors.whiteColor, buttonColor: AppColors.orangeColor),
              SizedBox(height: 30,),
              Center(child: Text('Or sign up')),
              SizedBox(height: 30,),
              CustomButton(text: 'LOGIN WITH GOOGLE', textColor: AppColors.whiteColor, buttonColor: Colors.red),
              SizedBox(height: 12,),
              CustomButton(text: 'LOGIN WITH FACEBOOK', textColor: AppColors.whiteColor, buttonColor: AppColors.blueColor),
              SizedBox(height: 12,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Already have an account? ', style: TextStyle(fontSize: 14, color: Colors.black),),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
                    },
                    child: Text('Sign in', style:
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

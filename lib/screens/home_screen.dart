import 'package:first_assignment/custom_widegts/custom_home_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0Xffe3e9f7),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 25, horizontal: 15),
                child: Row(
                  children: [
                    CustomHomeScreen(
                        containerHeight: 70,
                        containerWidth: 70,
                        containerImage: 'assets/all.png'),
                    SizedBox(
                      width: 15,
                    ),
                    CustomHomeScreen(
                        containerHeight: 70,
                        containerWidth: 70,
                        containerImage: 'assets/gro.png'),
                    SizedBox(
                      width: 15,
                    ),
                    CustomHomeScreen(
                        containerHeight: 70,
                        containerWidth: 70,
                        containerImage: 'assets/electronics.jpg'),
                    SizedBox(
                      width: 15,
                    ),
                    CustomHomeScreen(
                        containerHeight: 70,
                        containerWidth: 70,
                        containerImage: 'assets/cosmetics.png'),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 43),
                child: Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Image(image: AssetImage('assets/mainwatch.jpg')),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 43, vertical: 18),
                child: Row(
                  children: [
                    Expanded(
                        child: CustomHomeScreen(
                            containerHeight: 150,
                            containerWidth: double.infinity,
                            containerImage: 'assets/mainwatch.jpg')),
                    SizedBox(
                      width: 30,
                    ),
                    Expanded(
                        child: CustomHomeScreen(
                            containerHeight: 150,
                            containerWidth: double.infinity,
                            containerImage: 'assets/headset2.jpg')),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: Row(
                  children: [
                    Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Colors.teal,
                          borderRadius: BorderRadius.circular(12)),
                      child: Center(
                          child: Text(
                        'HOT \nSALES',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 30),
                      )),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Color(0Xffec8ca7),
                          borderRadius: BorderRadius.circular(12)),
                      child: Center(
                          child: Text(
                        'NEW \nARRIVALS',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 30),
                      )),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

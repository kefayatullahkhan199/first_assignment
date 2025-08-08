import 'package:first_assignment/controllers/login_provider.dart';
import 'package:first_assignment/widgets/bottom_nav.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
/// this is starting point of the project
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context)=>LoginProvider())
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        home: BottomNav(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}


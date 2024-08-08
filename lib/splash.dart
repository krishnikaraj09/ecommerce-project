import 'dart:async';
import 'package:ecomm/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main(){
  runApp(HomeScreen());
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
      ),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 3,),(){
      Navigator.pushReplacement(context,
          MaterialPageRoute(
              builder: (context)=>LoginForm()));
    });
  }

  _navigateToHome() async {
    await Future.delayed(Duration(seconds: 3)); // wait for 3 seconds
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset('assets/sakshi/logo1.jpg',),
 // your splash screen logo
    );
  }
}
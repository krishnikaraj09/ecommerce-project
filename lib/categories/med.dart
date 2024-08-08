import 'package:flutter/material.dart';
import 'package:ecomm/medicines/Ayurveda.dart';
import 'package:ecomm/medicines/FirstAid.dart';
import 'package:ecomm/medicines/M&B.dart';
import 'package:ecomm/medicines/Monsoon.dart';
import 'package:ecomm/medicines/supplements.dart';
import 'package:ecomm/medicines/Diabetes.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Med extends StatefulWidget {

  @override
  
  State<Med> createState() => _MedState();
}

class _MedState extends State<Med> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 18.0,top: 25).r,
        child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.white,
                      Colors.white,
                      Colors.lightBlueAccent,
                    ],
                  ),
                ),
                height: 90.h,
                child: Row(
                  children: [
                    Text('Medicines',style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                    ),
                    Icon(

                      Icons.arrow_forward_ios_outlined,
                      color: Colors.blue,),
                    Padding(
                        padding: const EdgeInsets.only(left: 80.0).r,
                        child:
                        Row(
                          children: [
                            Image.asset('assets/images/med1.png',
                            ),
                          ],
                        )
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50.0.h),
              Padding(padding: const EdgeInsets.only(right: 10).r,
                child:SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Ayur()
                              ),
                            );
                          },
                          child: Column(
                              children: [
                                CircleAvatar(
                                  radius: 45.r,
                                  backgroundImage: AssetImage(
                                      'assets/images/ayur.jpg'),
                                ),
                                Text('Ayurveda',
                                  style: TextStyle(
                                      fontSize: 16, fontWeight: FontWeight.bold ),
                                ),
                              ]
                          ),
                        ),
                        SizedBox(width: 20.0.w,),
                        GestureDetector(
                          onTap: () {Navigator.push(
                              context,
                              MaterialPageRoute(

                                  builder: (context)=>First()
                              ));},
                          child: Column(
                              children: [
                                CircleAvatar(
                                  radius: 45.r,
                                  backgroundImage: AssetImage(
                                      'assets/images/fa.jpg'),
                                ),
                                Text('First Aid',
                                  style: TextStyle(
                                      fontSize: 16, fontWeight: FontWeight.bold),
                                ),
                              ]
                          ),
                        ),
                        SizedBox(width: 20.0.w,),
                        GestureDetector(
                          onTap: () {Navigator.push(
                              context,
                              MaterialPageRoute(

                                  builder: (context)=>MB()
                              ));},
                          child: Column(
                              children: [
                                CircleAvatar(
                                  radius: 45.r,
                                  backgroundImage: AssetImage(
                                      'assets/images/mb-removebg-preview.png'),
                                ),
                                Text('Baby Products',
                                  style: TextStyle(
                                      fontSize: 16, fontWeight: FontWeight.bold),
                                ),
                              ]
                          ),
                        ),
                      ] // backgroundColor: Colors.transparent,
                  ),
                ),
              ),
              SizedBox(height: 30.0.h,),
              Padding(padding: const EdgeInsets.only(right: 10).r,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {Navigator.push(
                              context,
                              MaterialPageRoute(

                                  builder: (context)=>Mon()
                              ));},
                          child: Column(
                              children: [
                                CircleAvatar(
                                  radius: 45.r,
                                  backgroundImage: AssetImage(
                                      'assets/images/Monsoon.jpg'),
                                ),
                                Text(' Monsoon\nEssentials',
                                  style: TextStyle(
                                      fontSize: 16, fontWeight: FontWeight.bold),
                                ),
                              ]
                          ),
                        ),
                        SizedBox(width: 20.0.w),
                        GestureDetector(
                          onTap: () {Navigator.push(
                              context,
                              MaterialPageRoute(

                                  builder: (context)=>Sup()
                              ));},
                          child: Column(
                              children: [
                                CircleAvatar(
                                  radius: 45.r,
                                  backgroundImage: AssetImage('assets/images/supp-removebg-preview.png'),
                                ),
                                Text('Supplements',
                                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                                ),
                              ]
                          ),
                        ),
                        SizedBox(width: 20.0.w),
                        GestureDetector(
                          onTap: () {Navigator.push(
                              context,
                              MaterialPageRoute(

                                  builder: (context)=>Dia()
                              ));},
                          child: Column(
                              children: [
                                CircleAvatar(
                                  radius: 45.r,
                                  backgroundImage: AssetImage(
                                      'assets/images/Diabetic-removebg-preview.png'),
                                ),
                                Text('Diabetes',
                                  style: TextStyle(
                                      fontSize: 16, fontWeight: FontWeight.bold),
                                ),
                              ]
                          ),
                        ),

                      ] // backgroundColor: Colors.transparent,
                  ),
                ),
              ),
            ]
        ),
      ),
    );
  }
}
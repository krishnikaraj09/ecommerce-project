import 'package:ecomm/home/AC.dart';
import 'package:flutter/material.dart';
import 'package:ecomm/home/Fan.dart';
import 'package:ecomm/home/Dishwasher.dart';
import 'package:ecomm/home/Oven.dart';
import 'package:ecomm/home/Ref.dart';
import 'package:ecomm/home/TV.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class home extends StatefulWidget {

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(),
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
                    Text('Appliance',style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Colors.blue,),
                    Padding(
                        padding: const EdgeInsets.only(left: 70.0).r,
                        child:
                        Row(
                          children: [
                            Image.asset('assets/gunjan/app-removebg-preview.png',
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
                                builder: (context) => Fan(),
                              ),
                            );
                          },
                          child: Column(
                              children: [

                                CircleAvatar(
                                  radius: 45.r,
                                  backgroundImage: AssetImage(
                                      'assets/gunjan/fan.jpg'),
                                ),
                                Text('Fan',
                                  style: TextStyle(
                                      fontSize: 16, fontWeight: FontWeight.bold ),
                                ),

                              ]
                          ),
                        ),
                        SizedBox(width: 20.0.w,),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>  Dishwasher(),
                              ),
                            );
                          },
                          child: Column(
                              children: [
                                CircleAvatar(
                                  radius: 45.r,
                                  backgroundImage: AssetImage(
                                      'assets/gunjan/dishwasher.jpg'),
                                ),
                                Text('Dishwasher',
                                  style: TextStyle(
                                      fontSize: 16, fontWeight: FontWeight.bold),
                                ),
                              ]
                          ),
                        ),
                        SizedBox(width: 20.0.w,),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Oven(),
                              ),
                            );
                          },
                          child: Column(
                              children: [
                                CircleAvatar(
                                  radius: 45.r,
                                  backgroundImage: AssetImage(
                                      'assets/gunjan/oven.jpg'),
                                ),
                                Text('Oven',
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
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Ref(),
                              ),
                            );
                          },
                          child: Column(
                              children: [
                                CircleAvatar(
                                  radius: 45.r,
                                  backgroundImage: AssetImage(
                                      'assets/gunjan/ref.jpg'),
                                ),
                                Text('Refrigerator\n',
                                  style: TextStyle(
                                      fontSize: 16, fontWeight: FontWeight.bold),
                                ),
                              ]
                          ),
                        ),
                        SizedBox(width: 20.0.w,),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>  TV(),
                              ),
                            );
                          },
                          child: Column(
                              children: [
                                CircleAvatar(
                                  radius: 45.r,
                                  backgroundImage: AssetImage('assets/gunjan/tv.jpeg'),
                                ),
                                Text('Television\n',
                                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                                ),
                              ]
                          ),
                        ),
                        SizedBox(width: 20.0.w,),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>  AC(),
                              ),
                            );
                          },
                          child: Column(
                              children: [
                                CircleAvatar(
                                  radius: 45.r,
                                  backgroundImage: AssetImage(
                                      'assets/gunjan/ac.jpg'),
                                ),
                                Text('       Air\nConditioner',
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
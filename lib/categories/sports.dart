import 'package:flutter/material.dart';
import 'package:ecomm/sports/footwear.dart';
import 'package:ecomm/sports/activewear.dart';
import 'package:ecomm/sports/sprotsequi.dart';
import 'package:ecomm/sports/health.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Sports extends StatefulWidget {

  @override
  State<Sports> createState() =>_SportsState();
}

class _SportsState extends State<Sports> {
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
                    Text('Sports Hub',style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Colors.blue,),
                    Padding(
                        padding: const EdgeInsets.only(left: 0.0).r,
                        child:
                        Row(
                          children: [
                            Image.asset('assets/sakshi/sporthub1.png',
                            ),
                          ],
                        )
                    )
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
                            Navigator.push(context, MaterialPageRoute(builder: (context) =>  Footwear()));
                          },
                          child: Column(
                              children: [
                                CircleAvatar(
                                  radius: 45.r,
                                  backgroundImage: AssetImage(
                                      'assets/sakshi/footwear1.jpg'),
                                ),
                                Text('Footwear\n',
                                  style: TextStyle(
                                      fontSize: 16,fontWeight: FontWeight.bold ),
                                ),
                              ]
                          ),
                        ),
                        SizedBox(width: 20.0.w,),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) =>  Activewear()));
                          },
                          child: Column(
                              children: [
                                CircleAvatar(
                                  radius: 45.r,
                                  backgroundImage: AssetImage(
                                      'assets/sakshi/activewear.jpg'),
                                ),
                                Text('ActiveWear\n',
                                  style: TextStyle(
                                      fontSize: 16, fontWeight: FontWeight.bold),
                                ),
                              ]
                          ),
                        ),
                        SizedBox(width: 20.0.w,),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) =>  Sport()));
                          },
                          child: Column(
                              children: [
                                CircleAvatar(
                                  radius: 45.r,
                                  backgroundImage: AssetImage(
                                      'assets/sakshi/sport equipments.jpg'),
                                ),
                                Text('     Sport\nEquipments',
                                  style: TextStyle(
                                      fontSize: 16,fontWeight: FontWeight.bold ),
                                ),
                              ]
                          ),
                        ),
                      ] // backgroundColor: Colors.transparent,
                  ),
                ),
              ),
              SizedBox(height: 30.0.h,),
              Padding(padding: const EdgeInsets.only(right: 240).r,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) =>  Health()));
                          },
                          child: Column(
                              children: [
                                CircleAvatar(
                                  radius: 45.r,
                                  backgroundImage: AssetImage(
                                      'assets/sakshi/healthcare.jpg'),
                                ),
                                Text('  Nutrition & \n Healthacare',
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
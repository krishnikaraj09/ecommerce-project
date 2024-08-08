import 'package:ecomm/fashion/KF.dart';
import 'package:ecomm/fashion/KT.dart';
import 'package:ecomm/fashion/KW.dart';
import 'package:ecomm/fashion/MF.dart';
import 'package:ecomm/fashion/WF.dart';
import 'package:ecomm/fashion/WT.dart';
import 'package:ecomm/fashion/WW.dart';
import 'package:ecomm/fashion/ment.dart';
import 'package:ecomm/fashion/menw.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class fsn extends StatefulWidget {
  const fsn ({super.key});

  @override
  State<fsn> createState() => _fsnState();
}

class _fsnState extends State<fsn> {
  int count=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.only(left: 18,top: 25).r,
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
                            Text('Fashion',style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                            ),
                            ),
                            Icon(

                              Icons.arrow_forward_ios_outlined,
                              color: Colors.blue,),
                            Padding(
                                padding: const EdgeInsets.only(left: 75.0).r,
                                child:
                                Row(
                                  children: [
                                    Image.asset('assets/himanshi/war.png',
                                    ),
                                  ],
                                )
                            ),
                          ]
                      ),
                    ),
                  SizedBox(height: 20.h,),
                            Row(
                              children: [
                                Text(
                                  'MEN',
                                  style: TextStyle(
                                    fontSize: 24.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 20.0.h),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,

                              child:  Row(
                                  children: [
                                    GestureDetector(
                                      onTap: () { Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => ment())); },
                                      child: Column(
                                          children: [
                                            CircleAvatar(
                                              radius: 45.r,
                                              backgroundImage:AssetImage('assets/himanshi/MT.jpg'),
                                              backgroundColor: Colors.transparent,
                                            ),
                                            SizedBox(height: 4.h), // Spacing between the avatar and the text
                                            Text(
                                              "TRADITIONAL",
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                              ),

                                            ),
                                          ]
                                      ),
                                    ),
                                    SizedBox(width: 18.0.w,),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => menw()));
                                      },
                                      child:
                                      Column(
                                          children: [
                                            CircleAvatar(
                                              radius: 45.r,
                                              backgroundImage:AssetImage('assets/himanshi/mw.jpeg'),

                                              // backgroundColor: Colors.transparent,
                                            ),
                                            SizedBox(height: 4.h), // Spacing between the avatar and the text
                                            Text(
                                              "WESTERN",
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ]
                                      ),
                                    ),
                                    SizedBox(width: 18.0.w,),
                                    GestureDetector(
                                        onTap: () { Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => MF()));},
                                        child: Column(
                                            children: [
                                              CircleAvatar(
                                                radius: 45.r,
                                                backgroundImage:AssetImage('assets/himanshi/sho.jpg'),
                                                // backgroundColor: Colors.transparent,
                                              ),
                                              SizedBox(height: 4.h), // Spacing between the avatar and the text
                                              Text(
                                                "FOOTWEAR",
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                ),

                                              ),
                                            ]
                                        )
                                    ),
                                  ]
                              ),
                            ),
                            SizedBox(height: 40.h,),
                            Row(
                              children: [
                                Text(
                                  'WOMEN',
                                  style: TextStyle(
                                    fontSize: 24.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 20.0.h),
                            SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child:  Row(
                                    children: [
                                      GestureDetector(
                                        onTap: () { Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => WT()));},
                                        child:
                                        Column(
                                            children: [
                                              CircleAvatar(
                                                radius: 45.r,
                                                backgroundImage:AssetImage('assets/himanshi/ethnic.jpeg'),
                                                // backgroundColor: Colors.transparent,
                                              ),
                                              SizedBox(height: 4.h), // Spacing between the avatar and the text
                                              Text(
                                                "TRADITIONAL",
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                ),

                                              ),
                                            ]
                                        ),
                                      ),
                                      SizedBox(width: 18.0.h,),
                                      GestureDetector(
                                        onTap: () { Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => WW()));},
                                        child: Column(
                                            children: [

                                              CircleAvatar(
                                                radius: 45.r,
                                                backgroundImage:AssetImage('assets/himanshi/ww.jpg'),
                                                // backgroundColor: Colors.transparent,
                                              ),
                                              SizedBox(height: 4.h), // Spacing between the avatar and the text
                                              Text(
                                                "WESTERN",
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                ),

                                              ),
                                            ]
                                        ),
                                      ),
                                      SizedBox(width: 18.0.w,),
                                      GestureDetector(
                                        onTap: () { Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => WF()));},
                                        child: Column(
                                            children: [

                                              CircleAvatar(
                                                radius: 45.r,
                                                backgroundImage:AssetImage('assets/himanshi/SHO.png'),
                                                // backgroundColor: Colors.transparent,
                                              ),
                                              SizedBox(height: 4.h), // Spacing between the avatar and the text
                                              Text(
                                                "FOOTWEAR",
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                ),

                                              ),
                                            ]
                                        ),
                                      ),
                                    ]
                                )
                            ),
                            SizedBox(height: 40.0.h),
                            Row(
                              children: [
                                Text(
                                  'KIDS',
                                  style: TextStyle(
                                    fontSize: 24.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 20.0.h),
                            SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child:  Row(
                                    children: [
                                      GestureDetector(
                                        onTap: () { Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => KT()));},


                                        child:     Column(
                                            children: [
                                              CircleAvatar(
                                                radius: 45.r,
                                                backgroundImage:AssetImage('assets/himanshi/kidsethnic.jpeg'),
                                                // backgroundColor: Colors.transparent,
                                              ),
                                              SizedBox(height: 4.h), // Spacing between the avatar and the text
                                              Text(
                                                "TRADITIONAL",
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                ),

                                              ),
                                            ]
                                        ),
                                      ),
                                      SizedBox(width: 18.0.w,),
                                      GestureDetector(
                                        onTap: () { Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => KW()));},
                                        child: Column(
                                            children: [

                                              CircleAvatar(
                                                radius: 45.r,
                                                backgroundImage:AssetImage('assets/himanshi/wk.jpg'),
                                                // backgroundColor: Colors.transparent,
                                              ),
                                              SizedBox(height: 4.h), // Spacing between the avatar and the text
                                              Text(
                                                "WESTERN",
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                ),

                                              ),
                                            ]
                                        ),
                                      ),
                                      SizedBox(width: 18.0.w,),
                                      GestureDetector(
                                        onTap: () { Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => KF()));},
                                        child: Column(
                                            children: [
                                              CircleAvatar(
                                                radius: 45.r,
                                                backgroundImage:AssetImage('assets/himanshi/shoo.jpg'),
                                                // backgroundColor: Colors.transparent,
                                              ),
                                              SizedBox(height: 4.h), // Spacing between the avatar and the text
                                              Text(
                                                "FOOTWEAR",
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                ),

                                              ),
                                            ]
                                        ),
                                      ),
                                    ]
                                )
                            )
                          ]
                      )
                  ),

            ),


    );

  }
}
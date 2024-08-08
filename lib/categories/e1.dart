import 'package:flutter/material.dart';
import 'package:ecomm/smart gadget/laptops.dart';
import 'package:ecomm/smart gadget/phones.dart';
import 'package:ecomm/smart gadget/smartwatch.dart';
import 'package:ecomm/smart gadget/Headphones.dart';
import 'package:ecomm/smart gadget/tablet.dart';
import 'package:ecomm/smart gadget/powerbank.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SG extends StatefulWidget {

  @override
  State<SG> createState() => _SGState();
}

class _SGState extends State<SG> {
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
                    Text('  Smart\nGadgets',style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Colors.blue,),
                    Padding(
                        padding: const EdgeInsets.only(left: 30.0).r,
                        child:
                        Row(
                          children: [
                            Image.asset('assets/bulbul/g.png',
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
                                  builder: (context) => AC()
                              ),);
                          },
                          child: Column(
                              children: [
                                CircleAvatar(
                                  radius: 45.r,
                                  backgroundImage: AssetImage(
                                      'assets/bulbul/laptop.jpg'),
                                ),
                                Text('Laptops',
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
                                  builder: (context)=>Phone()
                              ));},
                          child: Column(
                              children: [
                                CircleAvatar(
                                  radius: 45.r,
                                  backgroundImage: AssetImage(
                                      'assets/bulbul/iphone.jpg'),
                                ),
                                Text('Phones',
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
                                  builder: (context)=>SW()
                              ));
                          },
                          child: Column(
                              children: [
                                CircleAvatar(
                                  radius: 45.r,
                                  backgroundImage: AssetImage(
                                      'assets/bulbul/smartwatch.jpg'),
                                ),
                                Text('Smart Watch',
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
                                  builder: (context)=>Head()
                              ));
                          },
                          child: Column(
                              children: [
                                CircleAvatar(
                                  radius: 45.r,
                                  backgroundImage: AssetImage(
                                      'assets/bulbul/headphones.jpg'),
                                ),
                                Text('Headphones',
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
                                  builder: (context)=>Tablet()
                              ));},
                          child: Column(
                              children: [
                                CircleAvatar(
                                  radius: 45.r,
                                  backgroundImage: AssetImage('assets/bulbul/tabs.jpg'),
                                ),
                                Text('Tablet',
                                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                                ),
                              ]
                          ),
                        ),
                        SizedBox(width: 20.0.w),
                        GestureDetector(
                          onTap: () {Navigator.push(context,
                              MaterialPageRoute(builder: (context)=>PB()
                              ));},
                          child: Column(
                              children: [
                                CircleAvatar(
                                  radius: 45.r,
                                  backgroundImage: AssetImage(
                                      'assets/bulbul/powerbank.jpeg'),
                                ),
                                Text('PowerBank',
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
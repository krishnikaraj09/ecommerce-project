import 'package:flutter/material.dart';
import 'package:ecomm/groceries/g1.dart';
import 'package:ecomm/groceries/g2.dart';
import 'package:ecomm/groceries/g3.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.only(left: 18.0,top: 25).r,
          child:Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [
                          Colors.white,
                          Colors.white,
                          Colors.lightBlueAccent,
                        ]
                    ),
                  ),
                  height: 90.h,
                  child: Row(
                      children: [
                        Text('Grocery ', style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,),
                        ),
                        Icon(Icons.arrow_forward_ios_outlined, color: Colors.blue),
                        Padding(padding: const EdgeInsets.only(left: 100.0).r,
                          child: Row(
                            children: [
                              Image.asset('assets/rakshita/file.png')
                            ],
                          ),
                        )
                      ]
                  ),
                ),
                SizedBox(height: 30.0.h,),
                Padding(
                  padding: const EdgeInsets.all(5.0).w,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'For you',
                          style: TextStyle(fontSize: 24.0,fontWeight: FontWeight.bold,),
                        ),
                        SizedBox(height: 30.0.h),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child:  Row(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Grocery3()));
                                  },
                                  child: Column(
                                    children: [
                                      CircleAvatar(
                                        radius: 45.r,
                                        backgroundImage: AssetImage('assets/rakshita/file3.png'),
                                      ),
                                      Text(
                                        'Essentials',
                                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 20.0.w,),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Grocery2()));
                                  },
                                  child: Column(
                                    children: [
                                      CircleAvatar(
                                        radius: 45.r,
                                        backgroundImage: AssetImage('assets/rakshita/file2.jpg'),
                                      ),
                                      Text(
                                        'Snacks',
                                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 20.0.w,),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Grocery()));
                                  },
                                  child: Column(
                                    children: [
                                      CircleAvatar(
                                        radius: 45.r,
                                        backgroundImage: AssetImage('assets/rakshita/f1.jpg'),
                                      ),
                                      Text(
                                        'Kitchen',
                                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                )
                              ]
                          ),
                        ),
                      ]
                  ),
                ),
              ]
          ),
        )
    );
  }
}
import 'package:flutter/material.dart';
import 'package:ecomm/uihelper.dart';
import 'package:ecomm/personal%20care/skin%20care/face_wash.dart';
import 'package:ecomm/personal care/skin care/sunscreen.dart';
import 'package:ecomm/personal care/skin care/face_creams.dart';
import 'package:ecomm/personal care/skin care/serums.dart';
import 'package:ecomm/personal care/skin care/lotions.dart';
import 'package:ecomm/personal care/skin care/scrub.dart';
import 'package:ecomm/personal care/hair care/shampoo.dart';
import 'package:ecomm/personal care/hair care/hair_color.dart';
import 'package:ecomm/personal care/hair care/hair_oil.dart';
import 'package:ecomm/personal care/hair care/hair_serum.dart';
import 'package:ecomm/personal care/hair care/conditioner.dart';
import 'package:ecomm/personal care/hair care/hair_tools.dart';
import 'package:ecomm/personal care/fragrance/unisex.dart';
import 'package:ecomm/personal care/fragrance/for_her.dart';
import 'package:ecomm/personal care/fragrance/for_him.dart';
import 'package:ecomm/personal care/fragrance/roll_on.dart';
import 'package:ecomm/personal care/makeup/face.dart';
import 'package:ecomm/personal care/makeup/lips.dart';
import 'package:ecomm/personal care/makeup/nails.dart';
import 'package:ecomm/personal care/makeup/eyes.dart';
import 'package:ecomm/personal care/makeup/tools_brush.dart';
import 'package:ecomm/personal care/makeup/kits.dart';
import 'package:ecomm/personal care/daily essentials/bath&spa.dart';
import 'package:ecomm/personal care/daily essentials/oral_care.dart';
import 'package:ecomm/personal care/daily essentials/women_hygiene.dart';
import 'package:ecomm/personal care/daily essentials/men_groooming.dart';
import 'package:ecomm/personal care/daily essentials/shaving.dart';
import 'package:ecomm/personal care/daily essentials/soaps.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PersonalCareCategories extends StatefulWidget {

  @override
  State<PersonalCareCategories> createState() => _PersonalCareCategoriesState();
}

class _PersonalCareCategoriesState extends State<PersonalCareCategories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(),
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
                    Text('Personal\n    Care',style: TextStyle(
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
                            Image.asset('assets/krishnika/pc/care2.png',
                            ),
                          ],
                        )
                    )
                  ],
                ),
              ),

              SizedBox(height: 30.0.h,),
              Row(
                children: [
                  Uihelper.CustomText('Skin Care'),
                ],
              ),
              SizedBox(height: 10.0.h),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                    children: [
                      //SizedBox(width: 5,),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => FaceWash()));
                        },
                        child: Column(
                            children: [
                              Uihelper.CustomCircleAvatar('assets/krishnika/skin/facewash/face wash.jpg'),
                              Uihelper.CustomText1('Face Wash'),
                            ]
                        ),
                      ),
                      SizedBox(width: 20.0.w,),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Sunscreen()));
                        },
                        child: Column(
                            children: [
                              Uihelper.CustomCircleAvatar('assets/krishnika/skin/suns/sunscreen.jpeg'),
                              Uihelper.CustomText1('Sunscreen'),
                            ]
                        ),
                      ),
                      SizedBox(width: 20.0.w,),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>FaceCreams()));
                        },
                        child: Column(
                            children: [
                              Uihelper.CustomCircleAvatar('assets/krishnika/skin/face creams.jpeg'),
                              Uihelper.CustomText1('Face Creams'),
                            ]
                        ),
                      ),
                    ] // backgroundColor: Colors.transparent,
                ),
              ),
              SizedBox(height: 30.0.w),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                    children: [
                      //SizedBox(width: 5,),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>Serums()));
                        },
                        child: Column(
                            children: [
                              Uihelper.CustomCircleAvatar('assets/krishnika/skin/serums.jpg'),
                              Uihelper.CustomText1('Serums'),
                            ]
                        ),
                      ),
                      SizedBox(width: 20.0.w),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>Lotions()));
                        },
                        child: Column(
                            children: [
                              Uihelper.CustomCircleAvatar('assets/krishnika/skin/lotions.jpg'),
                              Uihelper.CustomText1('Lotions'),
                            ]
                        ),
                      ),
                      SizedBox(width: 20.0.w),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>Scrub()));
                        },
                        child: Column(
                            children: [
                              Uihelper.CustomCircleAvatar('assets/krishnika/skin/scrub.jpeg'),
                              Uihelper.CustomText1('Scrub'),
                            ]
                        ),
                      ),
                    ] // backgroundColor: Colors.transparent,
                ),
              ),

              SizedBox(height: 30.0.h),
              Row(
                children: [
                  Uihelper.CustomText('Hair Care'),
                ],
              ),
              SizedBox(height: 10.0.h),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                    children: [
                      //SizedBox(width: 5,),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>Shampoo()));
                        },
                        child: Column(
                            children: [
                              Uihelper.CustomCircleAvatar('assets/krishnika/hair/shampoo.jpg'),
                              Uihelper.CustomText1('Shampoo'),
                            ]
                        ),
                      ),
                      SizedBox(width: 20.0.w,),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>HairOil()));
                        },
                        child: Column(
                            children: [
                              Uihelper.CustomCircleAvatar('assets/krishnika/hair/hair oil.jpg'),
                              Uihelper.CustomText1('Hair Oil'),
                            ]
                        ),
                      ),
                      SizedBox(width: 20.0.w,),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>HairSerum()));
                        },
                        child: Column(
                            children: [
                              Uihelper.CustomCircleAvatar('assets/krishnika/hair/hair serum.jpeg'),
                              Uihelper.CustomText1('Hair Serum'),
                            ]
                        ),
                      ),
                    ] // backgroundColor: Colors.transparent,
                ),
              ),
              SizedBox(height: 30.0.w),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                    children: [
                      //SizedBox(width: 5,),
                      GestureDetector(
                        onTap: () {Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>Conditioner()));},
                        child: Column(
                            children: [
                              Uihelper.CustomCircleAvatar('assets/krishnika/hair/conditioner.jpg'),
                              Uihelper.CustomText1('Conditioner\n'),
                            ]
                        ),
                      ),
                      SizedBox(width: 20.0.w),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>HairColor()));
                        },
                        child: Column(
                            children: [
                              Uihelper.CustomCircleAvatar('assets/krishnika/hair/hair color.jpeg'),
                              Uihelper.CustomText1('Hair Color\n'),
                            ]
                        ),
                      ),
                      SizedBox(width: 20.0.w),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>HairTools()));
                        },
                        child: Column(
                            children: [
                              Uihelper.CustomCircleAvatar('assets/krishnika/hair/hair tools & Accessories.jpg'),
                              Uihelper.CustomText1('   Hair Tools\n& Accessories'),
                            ]
                        ),
                      ),
                    ] // backgroundColor: Colors.transparent,
                ),
              ),

              SizedBox(height: 30.0.w,),
              Row(
                children: [
                  Uihelper.CustomText('Fragrance'),
                ],
              ),
              SizedBox(height: 10.0.h),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                    children: [
                      //SizedBox(width: 5,),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>Unisex()));
                        },
                        child: Column(
                            children: [
                              Uihelper.CustomCircleAvatar('assets/krishnika/Frag/unisex fragrances.jpg'),
                              Uihelper.CustomText1('   Unisex\nFragrances'),
                            ]
                        ),
                      ),
                      SizedBox(width: 20.0.w,),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>ForHer()));
                        },
                        child: Column(
                            children: [
                              Uihelper.CustomCircleAvatar('assets/krishnika/Frag/fragrances for her.jpg'),
                              Uihelper.CustomText1('For Her\n'),
                            ]
                        ),
                      ),
                      SizedBox(width: 20.0.w,),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>ForHim()));
                        },
                        child: Column(
                            children: [
                              Uihelper.CustomCircleAvatar('assets/krishnika/Frag/fragrances for him.jpeg'),
                              Uihelper.CustomText1('For Him\n'),
                            ]
                        ),
                      ),
                    ] // backgroundColor: Colors.transparent,
                ),
              ),
              SizedBox(height: 30.0.h),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                    children: [
                      //SizedBox(width: 5,),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>RollOn()));
                        },
                        child: Column(
                            children: [
                              Uihelper.CustomCircleAvatar('assets/krishnika/Frag/roll on.jpg'),
                              Uihelper.CustomText1('Roll On\n'),
                            ]
                        ),
                      ),
                      SizedBox(width: 220.0.w),
                    ] // backgroundColor: Colors.transparent,
                ),
              ),

              SizedBox(height: 30.0.h,),
              Row(
                children: [
                  Uihelper.CustomText('Makeup'),
                ],
              ),
              SizedBox(height: 10.0.h),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                    children: [
                      //SizedBox(width: 5,),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>Face()));
                        },
                        child: Column(
                            children: [
                              Uihelper.CustomCircleAvatar('assets/krishnika/makeup/face.jpeg'),
                              Uihelper.CustomText1('Face'),
                            ]
                        ),
                      ),
                      SizedBox(width: 20.0.w,),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>Lips()));
                        },
                        child: Column(
                            children: [
                              Uihelper.CustomCircleAvatar('assets/krishnika/makeup/lips.jpeg'),
                              Uihelper.CustomText1('lips'),
                            ]
                        ),
                      ),
                      SizedBox(width: 20.0.w,),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>Nails()));
                        },
                        child: Column(
                            children: [
                              Uihelper.CustomCircleAvatar('assets/krishnika/makeup/nails.jpeg'),
                              Uihelper.CustomText1('Nails'),
                            ]
                        ),
                      ),
                    ] // backgroundColor: Colors.transparent,
                ),
              ),
              SizedBox(height: 30.0.h),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                    children: [
                      //SizedBox(width: 5,),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>Eyes()));
                        },
                        child: Column(
                            children: [
                              Uihelper.CustomCircleAvatar('assets/krishnika/makeup/eyes.jpeg'),
                              Uihelper.CustomText1('Eyes\n'),
                            ]
                        ),
                      ),
                      SizedBox(width: 20.0.w),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>ToolsBrush()));
                        },
                        child: Column(
                            children: [
                              Uihelper.CustomCircleAvatar('assets/krishnika/makeup/tools & brushes.jpeg'),
                              Uihelper.CustomText1(' Tools &\nBrushes'),
                            ]
                        ),
                      ),
                      SizedBox(width: 20.0.w),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>Kits()));
                        },
                        child: Column(
                            children: [
                              Uihelper.CustomCircleAvatar('assets/krishnika/makeup/makeup kits.jpeg'),
                              Uihelper.CustomText1('Makeup\n    Kits'),
                            ]
                        ),
                      ),
                    ] // backgroundColor: Colors.transparent,
                ),
              ),

              SizedBox(height: 30.0.h,),
              Row(
                children: [
                  Uihelper.CustomText('Daily Essentials'),
                ],
              ),
              SizedBox(height: 10.0.h),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                    children: [
                      //SizedBox(width: 5,),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>Bathspa()));
                        },
                        child: Column(
                            children: [
                              Uihelper.CustomCircleAvatar('assets/krishnika/de/bath & spa.jpeg'),
                              Uihelper.CustomText1('Bath & Spa\n'),
                            ]
                        ),
                      ),
                      SizedBox(width: 20.0.w,),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>OralCare()));
                        },
                        child: Column(
                            children: [
                              Uihelper.CustomCircleAvatar('assets/krishnika/de/oral care.jpeg'),
                              Uihelper.CustomText1('Oral Care\n'),
                            ]
                        ),
                      ),
                      SizedBox(width: 20.0.w,),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>WomenHygiene()));
                        },
                        child: Column(
                            children: [
                              Uihelper.CustomCircleAvatar('assets/krishnika/de/women hygiene.jpeg'),
                              Uihelper.CustomText1(' Women\nHygiene'),
                            ]
                        ),
                      ),
                    ] // backgroundColor: Colors.transparent,
                ),
              ),
              SizedBox(height: 30.0.h),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                    children: [
                      //SizedBox(width: 5,),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>MenGroooming()));
                        },
                        child: Column(
                            children: [
                              Uihelper.CustomCircleAvatar('assets/krishnika/de/men grooming.jpeg'),
                              Uihelper.CustomText1('     Men\nGrooming'),
                            ]
                        ),
                      ),
                      SizedBox(width: 20.0.w),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>Shaving()));
                        },
                        child: Column(
                            children: [
                              Uihelper.CustomCircleAvatar('assets/krishnika/de/shaving essentials.jpeg'),
                              Uihelper.CustomText1('  Shaving\nEssentials'),
                            ]
                        ),
                      ),
                      SizedBox(width: 20.0.w),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>Soaps()));
                        },
                        child: Column(
                            children: [
                              Uihelper.CustomCircleAvatar('assets/krishnika/de/soaps.jpeg'),
                              Uihelper.CustomText1('Soaps\n'),
                            ]
                        ),
                      ),
                    ] // backgroundColor: Colors.transparent,
                ),
              ),
              SizedBox(height: 30.0.h,),
            ],
          ),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:ecomm/categories/e1.dart';
import 'package:ecomm/categories/fsn.dart';
import 'package:ecomm/categories/home.dart';
import 'package:ecomm/categories/personal_care_categories.dart';
import 'package:ecomm/categories/sports.dart';
import 'package:ecomm/categories/p2.dart';
import 'package:ecomm/categories/med.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CS extends StatefulWidget {
  const CS({super.key});

  @override
  State<CS> createState() => _CSState();
}

class _CSState extends State<CS> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.1,
          title: const Center
            (child: Text("CATEGORIES",
            style: TextStyle(
              color:Colors.black,
              fontWeight: FontWeight.bold,

              fontSize: 30.0,),
          ),
          ),
        ),
        body:
        SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child:Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
                          child:  GestureDetector(
                            onTap: () { Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => fsn())); },
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children:[ Container(
                                  height: 100.h,
                                  width: 150.w,
                                  decoration: BoxDecoration(
                                    // border: Border.all(color: Colors.black, width: 2.0),
                                    borderRadius: BorderRadius.circular(12),
                                    image: const DecorationImage(
                                      image: AssetImage('assets/himanshi/fsn.jpg'),
                                      fit: BoxFit.fill,
                                    ),
                                  ),

                                ),
                                  SizedBox(height: 10.h),
                                  const Text(
                                    'FASHION',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      // fontSize: 10.0,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,


                                    ),
                                  )
                                ]

                            ),
                          ),
                        ),
                        //SizedBox(width: 10),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 0.0),
                          child:  GestureDetector(
                            onTap: () { Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => home())); },
                            child:
                            Column(

                                children:[ Container(
                                  height: 100.h,
                                  width: 150.w,
                                  decoration: BoxDecoration(
                                    //    border: Border.all(color: Colors.black, width: 2.0),
                                    borderRadius: BorderRadius.circular(12),
                                    image: const DecorationImage(
                                      image: AssetImage('assets/himanshi/HOLD.jpg'),
                                      fit: BoxFit.fill,
                                    ),
                                  ),


                                ),
                                  SizedBox(height: 10.h),
                                  const Text(
                                    'HOME APPLIANCES',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      // fontSize: 10.0,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,

                                    ),
                                  )
                                ]
                            ),
                          ),
                        ) ]
                  ),
                  //SizedBox(width: 10),
                  Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
                          child:  GestureDetector(
                              onTap: () { Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SG())); },
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 100.h,
                                      width: 150.w,
                                      decoration: BoxDecoration(
                                        //  border: Border.all(color: Colors.black, width: 2.0),
                                        borderRadius: BorderRadius.circular(12),
                                        image: const DecorationImage(
                                          image: AssetImage('assets/himanshi/SGF.jpg'),
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                      //child: Image.asset('assets/image/HA.jpeg', fit: BoxFit.fill,),
                                    ),
                                    SizedBox(height: 10.h),
                                    const Text(
                                      'SMART GADGET',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        // fontSize: 10.0,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,


                                      ),
                                    )
                                  ]
                              )
                          ),
                        ),
                        //SizedBox(width: 10),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 0.0),
                          child:  GestureDetector(
                            onTap: () { Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PersonalCareCategories())); },
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,

                                children:[ Container(
                                  height: 100.h,
                                  width: 150.w,
                                  decoration: BoxDecoration(
                                    // border: Border.all(color: Colors.black, width: 2.0),
                                    borderRadius: BorderRadius.circular(12),
                                    image: const DecorationImage(
                                      image: AssetImage('assets/himanshi/skincare.jpg'),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                  SizedBox(height: 10.h),
                                  const Text(
                                    'PERSONAL CARE',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      // fontSize: 10.0,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )
                                ]
                            ),
                          ),
                        ),
                      ]
                  ),

                  //SizedBox(width: 10),
                  Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
                          child:  GestureDetector(
                            onTap: () { Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Sports())); },
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children:[ Container(
                                  height: 100.h,
                                  width: 150.w,
                                  decoration: BoxDecoration(
                                    // border: Border.all(color: Colors.black, width: 2.0),
                                    borderRadius: BorderRadius.circular(12),
                                    image: const DecorationImage(
                                      image: AssetImage('assets/himanshi/sports-.jpg'),
                                      fit: BoxFit.fill,
                                    ),
                                  ),

                                ),
                                  SizedBox(height: 10.h),
                                  const Text(
                                    'SPORTS',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      // fontSize: 10.0,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,


                                    ),
                                  )
                                ]

                            ),
                          ),
                        ),
                        //SizedBox(width: 10),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 0.0),
                          child:  GestureDetector(
                            onTap: () { Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomeScreen())); },
                            child:
                            Column(

                                children:[ Container(
                                  height: 100.h,
                                  width: 150.w,
                                  decoration: BoxDecoration(
                                    //    border: Border.all(color: Colors.black, width: 2.0),
                                    borderRadius: BorderRadius.circular(12),
                                    image: const DecorationImage(
                                      image: AssetImage('assets/himanshi/GROO.png'),
                                      fit: BoxFit.fill,
                                    ),
                                  ),


                                ),
                                  SizedBox(height: 10.h),
                                  const Text(
                                    'GROCERIES',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      // fontSize: 10.0,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,

                                    ),
                                  )
                                ]
                            ),
                          ),
                        ) ]
                  ),
                  Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 100.0,right: 100.0).r,
                          child:  GestureDetector(
                            onTap: () { Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Med())); },
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children:[ Container(
                                  height: 100.h,
                                  width: 150.w,
                                  decoration: BoxDecoration(
                                    // border: Border.all(color: Colors.black, width: 2.0),
                                    borderRadius: BorderRadius.circular(12),
                                    image: const DecorationImage(
                                      image: AssetImage('assets/himanshi/Medicines_share.jpg'),
                                      fit: BoxFit.fill,
                                    ),
                                  ),

                                ),
                                  SizedBox(height: 10.h),
                                  const Text(
                                    'Medicines',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      // fontSize: 10.0,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,

                                    ),
                                  )
                                ]

                            ),
                          ),
                        ),
                      ]
                  ),
                  SizedBox(height: 30.h,)
                ]
            ),
          ),
        )
    );
  }
}




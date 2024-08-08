import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ecomm/profile/address.dart';

class Saved_address extends StatefulWidget {

  @override
  State<Saved_address> createState() => _Saved_addressState();
}

class _Saved_addressState extends State<Saved_address> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Saved Addres'),
      ),
      backgroundColor:  Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 50.h,
              decoration: BoxDecoration(
                color: Colors.white70,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    blurRadius: 5,
                  ),
                ],
              ),
              child: ListTile(
                title: Text('+ Add a new address',
                style: TextStyle(
                  color: Colors.blueAccent,
                  fontWeight: FontWeight.w600,
                  fontSize: 20
                ),),
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Address()));
              },
            ),
          ],
        ),
      ),
    );
  }
}

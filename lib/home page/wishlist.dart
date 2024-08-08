import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ecomm/home%20page/main.dart';

class EmptyWishlistPage extends StatefulWidget {
  @override
  _EmptyWishlistPageState createState() => _EmptyWishlistPageState();
}

class _EmptyWishlistPageState extends State<EmptyWishlistPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wishlist'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.favorite,
              size: 64,
              color: Colors.red,
            ),
            SizedBox(height: 16.h),
            Text(
              'Your wishlist is empty',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.h),
            Text(
              'Start adding products to your wishlist ',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            SizedBox(height: 24.h),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => HomePage()));
              },
              child: Text('Start Shopping'),
            ),
          ],
        ),
      ),
    );
  }
}
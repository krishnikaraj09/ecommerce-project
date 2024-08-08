import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ecomm/home page/main.dart';

class Edit_profile extends StatefulWidget {

  @override
  State<Edit_profile> createState() => _Edit_profileState();
}

class _Edit_profileState extends State<Edit_profile> {
  final _formKey = GlobalKey<FormState>();
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _mobileNumberController = TextEditingController();
  final _emailIDController = TextEditingController();

  void dispose() {
    _firstNameController.dispose();
    _lastNameController.dispose();
    _mobileNumberController.dispose();
    _emailIDController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Edit Profile'),
      ),
      backgroundColor:  Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(padding: const EdgeInsets.only(left: 10.0,right: 10.0).r,
              child:Container(
                padding: const EdgeInsets.all(1.0).w,
                decoration: BoxDecoration(
                  color:Colors.white,
                ),
                child: Form(
                  key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(height: 60.0.h),
                    TextFormField(
                      controller: _firstNameController,
                      decoration: InputDecoration(
                        labelText: 'First Name',
                        prefixIcon: Icon(Icons.person_outline),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your first name';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 10.0.h),
                    TextFormField(
                      controller: _lastNameController,
                      decoration: InputDecoration(
                        labelText: 'Last Name',
                        prefixIcon: Icon(Icons.person_outline),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your last name';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 20.0.h),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueAccent,
                        //minimumSize: Size(double.infinity,50),// Background color
                      ),
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {// Process login
                          print('Login successful!');

                          Navigator.pushReplacement(context,
                              MaterialPageRoute(
                                  builder: (context)=>HomePage()));
                        }
                        },
                      child: Text('SUBMIT',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),),
                    ),
                    SizedBox(height: 20.0.h),
                    Row(
                      children: [
                        Expanded(
                        child: TextFormField(
                            controller: _mobileNumberController,
                            decoration: InputDecoration(
                              labelText: 'Mobile Number',
                              prefixIcon: Icon(Icons.contacts),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your mobile number';
                              }
                              return null;
                            }
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 0.0).r,
                          child: TextButton(
                              child: Text(
                                "Update",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue),
                              ),
                              onPressed: () {}
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10.0.h),
                    Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            controller: _emailIDController,
                            decoration: InputDecoration(
                              labelText: 'Email Id',
                              prefixIcon: Icon(Icons.email),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your email address';
                              }
                              if (!value.contains('@')) {
                                return 'Please enter a valid email address';
                              }
                              return null;
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 0.0).r,
                          child: TextButton(
                              child: Text(
                                "Update",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue),
                              ),
                              onPressed: () {}
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 30.0.h),
                  ],
                ),
              ),
            ),
            ),
          ],
        ),
      ),
    );
  }
}

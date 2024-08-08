import 'package:flutter/material.dart';
import 'package:ecomm/login.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpForm extends StatefulWidget {
  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  bool _isPasswordVisible = true;
  bool _isConfirmPasswordVisible = true;

  @override
  void initState() {
    super.initState();
    // Add a listener to the text field controller
    _passwordController.addListener(() {
      setState(() {});
    });
    _confirmPasswordController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _firstNameController.dispose();
    _lastNameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Colors.white,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(padding: const EdgeInsets.only(top: 100.0,left: 10.0,right: 10.0).r,
                child:Container(
                  padding: const EdgeInsets.all(10.0).w,
                  decoration: BoxDecoration(
                    color:Colors.white,
                  ),
                    child: Form(
                      key: _formKey,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Sign Up',
                              style: TextStyle(
                                fontSize: 34.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(height: 60.0.h),
                            TextFormField(
                              controller: _firstNameController,
                              decoration: InputDecoration(
                                labelText: 'First Name',
                                prefixIcon: Icon(Icons.person),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12.0), // Same radius for focused state
                                  borderSide: BorderSide(color: Colors.blue, width: 2.0), // Border color and width when focused
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12.0), // Same radius for enabled state
                                  borderSide: BorderSide(color: Colors.grey, width: 1.0), // Border color and width when not focused
                                ),
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter your first name';
                                }
                                return null;
                              },
                            ),
                            SizedBox(height: 10.h),
                            TextFormField(
                              controller: _lastNameController,
                              decoration: InputDecoration(
                                labelText: 'Last Name',
                                prefixIcon: Icon(Icons.person),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12.0), // Same radius for focused state
                                  borderSide: BorderSide(color: Colors.blue, width: 2.0), // Border color and width when focused
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12.0), // Same radius for enabled state
                                  borderSide: BorderSide(color: Colors.grey, width: 1.0), // Border color and width when not focused
                                ),
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter your last name';
                                }
                                return null;
                              },
                            ),
                            SizedBox(height: 10.h),
                            TextFormField(
                              controller: _emailController,
                              decoration: InputDecoration(
                                labelText: 'Email Address',
                                prefixIcon: Icon(Icons.email),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12.0), // Same radius for focused state
                                  borderSide: BorderSide(color: Colors.blue, width: 2.0), // Border color and width when focused
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12.0), // Same radius for enabled state
                                  borderSide: BorderSide(color: Colors.grey, width: 1.0), // Border color and width when not focused
                                ),
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
                            SizedBox(height: 10.h),
                            TextFormField(
                              controller: _passwordController,
                              obscureText: _isPasswordVisible,
                              decoration: InputDecoration(
                                labelText: 'Enter Password',
                                prefixIcon: Icon(Icons.lock),
                                suffixIcon: _passwordController.text.isEmpty
                                    ? null // No suffix icon if text field is empty
                                    : GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      _isPasswordVisible=!_isPasswordVisible;
                                    });
                                  },
                                  child: Icon(_isPasswordVisible
                                      ? Icons.visibility_off
                                      : Icons.visibility),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12.0), // Same radius for focused state
                                  borderSide: BorderSide(color: Colors.blue, width: 2.0), // Border color and width when focused
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12.0), // Same radius for enabled state
                                  borderSide: BorderSide(color: Colors.grey, width: 1.0), // Border color and width when not focused
                                ),
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter your password';
                                }
                                if (value.length < 6) {
                                  return 'Password must be at least 6 characters long';
                                }
                                return null;
                              },
                            ),
                            SizedBox(height: 10.h),
                            TextFormField(
                              controller: _confirmPasswordController,
                              obscureText: _isConfirmPasswordVisible,
                              decoration: InputDecoration(
                                labelText: 'Confirm Password',
                                prefixIcon: Icon(Icons.lock),
                                suffixIcon: _confirmPasswordController.text.isEmpty
                                    ? null // No suffix icon if text field is empty
                                    : GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      _isConfirmPasswordVisible=!_isConfirmPasswordVisible;
                                    });
                                  },
                                  child: Icon(_isConfirmPasswordVisible
                                      ? Icons.visibility_off
                                      : Icons.visibility),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12.0), // Same radius for focused state
                                  borderSide: BorderSide(color: Colors.blue, width: 2.0), // Border color and width when focused
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12.0), // Same radius for enabled state
                                  borderSide: BorderSide(color: Colors.grey, width: 1.0), // Border color and width when not focused
                                ),
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please confirm your password';
                                }
                                if (value != _passwordController.text) {
                                  return 'Passwords do not match';
                                }
                                return null;
                              },
                            ),
                            SizedBox(height: 30.0.h),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blueAccent,
                                minimumSize: Size(double.infinity,50),// Background color
                              ),
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                  // Process the form
                                  print('First Name: ${_firstNameController.text}');
                                  print('Last Name: ${_lastNameController.text}');
                                  print('Email Address: ${_emailController.text}');
                                  print('Password: ${_passwordController.text}');
                                  print('Confirm Password: ${_confirmPasswordController.text}');

                                  Navigator.push(context,
                                      MaterialPageRoute(
                                          builder: (context)=>LoginForm()));
                                }
                              },
                              child: Text('REGISTER',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),),
                            ),
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
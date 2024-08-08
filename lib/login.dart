import 'package:flutter/material.dart';
import 'package:ecomm/sign up.dart';
import 'package:ecomm/home%20page/main.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool pass_enable = true;
  bool _isTextFieldEmpty = true;

  @override
  void initState() {
    super.initState();
    // Add a listener to the text field controller
    _passwordController.addListener(() {
      setState(() {
        _isTextFieldEmpty = _passwordController.text.isEmpty;
      });
    });
  }

  @override
  void dispose(){
    _emailController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Colors.white,
      body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(padding: const EdgeInsets.only(top: 170.0,left: 10.0,right: 10.0).r,
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
                          'LOGIN',
                          style: TextStyle(
                            fontSize: 34.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 60.0.h),
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
                              return 'Please enter your email';
                            }
                            if (!value.contains('@')) {
                              return 'Please enter a valid email';
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: 10.0.h),
                        TextFormField(
                          controller: _passwordController,
                          obscureText: pass_enable,
                          decoration: InputDecoration(
                            labelText: 'Enter Password',
                            prefixIcon: Icon(Icons.lock),
                            suffixIcon: _isTextFieldEmpty
                                ? null // No suffix icon if text field is empty
                            : GestureDetector(
                              onTap: () {
                                setState(() {
                                  pass_enable=!pass_enable;
                                });
                              },
                              child: Icon(pass_enable
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
                            return null;

                          },
                        ),
                        SizedBox(height: 30.0.h ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blueAccent,
                            minimumSize: Size(double.infinity,50),// Background color
                          ),
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {// Process login
                              print('Login successful!');

                              Navigator.pushReplacement(context,
                                  MaterialPageRoute(
                                      builder: (context)=>HomePage()));
                            }
                            },
                            child: Text('LOGIN',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),),
                        ),
                        SizedBox(height: 30.0.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Dont have an account?',),
                            TextButton(

                              onPressed: () {
                                Navigator.push(context,
                                    MaterialPageRoute(
                                        builder: (context)=>SignUpForm()));
                                },
                              child: Text('Sign Up',
                                style: TextStyle(
                                  color: Colors.blueAccent,
                                  fontSize: 20,
                                ),),
                            ),
                          ],
                        )
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
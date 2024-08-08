import 'package:flutter/material.dart';
import 'package:ecomm/profile/saved address.dart';

class Address extends StatefulWidget {

  @override
  State<Address> createState() => _AddressState();
}

class _AddressState extends State<Address> {
  final _formKey = GlobalKey<FormState>();
  final _fullNameController = TextEditingController();
  final _phoneNumberController = TextEditingController();
  final _pincodeController = TextEditingController();
  final _stateController = TextEditingController();
  final _cityController = TextEditingController();
  final _houseBuildingController = TextEditingController();
  final _roadAreaColonyController = TextEditingController();

  @override
  void dispose() {
    _fullNameController.dispose();
    _phoneNumberController.dispose();
    _pincodeController.dispose();
    _stateController.dispose();
    _cityController.dispose();
    _houseBuildingController.dispose();
    _roadAreaColonyController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Add Delivery Address'),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextFormField(
                  controller: _fullNameController,
                  decoration: InputDecoration(
                    labelText: 'Full Name',
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0), // Same radius for focused state
                      borderSide: BorderSide(color: Colors.blue, width: 2.0), // Border color and width when focused
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0), // Same radius for enabled state
                      borderSide: BorderSide(color: Colors.grey, width: 1.0), // Border color and width when not focused
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your full name';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 16),
                TextFormField(
                  controller: _phoneNumberController,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    labelText: 'Phone Number',
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0), // Same radius for focused state
                      borderSide: BorderSide(color: Colors.blue, width: 2.0), // Border color and width when focused
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0), // Same radius for enabled state
                      borderSide: BorderSide(color: Colors.grey, width: 1.0), // Border color and width when not focused
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your phone number';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: TextButton(
                    onPressed: () {  },
                    child: Text( '+ Add Alternate Phone Number',
                        style: TextStyle(
                          color: Colors.blue,
                          //decoration: TextDecoration.underline,
                        )
                  ),
                  ),
                ),
                  SizedBox(height: 16),
                  Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          controller: _pincodeController,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            labelText: 'Pincode',
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0), // Same radius for focused state
                              borderSide: BorderSide(color: Colors.blue, width: 2.0), // Border color and width when focused
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0), // Same radius for enabled state
                              borderSide: BorderSide(color: Colors.grey, width: 1.0), // Border color and width when not focused
                            ),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your pincode';
                            }
                            return null;
                          },
                        ),
                      ),
                      SizedBox(width: 16),
                      ElevatedButton(
                        onPressed: () {
                          // Implement your functionality here
                        },
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white, // Text color
                          backgroundColor: Colors.blue,   // Button color
                          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                          textStyle: TextStyle(fontSize: 16),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min, // Use min to fit content
                          children: [
                            Icon(Icons.location_on), // Prefix icon
                            SizedBox(width: 8), // Space between icon and text
                            Text('Use my location'),
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 16),
                  Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          controller: _stateController,
                          decoration: InputDecoration(
                            labelText: 'State',
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0), // Same radius for focused state
                              borderSide: BorderSide(color: Colors.blue, width: 2.0), // Border color and width when focused
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0), // Same radius for enabled state
                              borderSide: BorderSide(color: Colors.grey, width: 1.0), // Border color and width when not focused
                            ),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your state';
                            }
                            return null;
                          },
                        ),
                      ),
                      SizedBox(width: 16),
                      Expanded(
                        child: TextFormField(
                          controller: _cityController,
                          decoration: InputDecoration(
                            labelText: 'City',
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0), // Same radius for focused state
                              borderSide: BorderSide(color: Colors.blue, width: 2.0), // Border color and width when focused
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0), // Same radius for enabled state
                              borderSide: BorderSide(color: Colors.grey, width: 1.0), // Border color and width when not focused
                            ),
                            suffixIcon: Icon(Icons.search),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your city';
                            }
                            return null;
                          },
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  TextFormField(
                    controller: _houseBuildingController,
                    decoration: InputDecoration(
                      labelText: 'House No., Building Name',
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0), // Same radius for focused state
                        borderSide: BorderSide(color: Colors.blue, width: 2.0), // Border color and width when focused
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0), // Same radius for enabled state
                        borderSide: BorderSide(color: Colors.grey, width: 1.0), // Border color and width when not focused
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your house number or building name';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 16),
                  TextFormField(
                    controller: _roadAreaColonyController,
                    decoration: InputDecoration(
                      labelText: 'Road name, Area, Colony',
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0), // Same radius for focused state
                        borderSide: BorderSide(color: Colors.blue, width: 2.0), // Border color and width when focused
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0), // Same radius for enabled state
                        borderSide: BorderSide(color: Colors.grey, width: 1.0), // Border color and width when not focused
                      ),
                      suffixIcon: Icon(Icons.search),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your road name, area, or colony';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 16),
                  Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: TextButton(
                      onPressed: () {  },
                      child: Text( '+ Add Nearby Famous Shop/Mall/Landmark',
                          style: TextStyle(
                            color: Colors.blue,
                          )
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Type of address',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 16),
                  Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            Icon(Icons.home),
                            SizedBox(width: 8),
                            Text('Home'),
                          ],
                        ),
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.black, backgroundColor: Colors.grey[300],
                          padding: EdgeInsets.symmetric(
                              horizontal: 24, vertical: 12),
                          textStyle: TextStyle(fontSize: 16),
                        ),
                      ),
                      SizedBox(width: 20),
                      ElevatedButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            Icon(Icons.work),
                            SizedBox(width: 8),
                            Text('Work'),
                          ],
                        ),
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.black, backgroundColor: Colors.grey[300],
                          padding: EdgeInsets.symmetric(
                              horizontal: 24, vertical: 12),
                          textStyle: TextStyle(fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 32),
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {// Process login
                        print('Login successful!');

                        Navigator.pushReplacement(context,
                            MaterialPageRoute(
                                builder: (context)=>Saved_address()));
                      }
                    },
                    child: Text('Save Address'),
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(double.infinity,50),
                      foregroundColor: Colors.white, backgroundColor: Colors.orange,
                      padding: EdgeInsets.symmetric(
                          horizontal: 24, vertical: 16),
                      textStyle: TextStyle(fontSize: 18),
                    ),
                  ),
              ]
            ),
          ),
        ),
      ),
    );
  }
}




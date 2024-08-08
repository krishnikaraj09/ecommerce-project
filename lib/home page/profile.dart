import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ecomm/profile/edit profile.dart';
import 'package:ecomm/profile/saved address.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Profile'),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 40.0,
                    backgroundColor: Colors.black,
                    child: Icon(
                      Icons.person, // icon
                      size: 50.0,
                      color: Colors.white, // icon color
                    ),
                ),
              ],
            ),
          ),
          TextButton(
            style: TextButton.styleFrom(
              textStyle: TextStyle(
                height: 1.2,
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
            ),
            onPressed: () {},
            child:  Text('Add Picture',
            style: TextStyle(
              color: Colors.black
            ),),
          ),
          SizedBox(height: 40.0,),
          ListTile(
            leading: Icon(Icons.person_outlined),
            title: Text('Edit Profile'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(
                      builder: (context)=>Edit_profile()));
            },
          ),
          ListTile(
            leading: Icon(Icons.location_on_outlined),
            title: Text('Saved Addresses'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(
                      builder: (context)=>Saved_address()));
            },
          ),
        ],
      ),
    );
  }
}

// // import 'package:flutter/material.dart';
// // void main(){
// //   runApp(MaterialApp(
// //     debugShowCheckedModeBanner: false,
// //     home: Profile(),
// //   ));
// // }
// //
// // class Profile extends StatefulWidget {
// //   const Profile({super.key});
// //
// //   @override
// //   State<Profile> createState() => _ProfileState();
// // }
// //
// // class _ProfileState extends State<Profile> {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         centerTitle: true,
// //         title: const Text("Profile"),
// //       ),
// //       body: SingleChildScrollView(
// //         child: Column(
// //           children: [
// //             SizedBox(
// //               height: 115,
// //               width: 115,
// //               child: Stack(
// //                 fit: StackFit.expand,
// //                 children: [
// //                   CircleAvatar(
// //                     backgroundImage: AssetImage('assets/categories/care.png'),
// //                   ),
// //                   Positioned(
// //                     right: -12,
// //                     bottom: 0,
// //                     child: SizedBox(
// //                       height: 46,
// //                       width: 46,
// //                       child: IconButton(
// //                         icon: Image.asset('assets/categories/care.png'),
// //                         onPressed: () {},
// //                         highlightColor: Colors.green,
// //                         //style: I,
// //                       ),
// //                     )
// //                   )
// //                 ],
// //               ),
// //             )
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }
// import 'package:flutter/material.dart';
// void main(){
//   runApp(MaterialApp(
//     home: ProfilePage(),
//   ));
// }
//
// class ProfilePage extends StatefulWidget {
//   @override
//   _ProfilePageState createState() => _ProfilePageState();
// }
//
// class _ProfilePageState extends State<ProfilePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('My Profile'),
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back),
//           onPressed: () {
//             Navigator.pop(context);
//           },
//         ),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(20.0),
//         child: Column(
//           children: [
//             // Profile Picture
//             CircleAvatar(
//               radius: 50,
//               backgroundImage: NetworkImage('https://via.placeholder.com/150'),
//             ),
//             SizedBox(height: 20),
//
//             // Name and Email
//             Row(
//               children: [
//                 Text(
//                   'John Doe',
//                   style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//                 ),
//                 SizedBox(width: 10),
//                 Text(
//                   'johndoe@example.com',
//                   style: TextStyle(fontSize: 18, color: Colors.grey),
//                 ),
//               ],
//             ),
//             SizedBox(height: 20),
//
//             // Order History
//             Card(
//               child: Padding(
//                 padding: const EdgeInsets.all(16.0),
//                 child: Column(
//                   children: [
//                     Text(
//                       'Order History',
//                       style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                     ),
//                     SizedBox(height: 10),
//                     ListView.builder(
//                       shrinkWrap: true,
//                       physics: NeverScrollableScrollPhysics(),
//                       itemCount: 3,
//                       itemBuilder: (context, index) {
//                         return ListTile(
//                           title: Text('Order #${index + 1}'),
//                           subtitle: Text('Date: 2022-01-01'),
//                           trailing: Text('\$100.00'),
//                         );
//                       },
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             SizedBox(height: 20),
//
//             // Address
//             Card(
//               child: Padding(
//                 padding: const EdgeInsets.all(16.0),
//                 child: Column(
//                   children: [
//                     Text(
//                       'Address',
//                       style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                     ),
//                     SizedBox(height: 10),
//                     Text(
//                       '123 Main St, Anytown, USA 12345',
//                       style: TextStyle(fontSize: 18),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             SizedBox(height: 20),
//
//             // Payment Methods
//             Card(
//               child: Padding(
//                 padding: const EdgeInsets.all(16.0),
//                 child: Column(
//                   children: [
//                     Text(
//                       'Payment Methods',
//                       style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                     ),
//                     SizedBox(height: 10),
//                     ListTile(
//                       title: Text('Visa ***1234'),
//                       trailing: Icon(Icons.edit),
//                     ),
//                     ListTile(
//                       title: Text('PayPal'),
//                       trailing: Icon(Icons.edit),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             SizedBox(height: 20),
//
//             // Logout Button
//             ElevatedButton(
//               onPressed: () {
//                 // Logout logic here
//               },
//               child: Text('Logout'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// // class ProfilePage extends StatefulWidget {
// //   @override
// //   _ProfilePageState createState() => _ProfilePageState();
// // }
// //
// // class _ProfilePageState extends State<ProfilePage> {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('Profile'),
// //         leading: IconButton(
// //           icon: Icon(Icons.arrow_back),
// //           onPressed: () {
// //             Navigator.pop(context);
// //           },
// //         ),
// //       ),
// //       body: Padding(
// //         padding: const EdgeInsets.all(20.0),
// //         child: Column(
// //           children: [
// //             // Profile Picture
// //             CircleAvatar(
// //               radius: 50,
// //               backgroundImage: NetworkImage('https://via.placeholder.com/150'),
// //             ),
// //             SizedBox(height: 20),
// //
// //             // Name and Email
// //             Row(
// //               children: [
// //                 Text(
// //                   'John Doe',
// //                   style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
// //                 ),
// //                 SizedBox(width: 10),
// //                 Text(
// //                   'johndoe@example.com',
// //                   style: TextStyle(fontSize: 18, color: Colors.grey),
// //                 ),
// //               ],
// //             ),
// //             SizedBox(height: 20),
// //
// //             // Bio
// //             Text(
// //               'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sit amet nulla auctor, vestibulum magna sed, convallis ex.',
// //               style: TextStyle(fontSize: 18),
// //             ),
// //             SizedBox(height: 20),
// //
// //             // Buttons
// //             Row(
// //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// //               children: [
// //                 ElevatedButton(
// //                   onPressed: () {
// //                     // Edit Profile Button
// //                   },
// //                   child: Text('Edit Profile'),
// //                 ),
// //                 ElevatedButton(
// //                   onPressed: () {
// //                     // Logout Button
// //                   },
// //                   child: Text('Logout'),
// //                 ),
// //               ],
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }
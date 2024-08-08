import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:ecomm/categories/e1.dart';
import 'package:ecomm/categories/fsn.dart';
import 'package:ecomm/categories/sports.dart';
import 'package:ecomm/categories/personal_care_categories.dart';
import 'package:ecomm/home page/profile.dart';
import 'package:ecomm/categories/CS.dart';
import 'package:ecomm/home page/wishlist.dart';
import 'package:ecomm/home page/notification.dart';
import 'package:ecomm/login.dart';
import 'package:ecomm/cart.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedItem = 0;
  int active=0;
  final controller = PageController(viewportFraction: 0.8, keepPage: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.1,
        title: Text('CLICKnSHOP',
        style: TextStyle(
          color: Colors.black,
        ),),
        actions: <Widget>[
          IconButton(onPressed: (){
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => EmptyWishlistPage()));
            },
              icon: Icon(Icons.favorite, color: Colors.red, size: 30.0,)),
          IconButton(onPressed: (){
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Notify()));
            },
              icon: Icon(Icons.notifications, color: Colors.orangeAccent, size: 30.0,))
        ],
        backgroundColor: Colors.white,
      ),
      drawer: Drawer(
        backgroundColor: Colors.white70,
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('Krishnika Rajpurohit'),
              accountEmail: Text('rajpurohit.krishnika09@gmail.com'),
            currentAccountPicture: GestureDetector(
              child: CircleAvatar(
                backgroundColor: Colors.grey,
                child: Icon(Icons.person,color: Colors.white,),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.black,
            ),
            ),
            InkWell(
              onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => HomePage()));
              },
              child: ListTile(
                title: Text('Home page'),
                leading: Icon(Icons.home),
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ProfilePage()));
              },
              child: ListTile(
                title: Text('My account'),
                leading: Icon(Icons.account_circle),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('My orders'),
                leading: Icon(Icons.shopping_basket),
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => EmptyWishlistPage()));
              },
              child: ListTile(
                title: Text('Favourites'),
                leading: Icon(Icons.favorite),
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CS()));
              },
              child: ListTile(
                title: Text('Categories'),
                leading: Icon(Icons.dashboard),
              ),
            ),

            Divider(),
            InkWell(
              onTap: (){
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => LoginForm()));
              },
              child: ListTile(
                title: Text('Logout'),
                leading: Icon(Icons.logout),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('About'),
                leading: Icon(Icons.help),
              ),
            ),
          ],
        ),
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        margin: const EdgeInsets.only(top: 10).r,
        height: 60.0.h,
        width: 67.0.w,
        child: FloatingActionButton(
          backgroundColor: Colors.white,
          elevation: 0,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => CS()
              ),
            );
          },
          shape: RoundedRectangleBorder(
            side: BorderSide(width: 3,color: Colors.black12),
            borderRadius: BorderRadius.circular(100),
          ),
          child: Icon(
            Icons.dashboard,
            color: Colors.black,
          ),
        ),

      ),

      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
        child:NavigationBar(
            backgroundColor: Colors.white,
            indicatorColor: Colors.white,
            surfaceTintColor: Colors.black12,
            destinations: const [
              NavigationDestination(icon: Icon(Icons.home),label: 'Home'),
              NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
              NavigationDestination(icon: Icon(Icons.shopping_cart), label: 'Cart'),
              NavigationDestination(icon: Icon(Icons.shopping_basket), label: 'My Order'),
            ],
            selectedIndex: _selectedItem,
            onDestinationSelected: (setvalue) {
              setState(() {
                _selectedItem = setvalue;
              });
              if (setvalue == 0) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              }
              else if (setvalue == 1) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfilePage()),
                );
              }
              else if (setvalue == 2) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => EmptyCart()),
                );
              }
              else if (setvalue == 3) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => EmptyCart()),
                );
              }
            }
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0).w,
                child: Column(
                  children: [
                    Container(
                      height: 50.h,
                      decoration: BoxDecoration(
                        color: Colors.white70,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 5,
                            blurRadius: 5,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 16.0).r,
                            child: Icon(Icons.search),
                          ),
                          SizedBox(width: 16.w),
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Search CLICKnSHOP.in',
                              ),
                            ),
                          ),
                          Padding(

                            padding: const EdgeInsets.only(right: 1.0).r,
                            child: Row(
                              children: [
                                IconButton(onPressed: (){}, icon: Icon(Icons.mic)),
                                IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt)),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Container(
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(30.0)),
                  child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        CarouselSlider(
                          options: CarouselOptions(
                            viewportFraction: 1.5,
                            initialPage: 0,
                            enableInfiniteScroll: true,
                            reverse: false,
                            autoPlay: true,
                            autoPlayInterval: Duration(seconds: 3),
                            autoPlayAnimationDuration: Duration(milliseconds: 800),
                            autoPlayCurve: Curves.fastOutSlowIn,
                            enlargeCenterPage: true,
                            enlargeFactor: 0.3,
                            scrollDirection: Axis.horizontal,
                            onPageChanged: (index,reason){
                              setState(() {active=index;
                              });
                            },
                          ),
                          items: [
                            Image.asset('assets/krishnika/slider/dot-key-coupons.jpg',),
                            Image.asset('assets/krishnika/slider/e3.jpg',),
                            Image.asset('assets/krishnika/slider/laptop.jpg',),
                            Image.asset('assets/krishnika/slider/shoes.jpg',),
                            Image.asset('assets/krishnika/slider/watch.jpg',),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0).w,
                          child: AnimatedSmoothIndicator(
                              activeIndex: active,
                              count: 5,
                              effect: ScrollingDotsEffect(
                                activeStrokeWidth: 2.6,
                                activeDotScale: 0.7,
                                maxVisibleDots: 5,
                                radius: 8,
                                spacing: 6,
                                dotHeight: 10,
                                dotWidth: 15,
                                dotColor: Colors.white,
                                activeDotColor: Colors.black,)
                          ),
                        ),
                      ]
                  ),
                ),
              ),

              Padding(
                padding:  const EdgeInsets.all(16.0).w,
                    child: Text('Popular Categories',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                ),
              ),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(width: 15.w,),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => fsn()));
                      },
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 35.r,
                            backgroundImage: AssetImage('assets/krishnika/categories/women.jpg'),
                          ),
                          Text(
                            'Women\n',
                            style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 25.w,),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => fsn()));
                      },
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 35.r,
                            backgroundImage: AssetImage('assets/krishnika/categories/man.jpeg'),
                          ),
                          Text(
                            'Men\n',
                            style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 25.w,),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => fsn()));
                      },
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 35.r,
                            backgroundImage: AssetImage('assets/krishnika/categories/kid.jpeg'),
                          ),
                          Text(
                            'Kids\n',
                            style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 25.w,),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SG()));
                      },
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 35.r,
                            backgroundImage: AssetImage('assets/krishnika/categories/smart.jpeg'),
                          ),
                          Text(
                            '  Smart\nGadgets',
                            style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 25.w,),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PersonalCareCategories()));
                        },
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 35.r,
                            backgroundImage: AssetImage('assets/krishnika/categories/care.png'),
                          ),
                          Text(
                            'Personal\n   Care',
                            style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 25.w,),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Sports()));
                      },
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 35.r,
                            backgroundImage: AssetImage('assets/krishnika/categories/sport.jpeg'),
                          ),
                          Text(
                            'Sports\n',
                            style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 25.w,),
                  ],
                ),
              ),

              // Container(
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.center,
              //     children: [
              //       Container(
              //         clipBehavior: Clip.antiAlias,
              //         height: 240,
              //         width: 160,
              //         decoration: BoxDecoration(borderRadius: BorderRadius.circular(12.0)),
              //         child: Image.asset("assets/images/download (3).jpg",fit: BoxFit.cover,),
              //       ),
              //       SizedBox(
              //         width: 13,
              //       ),
              //       Container(
              //         clipBehavior: Clip.antiAlias,
              //         height: 240,
              //         width: 160,
              //         decoration: BoxDecoration(borderRadius: BorderRadius.circular(12.0)),
              //         child: Image.asset("assets/images/download (2).jpg",fit: BoxFit.cover,),
              //       ),
              //     ],
              //   ),
              // ),
              // SizedBox(
              //   height: 13,
              // ),
            ]
        ),
      ),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ecomm/cart.dart';

class Conditioner extends StatefulWidget {

  @override
  State<Conditioner> createState() => _ConditionerState();
}

class _ConditionerState extends State<Conditioner> {
  String _sortBy = 'Sort By';
  String _brand = 'Brand';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Conditioner",
          style: TextStyle(
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(
                      builder: (context)=>EmptyCart()));
            },
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.black,
              size: 30.0,
            ),
          ),
          SizedBox(width: 10.0.w),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0).w,
              child: _buildSearchBar(),
            ),
            SizedBox(height: 16.h),
            _buildFilters(),
            SizedBox(height: 16.h),
            ProductGrid(),
          ],
        ),
      ),
    );
  }

  Widget _buildSearchBar() {
    return Container(
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
                hintText: 'Search for products',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 1.0).r,
            child: Row(
              children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.mic)),
                IconButton(onPressed: () {}, icon: Icon(Icons.camera_alt)),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFilters() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        DropdownButton<String>(
          value: _sortBy,
          items: <String>['Sort By', 'Price', 'Rating'].map((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
          onChanged: (String? newValue) {
            setState(() {
              _sortBy = newValue!;
            });
          },
        ),
        ElevatedButton(
          onPressed: () {
            // Implement filter logic
          },
          child: Text('Filter'),
        ),
        DropdownButton<String>(
          value: _brand,
          items: <String>['Brand','Mamaearth','Tresemme','Sunsilk'].map((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
          onChanged: (String? newValue) {
            setState(() {
              _brand = newValue!;
            });
          },
        ),
      ],
    );
  }
}

class ProductGrid extends StatefulWidget {
  @override
  _ProductGridState createState() => _ProductGridState();
}

class _ProductGridState extends State<ProductGrid> {
  final List<Product> products = [
    Product('Dove Intense Repair Hair Conditioner', 'assets/krishnika/hair/conditioner/con1.jpg', 3.6, 436, 245.00,),
    Product('Mamaearth Onion Conditioner', 'assets/krishnika/hair/conditioner/con2.jpg', 6.1, 609, 349.00),
    Product('Tresemme Moisture Rich Conditioner', 'assets/krishnika/hair/conditioner/con3.jpg', 4.1, 440, 1399.00),
    Product('LOreal Paris Conditioner', 'assets/krishnika/hair/conditioner/con4.jpg', 5.0, 663, 249.00),
    Product('Sunsilk Lusciously Thick & Long Conditioner', 'assets/krishnika/hair/conditioner/con5.jpg', 4.5, 553, 93.00),
    Product('WOW Skin Science Hair Conditioner', 'assets/krishnika/hair/conditioner/con6.jpg', 4.5, 463, 495.00),
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(4.0).w,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 3,
        mainAxisSpacing: 10,
        childAspectRatio: 0.43,
      ),
      itemCount: products.length,
      itemBuilder: (context, index) {
        return ProductCard(product: products[index]);
      },
    );
  }
}

class Product {
  final String title;
  final String imageUrl;
  final double rating;
  final int ratingCount;
  final double price;

  Product(this.title, this.imageUrl, this.rating, this.ratingCount, this.price);
}

class ProductCard extends StatefulWidget {
  final Product product;

  ProductCard({required this.product});

  @override
  _ProductCardState createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  bool _isFavorite = false;
  String currencySymbol = '₹';

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ProductDetailScreen(product: widget.product)),
          );
        },
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0).w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  widget.product.imageUrl,
                  fit: BoxFit.cover,
                  height: 170.h,
                  width: double.infinity,
                ),
                SizedBox(height: 8.h),
                Text(
                  widget.product.title,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                SizedBox(height: 4.h),
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.yellow.shade600, size: 20),
                    SizedBox(width: 2.0.w),
                    IconButton(
                      icon: _isFavorite
                          ? Icon(Icons.favorite, color: Colors.red)
                          : Icon(Icons.favorite_border, color: Colors.red),
                      onPressed: () {
                        setState(() {
                          _isFavorite = !_isFavorite;
                        });
                      },
                    ),
                    SizedBox(width: 2.w),
                    Text(
                      '${widget.product.rating} (${widget.product.ratingCount})',
                      style: TextStyle(fontSize: 14),
                    ),
                  ],
                ),
                Spacer(),
                Text(
                  '$currencySymbol${widget.product.price.toStringAsFixed(2)}',
                  style: TextStyle(fontSize: 16),
                ),
                Spacer(),
              ],
            ),
          ),
        )
    );
  }
}

class ProductDetailScreen extends StatefulWidget {
  final Product product;
  String currencySymbol = '₹';

  ProductDetailScreen({required this.product});

  @override
  _ProductDetailScreenState createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  bool _isWishlisted = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(widget.product.title),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(16.0).w,
          child: Column(
            children: [
              Image.asset(
                widget.product.imageUrl,
                fit: BoxFit.cover,
                height: 400.h,
                width: double.infinity,
              ),
              SizedBox(height: 16.h),
              Text(
                widget.product.title,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16.h),
              Text(
                'Rating: ${widget.product.rating} (${widget.product.ratingCount})',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 16.h),
              Text(
                'Price: ${widget.currencySymbol}${widget.product.price.toStringAsFixed(2)}',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 25.0.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 150.w, // Set the width
                    height: 55.h, // Set the height
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black, // Set the background color
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(45)), // Set the shape
                      ),
                      onPressed: () {
                        // Add to cart logic
                      },
                      child: Text('ADD TO CART', style: TextStyle(fontSize: 14, color: Colors.white)), // Increase the font size
                    ),
                  ),
                  Container(
                    width: 130.w, // Set the width
                    height: 55.h, // Set the height
                    child: ElevatedButton(
                      onPressed: () {
                        // Buy now logic
                      },
                      child: Text('BUY NOW', style: TextStyle(fontSize: 14, color: Colors.black)), // Increase the font size
                    ),
                  ),
                  IconButton(
                    icon: Icon(_isWishlisted ? Icons.favorite : Icons.favorite_border, color: Colors.red,),
                    onPressed: () {
                      setState(() {
                        _isWishlisted = !_isWishlisted;
                      });
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
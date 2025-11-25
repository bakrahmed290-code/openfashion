import 'package:flutter/material.dart';
import 'package:openfashion/core/widgets/appbutton.dart';
import 'package:openfashion/features/product_details/place_order.dart';
import 'package:openfashion/features/product_details/ui/widgets/promocodeanddelivery.dart';

// ignore: must_be_immutable
class ProductDetails extends StatefulWidget {
  final String image;
  final String name;
  final String description;
  final double price;
  const ProductDetails({
    super.key,
    required this.image,
    required this.name,
    required this.description,
    required this.price,
  });

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  int numberOfItems = 1;
  double get totalPrice => widget.price * numberOfItems;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        leading: Icon(Icons.menu, color: Colors.white),
        title: Image.asset(
          'assets/images/Group.png',
          width: 100,
          color: Colors.white,
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
        actions: [
          Icon(Icons.search, color: Colors.white),
          SizedBox(width: 16),
          Icon(Icons.shopping_bag_outlined, color: Colors.white),
        ],
      ),
      body: Stack(
        children: [
          Positioned(
            top: 20,
            right: 0,
            left: 0,
            child: Image.asset('assets/images/10.png', width: 100, height: 150),
          ),
          Positioned(
            top: 40,
            right: 0,
            left: 0,
            child: Image.asset(
              'assets/images/October.png',
              width: 50,
              height: 50,
            ),
          ),
          Positioned(
            top: 100,
            right: 0,
            left: 0,
            child: Image.asset(
              'assets/images/Collection.png',
              width: 15,
              height: 15,
            ),
          ),
          Column(
            children: [
              SizedBox(height: 140),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(widget.image, width: 120, height: 150),
                  SizedBox(width: 15),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 10),
                        Text(
                          widget.name.toUpperCase(),
                          style: TextStyle(
                            fontFamily: 'Tenor_Sans',
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          widget.description,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontFamily: 'Tenor_Sans',

                            color: Colors.white70,
                            fontSize: 14,
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            FloatingActionButton.small(
                              heroTag: null,
                              onPressed: () {
                                if (numberOfItems > 1) {
                                  setState(() {
                                    numberOfItems--;
                                  });
                                }
                              },
                              shape: CircleBorder(),
                              backgroundColor: Colors.white12,
                              child: Icon(Icons.remove, color: Colors.white),
                            ),
                            SizedBox(width: 10),
                            Text(
                              numberOfItems.toString(),
                              style: TextStyle(
                                fontFamily: 'Tenor_Sans',
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(width: 10),
                            FloatingActionButton.small(
                              heroTag: null,
                              onPressed: () {
                                setState(() {
                                  numberOfItems++;
                                });
                              },
                              shape: CircleBorder(),
                              backgroundColor: Colors.white12,
                              child: Icon(Icons.add, color: Colors.white),
                            ),
                          ],
                        ),
                        SizedBox(height: 5),
                        Text(
                          '\$ ${widget.price * numberOfItems}',
                          style: TextStyle(
                            fontFamily: 'Tenor_Sans',
                            color: Color(0xFFDD8560),
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Divider(color: Colors.white54, height: 30),
              SizedBox(height: 5),
              Promocodeanddelivery(),
              SizedBox(height: 200),
              Row(
                children: [
                  Text(
                    'Est. Total'.toUpperCase(),
                    style: TextStyle(
                      fontFamily: 'Tenor_Sans',
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  Spacer(),
                  Text(
                    '\$ $totalPrice',
                    style: TextStyle(
                      fontFamily: 'Tenor_Sans',
                      color: Color(0xFFDD8560),
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              Spacer(),
              Appbutton(
                title: 'Checkout',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PlaceOrder(
                        image: widget.image,
                        name: widget.name,
                        description: widget.description,
                        price: widget.price,
                        quantity: numberOfItems,
                        totalPrice: totalPrice,
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

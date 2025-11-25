import 'package:flutter/material.dart';
import 'package:openfashion/core/widgets/appbutton.dart';
import 'package:openfashion/core/widgets/stack_app.dart';
import 'package:openfashion/features/addcard/ui/addcard.dart';
import 'package:openfashion/features/product_details/add_address.dart';
import 'package:openfashion/features/product_details/ui/widgets/custom_container.dart';
import 'package:openfashion/features/product_details/ui/widgets/custom_dailog.dart';

class PlaceOrder extends StatefulWidget {
  final String image;
  final String name;
  final String description;
  final double price;
  final int quantity;
  final double totalPrice;
  const PlaceOrder({
    super.key,
    required this.image,
    required this.name,
    required this.description,
    required this.price,
    required this.quantity,
    required this.totalPrice,
  });

  @override
  State<PlaceOrder> createState() => _PlaceOrderState();
}

class _PlaceOrderState extends State<PlaceOrder> {
  dynamic _savedAddress;
  dynamic _savedCard;

  void _openAddAddress(context) async {
    final adressDetails = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => AddAddress()),
    );

    if (adressDetails != null) {
      setState(() {
        _savedAddress = adressDetails;
      });
    }
  }

  void _openCard(context) async {
    final cardDetails = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => AddCard()),
    );

    if (cardDetails != null) {
      setState(() {
        _savedCard = cardDetails;
      });
    }
  }

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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 170, child: stackapp()),

          const SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'Shipping adress'.toUpperCase(),
              style: TextStyle(
                color: Color(0xFf888888),
                fontSize: 20,
                fontFamily: 'Tenor_Sans',
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: _savedAddress != null
                ? Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '${_savedAddress['firstName']} ${_savedAddress['lastName']}',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Tenor_Sans',
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            '${_savedAddress['address']}',
                            style: TextStyle(
                              color: Color(0xFf888888),
                              fontSize: 16,
                              fontFamily: 'Tenor_Sans',
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            '${_savedAddress['city']}',
                            style: TextStyle(
                              color: Color(0xFf888888),
                              fontSize: 16,
                              fontFamily: 'Tenor_Sans',
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            '${_savedAddress['phone']}',
                            style: TextStyle(
                              color: Color(0xFf888888),
                              fontSize: 16,
                              fontFamily: 'Tenor_Sans',
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      IconButton(
                        onPressed: () {
                          _openAddAddress(context);
                        },
                        icon: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  )
                : SizedBox.shrink(),
          ),
          _savedAddress == null
              ? GestureDetector(
                  onTap: () {
                    _openAddAddress(context);
                  },
                  child: customcontainer(
                    title: 'Add shipping adress',
                    icon: Icons.add,
                  ),
                )
              : SizedBox.shrink(),
          SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              'Shipping Method',
              style: TextStyle(
                color: Color(0xFf888888),
                fontSize: 20,
                fontFamily: 'Tenor_Sans',
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          customcontainer(
            title: 'Pickup at store',
            icon: Icons.arrow_forward_ios,
          ),
          SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              'Payment method',
              style: TextStyle(
                color: Color(0xFf888888),
                fontSize: 20,
                fontFamily: 'Tenor_Sans',
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 10),
          _savedCard != null
              ? Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    children: [
                      Image.asset('assets/images/MasterCard.png', width: 30),
                      SizedBox(width: 10),
                      Text(
                        'Master Card ending ',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Tenor_Sans',
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        '••••${_savedCard['number'].toString().substring(_savedCard['number'].length - 2)}',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ],
                  ),
                )
              : GestureDetector(
                  onTap: () {
                    _openCard(context);
                  },
                  child: customcontainer(
                    title: 'select payment method',
                    icon: Icons.arrow_forward_ios,
                  ),
                ),
          Spacer(),
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
                '\$ ${widget.totalPrice}',
                style: TextStyle(
                  fontFamily: 'Tenor_Sans',
                  color: Color(0xFFDD8560),
                  fontSize: 20,
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Appbutton(
            title: 'Checkout',
            onTap: () {
              showDialog(
                context: context,
                barrierDismissible: false,
                builder: (context) {
                  return Dialog(
                    child: CustomDialog(onSubmit: () {}, onCancel: () {}),
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}

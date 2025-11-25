import 'package:flutter/material.dart';

class Promocodeanddelivery extends StatelessWidget {
  const Promocodeanddelivery({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            SizedBox(width: 20),
            Image.asset(
              'assets/images/Vector.png',
              width: 30,
              color: Colors.white,
            ),
            SizedBox(width: 10),
            Text(
              'Add promo code',
              style: TextStyle(
                fontFamily: 'Tenor_Sans',
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ],
        ),
        Divider(color: Colors.white54, height: 30),
        SizedBox(height: 5),
        Row(
          children: [
            SizedBox(width: 20),
            Image.asset(
              'assets/images/Vector (1).png',
              width: 30,
              color: Colors.white,
            ),
            SizedBox(width: 10),
            Text(
              'Delivery',
              style: TextStyle(
                fontFamily: 'Tenor_Sans',
                color: Colors.white,
                fontSize: 16,
              ),
            ),
            Spacer(),
            Text(
              'Free',
              style: TextStyle(
                fontFamily: 'Tenor_Sans',
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ],
        ),
        Divider(color: Colors.white54, height: 30),
      ],
    );
  }
}

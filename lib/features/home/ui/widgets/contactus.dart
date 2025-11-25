import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

// ignore: camel_case_types
class contactus extends StatelessWidget {
  const contactus({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Ionicons.logo_instagram, color: Colors.white),
            SizedBox(width: 30),
            Icon(Ionicons.logo_twitter, color: Colors.white),
            SizedBox(width: 30),
            Icon(Ionicons.logo_facebook, color: Colors.white),
            SizedBox(width: 30),
            Icon(Ionicons.logo_youtube, color: Colors.white),
          ],
        ),
        SizedBox(height: 20),
        Image.asset('assets/images/12.png', width: 300),
        SizedBox(height: 20),
        Text(
          'support@openui.design',
          style: TextStyle(
            fontFamily: '  Tenor_Sans',
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        Text(
          '+60 825 876',
          style: TextStyle(
            fontFamily: 'Tenor_Sans',
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        Text(
          '08:00 - 22:00 - Everyday',
          style: TextStyle(
            fontFamily: '  Tenor_Sans',
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        SizedBox(height: 10),
        Image.asset('assets/images/12.png', width: 300),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'About US',
              style: TextStyle(fontFamily: 'Tenor_Sans', color: Colors.white),
            ),
            Text(
              'Contact Us',
              style: TextStyle(fontFamily: 'Tenor_Sans', color: Colors.white),
            ),
            Text(
              'Terms & Conditions',
              style: TextStyle(fontFamily: 'Tenor_Sans', color: Colors.white),
            ),
          ],
        ),
        SizedBox(height: 20),
        Container(
          width: double.infinity,
          decoration: BoxDecoration(color: Colors.grey[400]),
          child: Center(
            child: Text(
              'Copyright© OpenUI All Rights Reserved.',
              style: TextStyle(fontFamily: 'Tenor_Sans', color: Colors.black),
            ),
          ),
        ),
      ],
    );
  }
}

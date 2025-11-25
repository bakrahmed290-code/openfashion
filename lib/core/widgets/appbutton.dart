import 'package:flutter/material.dart';

class Appbutton extends StatelessWidget {
  final String title;
  final VoidCallback? onTap;
  const Appbutton({super.key, required this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: Colors.white,
        width: double.infinity,
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.shopping_bag_outlined, color: Colors.black, size: 30),
            SizedBox(width: 10),
            Text(
              title.toUpperCase(),
              style: TextStyle(
                fontFamily: 'Tenor_Sans',
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

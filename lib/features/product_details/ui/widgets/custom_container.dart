import 'package:flutter/material.dart';

class customcontainer extends StatelessWidget {
  final String title;
  final IconData icon;

  const customcontainer({super.key, required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      margin: EdgeInsets.all(10),
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white54),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Row(
        children: [
          Text(
            title,
            style: TextStyle(
              fontFamily: 'Tenor_Sans',
              color: Colors.white,
              fontSize: 16,
            ),
          ),
          Spacer(),
          Icon(icon, color: Colors.white),
        ],
      ),
    );
  }
}

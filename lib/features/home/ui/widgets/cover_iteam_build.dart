import 'package:flutter/material.dart';
import 'package:openfashion/features/home/ui/widgets/cover_model.dart';

// ignore: must_be_immutable, camel_case_types
class coveriteambuild extends StatelessWidget {
  int index;
  coveriteambuild({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(7),
            child: Image.asset(
              CoverModel.getCovers()[index].image,
              height: 360,
              width: 300,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 10),
          Text(
            CoverModel.getCovers()[index].title.toUpperCase(),
            style: TextStyle(
              letterSpacing: 2,
              color: Color(0xFFFCFCFC),
              fontFamily: 'Tenor_Sans',
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }
}

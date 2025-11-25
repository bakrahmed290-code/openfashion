import 'package:flutter/material.dart';
import 'package:openfashion/features/home/ui/widgets/prodictsmodel.dart';
import 'package:openfashion/features/product_details/ui/product_details.dart';

// ignore: must_be_immutable, camel_case_types
class productsiteam extends StatelessWidget {
  int index;
  productsiteam({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProductDetails(
                      image: Prodictsmodel.getProducts()[index].image,
                      name: Prodictsmodel.getProducts()[index].name,
                      description:
                          Prodictsmodel.getProducts()[index].description,
                      price: Prodictsmodel.getProducts()[index].price,
                    ),
                  ),
                );
              },
              child: Image.asset(Prodictsmodel.getProducts()[index].image),
            ),
          ),
          SizedBox(height: 5),
          Text(
            Prodictsmodel.getProducts()[index].name,
            style: TextStyle(
              color: Color(0xFFF9F9F9),
              fontFamily: 'Tenor_Sans',
            ),
          ),
          Text(
            Prodictsmodel.getProducts()[index].description,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(color: Colors.grey[300], fontFamily: 'Tenor_Sans'),
          ),
          Text(
            '\$${Prodictsmodel.getProducts()[index].price}',
            style: TextStyle(color: Color(0xFFDD8560)),
          ),
        ],
      ),
    );
  }
}

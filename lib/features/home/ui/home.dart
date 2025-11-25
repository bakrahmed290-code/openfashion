import 'package:flutter/material.dart';
import 'package:openfashion/features/home/ui/widgets/contactus.dart';
import 'package:openfashion/features/home/ui/widgets/cover_iteam_build.dart';
import 'package:openfashion/features/home/ui/widgets/cover_model.dart';
import 'package:openfashion/features/home/ui/widgets/prodictsmodel.dart';
import 'package:openfashion/features/home/ui/widgets/products_iteam_build.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        leading: Icon(Icons.menu, color: Colors.white),
        title: Image.asset('assets/images/Group.png', width: 100),
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
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 140),
                Image.asset('assets/images/image 20.png'),
                SizedBox(height: 10),
                GridView.builder(
                  padding: EdgeInsets.all(0),
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: Prodictsmodel.getProducts().length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 0,
                    crossAxisSpacing: 0,
                    childAspectRatio: 0.6,
                  ),
                  itemBuilder: (context, index) => productsiteam(index: index),
                ),
                Text(
                  'You May Also Like'.toUpperCase(),
                  style: TextStyle(
                    letterSpacing: 3,
                    color: Colors.white,
                    fontFamily: 'Tenor_Sans',
                    fontSize: 25,
                  ),
                ),
                Image.asset('assets/images/12.png', width: 200),
                SizedBox(height: 10),
                SizedBox(
                  height: 400,
                  child: ListView.builder(
                    itemCount: CoverModel.getCovers().length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return coveriteambuild(index: index);
                    },
                  ),
                ),
                SizedBox(height: 50),
                contactus(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

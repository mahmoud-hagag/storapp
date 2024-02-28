import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:storapp/models/product_model.dart';
import 'package:storapp/pages/category_product.dart';
import 'package:storapp/pages/favorite.dart';
import 'package:storapp/services/get_all_products.dart';
import 'package:storapp/widgets/custom_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  static String id = 'HomePage';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      appBar: AppBar(
        leadingWidth: 70,
        leading: IconButton(
          onPressed: () {
            Navigator.pushNamed(context, CategoryProduct.id);
          },
          icon: const Icon(
            Icons.category,
            color: Colors.black,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
              onPressed: () {
                Navigator.pushNamed(context, Favorite.id);
              },
              icon: const Icon(
                CupertinoIcons.heart_fill,
                color: Colors.red,
              ),
              color: Colors.black,
            ),
          ),
        ],
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'New turn',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 100),
        child: FutureBuilder<List<ProductModel>>(
          future: GetAllProducts().getAllProduct(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              List<ProductModel> products = snapshot.data!;
              return GridView.builder(
                  physics: const BouncingScrollPhysics(),
                  clipBehavior: Clip.none,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1.2,
                    crossAxisSpacing: 9,
                    mainAxisSpacing: 60,
                  ),
                  itemCount: products.length,
                  itemBuilder: (context, index) {
                    return CustomCard(
                      product: products[index],
                    );
                  });
            } else {
              return const Padding(
                padding: EdgeInsets.only(bottom: 600),
                child: Center(child: CircularProgressIndicator()),
              );
            }
          },
        ),
      ),
    );
  }
}

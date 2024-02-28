// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:storapp/models/product_model.dart';
import 'package:storapp/widgets/custom_card.dart';

// ignore: must_be_immutable
class Favorite extends StatelessWidget {
  const Favorite({super.key});
  static String id = 'Favorite';
  @override
  Widget build(BuildContext context) {
    List<ProductModel> favv = favProducts;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
          color: Colors.black,
        ),
        centerTitle: true,
        title: const Text(
          'Favorite products',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: favv.isNotEmpty
          ? Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, top: 100),
              child: GridView.builder(
                  physics: const BouncingScrollPhysics(),
                  clipBehavior: Clip.none,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1.2,
                    crossAxisSpacing: 9,
                    mainAxisSpacing: 60,
                  ),
                  itemCount: favv.length,
                  itemBuilder: (context, index) {
                    return CustomCard(
                      product: favv[index],
                    );
                  }),
            )
          : const Center(
              child: Text(
                'No favorite items yet!',
                style: TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:storapp/pages/favorite.dart';
import 'package:storapp/pages/home_page.dart';
import 'package:storapp/pages/products_of_category.dart';
import 'package:storapp/pages/update_product_page.dart';
import 'package:storapp/pages/category_product.dart';

void main() {
  runApp(const StoreApp());
}

class StoreApp extends StatelessWidget {
  const StoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        HomePage.id: (context) => const HomePage(),
        UpdateProductPage.id: (context) => const UpdateProductPage(),
        CategoryProduct.id:(context) => const CategoryProduct(),
        ProductOfCategory.id:(context) => const ProductOfCategory(),
        Favorite.id:(context) => const Favorite(),
      },
      initialRoute: HomePage.id,
    );
  }
}

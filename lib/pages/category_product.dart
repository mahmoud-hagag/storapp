import 'package:flutter/material.dart';
import 'package:storapp/widgets/custom_category_card.dart';

class CategoryProduct extends StatelessWidget {
  const CategoryProduct({super.key});
  static String id = 'CategoryProducts';
  @override
  Widget build(BuildContext context) {
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
          'Categorías',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: const Column(
        children: [
          CustomCategory(
              name: 'electronics',
              image: 'https://fakestoreapi.com/img/81Zt42ioCgL._AC_SX679_.jpg'),
          CustomCategory(
              name: 'jewelery',
              image:
                  'https://fakestoreapi.com/img/71YAIFU48IL._AC_UL640_QL65_ML3_.jpg'),
          CustomCategory(
              name: 'men\'s clothing',
              image: 'https://fakestoreapi.com/img/71li-ujtlUL._AC_UX679_.jpg'),
          CustomCategory(
              name: 'women\'s clothing',
              image: 'https://fakestoreapi.com/img/51Y5NI-I5jL._AC_UX679_.jpg'),
        ],
      ),
    );
  }
}

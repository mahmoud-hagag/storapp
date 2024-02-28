import 'package:flutter/material.dart';
import 'package:storapp/pages/products_of_category.dart';

class CustomCategory extends StatelessWidget {
  const CustomCategory({
    super.key,
    required this.image,
    required this.name,
  });
  final String image;
  final String name;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 70, 16, 0),
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, ProductOfCategory.id, arguments: name);
        },
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(
                  style: BorderStyle.solid,
                ),
                color: Colors.white,
                borderRadius: BorderRadius.circular(32),
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 30, 6, 0),
                child: Text(
                  name,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Positioned(
              top: -60,
              right: 22,
              child: Image.network(
                alignment: Alignment.center,
                image,
                height: 90,
                width: 110,
              ),
            )
          ],
        ),
      ),
    );
  }
}

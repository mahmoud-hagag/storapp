// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:storapp/models/product_model.dart';
import 'package:storapp/pages/update_product_page.dart';

// ignore: must_be_immutable
class CustomCard extends StatefulWidget {
  CustomCard({
    required this.product,
    super.key,
  });
  ProductModel product;
  @override
  State<CustomCard> createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, UpdateProductPage.id,
            arguments: widget.product);
      },
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            height: 140,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  blurRadius: 50,
                  spreadRadius: 20,
                  offset: const Offset(1, 1),
                  color: Colors.grey.withOpacity(.1),
                )
              ],
            ),
            child: Card(
              elevation: 11,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      widget.product.title.substring(0, 12),
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '\$ ${widget.product.price}',
                          style: const TextStyle(
                              fontSize: 13, fontWeight: FontWeight.w700),
                        ),
                        GestureDetector(
                          onTap: () {
                            widget.product.isFavorite =
                                !widget.product.isFavorite;
                            if (widget.product.isFavorite) {
                              if (!idProduct.contains(widget.product.id)) {
                                idProduct.add(widget.product.id);
                                favProducts.add(widget.product);
                              }
                            } else {
                              idProduct.remove(widget.product.id);
                              favProducts.remove(widget.product);
                            }
                            setState(() {});
                          },
                          child: Icon(
                            Icons.favorite_rounded,
                            color: !idProduct.contains(widget.product.id)
                                ? Colors.grey
                                : Colors.red,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: -40,
            right: 32,
            child: Image.network(
              alignment: Alignment.center,
              widget.product.image,
              height: 100,
              width: 110,
            ),
          )
        ],
      ),
    );
  }
}

List<ProductModel> favProducts = [];
List<int> idProduct = [];

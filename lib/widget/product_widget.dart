import 'package:cached_network_image/cached_network_image.dart';
import 'package:final_project/model/Product.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ProductWidget extends StatelessWidget {
  final Product product;

  const ProductWidget({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            width: 155,
            height: 170,
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
                color: Colors.grey[350], borderRadius: BorderRadius.circular(15)),
            child: Stack(
              children: [
                Center(
                  child: Row(
                    children: [
                      Expanded(
                        // Image.network(product.image!),
                      child: CachedNetworkImage(
                        imageUrl: product.image ?? '',
                        placeholder: (context, url) => SizedBox(
                            height: 15,
                            width: 15,
                            child:
                                FittedBox(child: CircularProgressIndicator())),
                        errorWidget: (context, url, error) => Icon(Icons.error),
                           ))
                    ],
                  ),
                ),
                Positioned(
                  right: 15,
                  top: 15,
                  child: CircleAvatar(
                      backgroundColor: Colors.black,
                      radius: 15,
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.favorite_border,
                            color: Colors.white,
                            size: 15,
                          ))),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 7,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        product.title ?? "No title",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Poppins'),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        '\$${product.price}',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Poppins'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

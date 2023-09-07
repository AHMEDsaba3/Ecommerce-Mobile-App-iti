import 'package:cached_network_image/cached_network_image.dart';
import 'package:final_project/model/Product.dart';
import 'package:final_project/page/ProductPage.dart';
import 'package:final_project/provider/favourite_provider.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';

class ProductWidget extends StatelessWidget {
  final Product product;

  const ProductWidget({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (_) => ProductPage(product: product),));
      },
      child: Container(
        child: Column(
          children: [
            Container(
              width: 155,
              height: 170,
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                  color: Colors.grey[350],
                  borderRadius: BorderRadius.circular(15)),
              child: Stack(
                children: [
                  Center(
                    child: Row(
                      children: [
                        Expanded(
                            // Image.network(product.image!),
                            child: CachedNetworkImage(
                          imageUrl: product.image ?? 'no image',
                          placeholder: (context, url) => SizedBox(
                              height: 15,
                              width: 15,
                              child: FittedBox(
                                  child: CircularProgressIndicator())),
                          errorWidget: (context, url, error) =>
                              Icon(Icons.error),
                        ))
                      ],
                    ),
                  ),
                  Positioned(
                    right: 15,
                    top: 15,
                    child: InkWell(
                      onTap: () => inFavouriteClicked(context),
                      child: CircleAvatar(
                          backgroundColor: Colors.black,
                          radius: 15,
                          child: IconButton(
                              onPressed: null,
                              icon: (Provider.of<FavouriteProvider>(
                                context,
                              ).isFavourite(product.id ?? 0)
                                  ? Icon(
                                      Icons.favorite,
                                      color: Colors.white,
                                      size: 15,
                                    )
                                  : Icon(
                                      Icons.favorite_border,
                                      color: Colors.white,
                                      size: 15,
                              )))),
                    ),
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
      ),
    );
  }

  void inFavouriteClicked(BuildContext context) {
    if (Provider.of<FavouriteProvider>(context, listen: false)
        .isFavourite(product.id ?? 0)) {
      Provider.of<FavouriteProvider>(context, listen: false)
          .removeProductFromFavourites(product.id ?? 0);
      return;
    }

    Provider.of<FavouriteProvider>(context, listen: false)
        .addProductToFavourites(product);
  }
}

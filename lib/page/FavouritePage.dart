import 'package:final_project/provider/favourite_provider.dart';
import 'package:final_project/widget/HomePageWidget.dart';
import 'package:final_project/widget/product_widget.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:provider/provider.dart';

class FavouritePage extends StatefulWidget {
  const FavouritePage({super.key});

  @override
  State<FavouritePage> createState() => _FavouritePageState();
}

class _FavouritePageState extends State<FavouritePage> {
  @override
  Widget build(BuildContext context) {
    return HomePageWidget(
        body:
            (Provider.of<FavouriteProvider>(context).favouriteProduct == null ||
                    (Provider.of<FavouriteProvider>(context)
                            .favouriteProduct
                            ?.isEmpty ??
                        false))
                ? const Center(
                    child: Text('No Favourite Products'),
                  )
                : SingleChildScrollView(
                    child: GridView.count(
                      physics: NeverScrollableScrollPhysics(),
                      childAspectRatio: .7,
                      crossAxisCount: 2,
                      shrinkWrap: true,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      children: Provider.of<FavouriteProvider>(context)
                              .favouriteProduct
                              ?.map((e) => ProductWidget(product: e))
                              .toList() ??
                          [],
                    ),
                  ),
        currentIndex: 2,
        leftLogo: EvaIcons.menu_2);
  }
}

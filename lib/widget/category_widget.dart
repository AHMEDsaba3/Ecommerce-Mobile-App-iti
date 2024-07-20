import 'package:final_project/provider/product_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CategoryWidget extends StatelessWidget {
  final String CateTitle ;

  const CategoryWidget({super.key,required this.CateTitle});

  @override
  Widget build(BuildContext context) {
    return Consumer<ProductProvider>(
      builder: (BuildContext context, ProductProvider productProvider, Widget? child) {
        return InkWell(
          onTap: () {
            productProvider.onChangeCategory(CateTitle);
          },
          child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                  backgroundColor: productProvider.selectedCategory == CateTitle?
                  Colors.black:Colors.white
              ),
              onPressed: null,
              child: Text(
                '${CateTitle}',
                style: TextStyle(
                    fontSize: 15,
                    fontFamily: 'Poppins',
                    color: productProvider.selectedCategory == CateTitle?
                    Colors.white:Colors.black,
                    fontWeight: FontWeight.w600),
              )),
        );
      },
    );
  }

}

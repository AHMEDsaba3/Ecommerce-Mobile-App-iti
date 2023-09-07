import 'dart:convert';
import 'package:final_project/Service/prefs_service.dart';
import 'package:flutter/material.dart';
import 'package:final_project/model/Product.dart';


class FavouriteProvider extends ChangeNotifier{
  List<Product>? favouriteProduct;
  final prefreceKey='favouriteProduct';
  bool isFavourite(int productId) =>
      (favouriteProduct?.any((e) => e.id == productId) ?? false);


  Future<void> getFavouriteProducts()async {
    await Future.delayed(const Duration(seconds: 1));
    if(PrefService.preferences?.getStringList(prefreceKey) == null)return ;
  var encodedList=  PrefService.preferences?.getStringList(prefreceKey);
  var decodedList= encodedList?.map((e) => jsonDecode(e)).toList() ?? [];
  favouriteProduct=decodedList.map((e) => Product.fromJson(e)).toList();
  notifyListeners();
  }
  void addProductToFavourites(Product product) async {
    var encodedList =
        PrefService.preferences?.getStringList(prefreceKey) ?? [];
    var encodedProduct = jsonEncode(product.toJson());
    encodedList.add(encodedProduct);
    await PrefService.preferences?.setStringList(prefreceKey, encodedList);
     getFavouriteProducts();
  }
  void removeProductFromFavourites(int id) async {
    var decodedList = PrefService.preferences
        ?.getStringList(prefreceKey)
        ?.map((e) => jsonDecode(e))
        .toList();

    decodedList?.removeWhere((element) => element['id'] == id);

    var encodedList = decodedList?.map((e) => jsonEncode(e)).toList();
    await PrefService.preferences
        ?.setStringList(prefreceKey, encodedList ?? []);

    await getFavouriteProducts();
  }

}
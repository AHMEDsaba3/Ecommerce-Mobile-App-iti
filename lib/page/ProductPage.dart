import 'package:cached_network_image/cached_network_image.dart';
import 'package:final_project/model/Product.dart';
import 'package:final_project/provider/favourite_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:provider/provider.dart';

class ProductPage extends StatefulWidget {
  final Product product;

  const ProductPage({super.key,required this.product});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  int index =1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[350],
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 53, left: 25, right: 25),
              child: Row(
                children: [
                  CircleAvatar(
                    child: IconButton(onPressed:() =>Navigator.pop(context) ,icon:Icon(EvaIcons.arrow_back,
                      color: Colors.white,) 
                      
                    ),
                    backgroundColor: Colors.black,
                  ),
                  Spacer(),
                  CircleAvatar(
                    child: Icon(
                      CupertinoIcons.bag,
                      color: Colors.black,
                    ),
                    backgroundColor: Colors.white70,
                  ),
                ],
              ),
            ),
            Container(
              width: double.maxFinite,
              height: 300,
              child: Center(
                child: CachedNetworkImage(
                  imageUrl: widget.product.image ?? 'no image',
                  placeholder: (context, url) => SizedBox(
                      height: 15,
                      width: 15,
                      child: FittedBox(
                          child: CircularProgressIndicator())),
                  errorWidget: (context, url, error) =>
                      Icon(Icons.error),
                ),
              )
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20,left: 25,right: 25),
              child: Row(children: [
                Spacer(),
                InkWell(
                  onTap: () => inFavouriteClicked(context),
                  child: CircleAvatar(
                    child:
                    IconButton(onPressed: null,
                    icon:(Provider.of<FavouriteProvider>(
                      context,
                    ).isFavourite(widget.product.id ?? 0)
                        ? const Icon(
                      Icons.favorite,
                      color: Colors.black,
                      size: 20,
                    )
                        : const Icon(
                      Icons.favorite_border,
                      color: Colors.black,
                      size: 20,
                    )
                    ),
                    ),
                    backgroundColor: Colors.white70,
                  ),
                ),

              ],),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30),
                        topLeft: Radius.circular(30))),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              widget.product.title ?? 'no Title',
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Poppins',
                                  fontSize: 18,
                                  color: Colors.black),
                            ),
                          ),
                          Spacer(),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.grey[350],
                                borderRadius: BorderRadius.circular(30)),
                            child: Row(
                              children: [
                                IconButton(
                                  onPressed: () { index--;
                                    setState(() {
                                    });
                                    },
                                  icon: Icon(
                                    FontAwesome.minus,
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  '${index}',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w700),
                                ),
                                IconButton(
                                    onPressed: (){
                                      index++;
                                      setState(() {
                                      });
                                    } ,
                                    icon: Icon(
                                      FontAwesome.plus,
                                      color: Colors.black,
                                    )),
                              ],
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        child: Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.orange,
                              size: 20,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.orange,
                              size: 20,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.orange,
                              size: 20,
                            ),
                            Icon(
                              Icons.star_half,
                              color: Colors.orange,
                              size: 20,
                            ),
                            Icon(
                              Icons.star_border,
                              color: Colors.orange,
                              size: 20,
                            ),
                            Text(
                              '(320 Review)',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Poppins',
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500),
                            ),
                            Spacer(),
                            Text(
                              'Available in stok',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Poppins',
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Row(
                        children: [
                          Text(
                            'Size',
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Poppins',
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Row(
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black),
                                borderRadius: BorderRadius.circular(30)),
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 30,
                              child: Text('S',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Poppins',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600)),
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black),
                                borderRadius: BorderRadius.circular(30)),
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 30,
                              child: Text('M',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Poppins',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600)),
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black),
                                borderRadius: BorderRadius.circular(30)),
                            child: CircleAvatar(
                              backgroundColor: Colors.black,
                              radius: 30,
                              child: Text('L',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Poppins',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600)),
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black),
                                borderRadius: BorderRadius.circular(30)),
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 30,
                              child: Text('XL',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Poppins',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600)),
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black),
                                borderRadius: BorderRadius.circular(30)),
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 30,
                              child: Text('XXL',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Poppins',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600)),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Row(
                        children: [
                          Text(
                            'Description',
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Poppins',
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              widget.product.description??'no description',
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontFamily: 'Poppins',
                                  fontSize: 11,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ],
                      ), //des
                      Spacer(),
                      Row(
                        children: [
                          Text(
                            '\$${widget.product.price!*index}',
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Poppins',
                                fontSize: 18,
                                fontWeight: FontWeight.w700),
                          ),
                          Spacer(),
                          SizedBox(
                            width: 200,
                            height: 50,
                            child: ElevatedButton(
                              style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.black)),
                                onPressed: null,
                                child: Row(
                                  children: [
                                    Icon(
                                      CupertinoIcons.bag,
                                      color: Colors.white,
                                    ),
                                    const SizedBox(
                                      width: 15,
                                    ),
                                    Text(
                                      'Add to cart',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'Poppins',
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ],
                                )),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
  void inFavouriteClicked(BuildContext context) {
    if (Provider.of<FavouriteProvider>(context, listen: false)
        .isFavourite(widget.product.id ?? 0)) {
      Provider.of<FavouriteProvider>(context, listen: false)
          .removeProductFromFavourites(widget.product.id ?? 0);
      return;
    }

    Provider.of<FavouriteProvider>(context, listen: false)
        .addProductToFavourites(widget.product);
  }
}

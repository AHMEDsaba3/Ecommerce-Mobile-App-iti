import 'package:final_project/constant/constant.dart';
import 'package:final_project/widget/HomePageWidget.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  int index = 1;

  @override
  Widget build(BuildContext context) {
    return HomePageWidget(
        body: Padding(
          padding:  EdgeInsets.symmetric(horizontal: widthR(25, context)),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    'My Cart',
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Poppins',
                        fontSize: sizeR(20, context),
                        color: Colors.black),
                  ),
                ],
              ),
               SizedBox(
                height: heightR(20, context),
              ),
              Row(
                children: [
                  Container(
                    height: heightR(80, context),
                    width: widthR(80, context),
                    color: Colors.red,
                  ),
                   SizedBox(
                    width: widthR(10, context),
                  ),
                  Container(
                    height: heightR(70, context),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Title',
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontFamily: 'Poppins',
                              fontSize: sizeR(16, context),
                              color: Colors.black),
                        ),
                        Spacer(),
                        Text('\$199.00',
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontFamily: 'Poppins',
                                fontSize: sizeR(16, context),
                                color: Colors.black)),
                      ],
                    ),
                  ),
                  Spacer(),
                  Container(
                    height: heightR(70, context),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          height: heightR(40, context),
                          decoration: BoxDecoration(
                              color: Colors.grey[350],
                              borderRadius: BorderRadius.circular(sizeR(30, context))),
                          child: Row(
                            children: [
                              IconButton(
                                onPressed: () {
                                  index--;
                                  setState(() {});
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
                                  onPressed: () {
                                    index++;
                                    setState(() {});
                                  },
                                  icon: Icon(
                                    FontAwesome.plus,
                                    color: Colors.black,
                                  )),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Divider(),
            ],
          ),
        ),
        currentIndex: 1,
        leftLogo: EvaIcons.arrow_back);
  }
}

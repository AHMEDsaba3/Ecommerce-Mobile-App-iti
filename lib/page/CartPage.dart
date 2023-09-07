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
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    'My Cart',
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Poppins',
                        fontSize: 20,
                        color: Colors.black),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Container(
                    width: 80,
                    height: 80,
                    color: Colors.red,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 70,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Title',
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontFamily: 'Poppins',
                              fontSize: 16,
                              color: Colors.black),
                        ),
                        Spacer(),
                        Text('\$199.00',
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontFamily: 'Poppins',
                                fontSize: 16,
                                color: Colors.black)),
                      ],
                    ),
                  ),
                  Spacer(),
                  Container(
                    height: 70,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          height: 40,
                          decoration: BoxDecoration(
                              color: Colors.grey[350],
                              borderRadius: BorderRadius.circular(30)),
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

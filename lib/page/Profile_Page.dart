import 'package:final_project/constant/constant.dart';
import 'package:final_project/widget/HomePageWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return HomePageWidget(
        body: getBody(context), currentIndex: 3, leftLogo: EvaIcons.arrow_back);
  }
}

Widget getBody(context) {
  return Padding(
    padding:  EdgeInsets.all(sizeR(25, context)),
    child: Container(
      child: Column(
        children: [
          Container(
            height: heightR(70, context),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(sizeR(10, context)),
                boxShadow: [
                  BoxShadow(blurRadius: 5, color: Colors.grey, spreadRadius: 1)
                ],
                color: Colors.white),
            child: Padding(
              padding:  EdgeInsets.all(sizeR(8, context)),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: sizeR(30, context),
                    backgroundColor: Colors.grey[350],
                    child: Image.asset('assets/image/Rectangle 97.png'),
                  ),
                   SizedBox(
                    width: widthR(10, context),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Fscreation',
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Poppins',
                            fontSize: sizeR(18, context),
                            color: Colors.black),
                      ),
                      Text(
                        'emailEmail@gmail.com',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Poppins',
                            fontSize: sizeR(15, context),
                            color: Colors.grey[400]),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
           SizedBox(
            height: heightR(30, context),
          ),
          Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(sizeR(20, context))),
            child: Column(
              children: [
                ListTile(
                  leading: Container(
                      height: heightR(35, context),
                      width: widthR(35, context),
                      decoration: BoxDecoration(
                          color: Colors.grey[350],
                          borderRadius: BorderRadius.circular(sizeR(5, context))),
                      child: Icon(Icons.person)),
                  title: Text(
                    'Person Details',
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Poppins',
                        fontSize: sizeR(15, context),
                        color: Colors.black),
                  ),
                  trailing: Icon(CupertinoIcons.right_chevron),
                ),
                ListTile(
                  leading: Container(
                      height: heightR(35, context),
                      width: widthR(35, context),
                      decoration: BoxDecoration(
                          color: Colors.grey[350],
                          borderRadius: BorderRadius.circular(sizeR(5, context))),
                      child: Icon(Icons.shopping_bag)),
                  title: Text(
                    'My order',
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Poppins',
                        fontSize: sizeR(15, context),
                        color: Colors.black),
                  ),
                  trailing: Icon(CupertinoIcons.right_chevron),
                ),
                ListTile(
                  leading: Container(
                      height: heightR(35, context),
                      width: widthR(35, context),
                      decoration: BoxDecoration(
                          color: Colors.grey[350],
                          borderRadius: BorderRadius.circular(sizeR(5, context))),
                      child: Icon(Icons.favorite)),
                  title: Text(
                    'My Favourite',
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Poppins',
                        fontSize: sizeR(15, context),
                        color: Colors.black),
                  ),
                  trailing: Icon(CupertinoIcons.right_chevron),
                ),
                ListTile(
                  leading: Container(
                      height: heightR(35, context),
                      width: widthR(35, context),
                      decoration: BoxDecoration(
                          color: Colors.grey[350],
                          borderRadius: BorderRadius.circular(sizeR(5, context))),
                      child: Icon(Icons.local_shipping)),
                  title: Text(
                    'Shipping Address',
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Poppins',
                        fontSize: sizeR(15, context),
                        color: Colors.black),
                  ),
                  trailing: Icon(CupertinoIcons.right_chevron),
                ),
                ListTile(
                  leading: Container(
                      height: heightR(35, context),
                      width: widthR(35, context),
                      decoration: BoxDecoration(
                          color: Colors.grey[350],
                          borderRadius: BorderRadius.circular(sizeR(5, context))),
                      child: Icon(Icons.credit_card)),
                  title: Text(
                    'My Card',
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Poppins',
                        fontSize: sizeR(15, context),
                        color: Colors.black),
                  ),
                  trailing: Icon(CupertinoIcons.right_chevron),
                ),
                ListTile(
                  leading: Container(
                      height: heightR(35, context),
                      width: widthR(35, context),
                      decoration: BoxDecoration(
                          color: Colors.grey[350],
                          borderRadius: BorderRadius.circular(sizeR(5, context))),
                      child: Icon(Icons.settings)),
                  title: Text(
                    'Settings',
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Poppins',
                        fontSize: sizeR(15, context),
                        color: Colors.black),
                  ),
                  trailing: Icon(CupertinoIcons.right_chevron),
                ),
              ],
            ),
          )
        ],
      ),
    ),
  );
}

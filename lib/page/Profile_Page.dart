import 'package:final_project/widget/HomePageWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return HomePageWidget(
        body: getBody(), currentIndex: 3, leftLogo: EvaIcons.arrow_back);
  }
}

Widget getBody() {
  return Padding(
    padding: const EdgeInsets.all(25.0),
    child: Container(
      child: Column(
        children: [
          Container(
            height: 70,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(blurRadius: 5, color: Colors.grey, spreadRadius: 1)
                ],
                color: Colors.white),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.grey[350],
                    child: Image.asset('assets/image/Rectangle 97.png'),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Fscreation',
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Poppins',
                            fontSize: 18,
                            color: Colors.black),
                      ),
                      Text(
                        'emailEmail@gmail.com',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Poppins',
                            fontSize: 15,
                            color: Colors.grey[400]),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(20)),
            child: Column(
              children: [
                ListTile(
                  leading: Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                          color: Colors.grey[350],
                          borderRadius: BorderRadius.circular(5)),
                      child: Icon(Icons.person)),
                  title: Text(
                    'Person Details',
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Poppins',
                        fontSize: 15,
                        color: Colors.black),
                  ),
                  trailing: Icon(CupertinoIcons.right_chevron),
                ),
                ListTile(
                  leading: Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                          color: Colors.grey[350],
                          borderRadius: BorderRadius.circular(5)),
                      child: Icon(Icons.shopping_bag)),
                  title: Text(
                    'My order',
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Poppins',
                        fontSize: 15,
                        color: Colors.black),
                  ),
                  trailing: Icon(CupertinoIcons.right_chevron),
                ),
                ListTile(
                  leading: Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                          color: Colors.grey[350],
                          borderRadius: BorderRadius.circular(5)),
                      child: Icon(Icons.favorite)),
                  title: Text(
                    'My Favourite',
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Poppins',
                        fontSize: 15,
                        color: Colors.black),
                  ),
                  trailing: Icon(CupertinoIcons.right_chevron),
                ),
                ListTile(
                  leading: Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                          color: Colors.grey[350],
                          borderRadius: BorderRadius.circular(5)),
                      child: Icon(Icons.local_shipping)),
                  title: Text(
                    'Shipping Address',
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Poppins',
                        fontSize: 15,
                        color: Colors.black),
                  ),
                  trailing: Icon(CupertinoIcons.right_chevron),
                ),
                ListTile(
                  leading: Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                          color: Colors.grey[350],
                          borderRadius: BorderRadius.circular(5)),
                      child: Icon(Icons.credit_card)),
                  title: Text(
                    'My Card',
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Poppins',
                        fontSize: 15,
                        color: Colors.black),
                  ),
                  trailing: Icon(CupertinoIcons.right_chevron),
                ),
                ListTile(
                  leading: Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                          color: Colors.grey[350],
                          borderRadius: BorderRadius.circular(5)),
                      child: Icon(Icons.settings)),
                  title: Text(
                    'Settings',
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Poppins',
                        fontSize: 15,
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

import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:final_project/HomePage.dart';
import 'package:final_project/constant/constant.dart';
import 'package:final_project/page/CartPage.dart';
import 'package:final_project/page/FavouritePage.dart';
import 'package:final_project/page/Profile_Page.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class HomePageWidget extends StatefulWidget {
  final Widget body;
  late final int currentIndex;
  final leftLogo;
  HomePageWidget({super.key,required this.body, required this.currentIndex, required this.leftLogo});

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Padding(
                padding:  EdgeInsets.only(top: heightR(53, context), left: widthR(25, context), right: widthR(25, context)),
                child: Container(
                  width: double.maxFinite,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: sizeR(25, context),
                        backgroundColor: Colors.black,
                        child: IconButton(
                            onPressed: () {
                              Navigator.push(context,MaterialPageRoute(builder: (context) => HomePage(),));
                            },
                            icon: Icon(
                              widget.leftLogo,
                              color: Colors.white,
                              size: sizeR(30, context),
                            )),
                      ),
                      Spacer(),
                      CircleAvatar(
                        radius: sizeR(25, context),
                        backgroundColor: Colors.grey[350],
                        child: Image.asset('assets/image/Rectangle 97.png'),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: heightR(28, context),
              ),
              widget.body,
            ],
          ),
        ),
      ),
        bottomNavigationBar: Container(
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(sizeR(30, context)), topRight: Radius.circular(30)),
              boxShadow: [
                BoxShadow(
                    blurRadius: sizeR(5, context),
                    color: Colors.grey,
                    spreadRadius: sizeR(3, context),
                    blurStyle: BlurStyle.outer)
              ]),
          child: BottomNavyBar(
            selectedIndex: widget.currentIndex,
            showElevation: true, // use this to remove appBar's elevation
            onItemSelected: (index) => onBottomNavBArTapped(index, context),
            items: [
              BottomNavyBarItem(
                inactiveColor: Colors.black,
                icon: CircleAvatar(
                    radius: sizeR(16, context),
                    backgroundColor: Colors.black,
                    child: Icon(
                      Icons.home_filled,
                      color: Colors.white,
                      size: sizeR(20, context),
                    )),
                title: Text(
                  'Home',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: sizeR(15, context),
                      fontWeight: FontWeight.w600),
                ),
                activeColor: Colors.black,
              ),
              BottomNavyBarItem(
                inactiveColor: Colors.black,
                icon: CircleAvatar(
                    radius: sizeR(16, context),
                    backgroundColor: Colors.black,
                    child: Icon(
                      Icons.shopping_cart,
                      color: Colors.white,
                      size: sizeR(20, context),
                    )),
                title: Text(
                  'Cart',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: sizeR(15, context),
                      fontWeight: FontWeight.w600),
                ),
                activeColor: Colors.black,
              ),
              BottomNavyBarItem(
                inactiveColor: Colors.black,
                icon: CircleAvatar(
                    radius: sizeR(16, context),
                    backgroundColor: Colors.black,
                    child: Icon(
                      Icons.favorite,
                      color: Colors.white,
                      size: sizeR(20, context),
                    )),
                title: Text(
                  'Favourite',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: sizeR(15, context),
                      fontWeight: FontWeight.w600),
                ),
                activeColor: Colors.black,
              ),
              BottomNavyBarItem(
                inactiveColor: Colors.black,
                icon: CircleAvatar(
                    radius: sizeR(16, context),
                    backgroundColor: Colors.black,
                    child: Icon(
                      Icons.person,
                      color: Colors.white,
                      size: sizeR(20, context),
                    )),
                title: Text(
                  'Profile',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: sizeR(15, context),
                      fontWeight: FontWeight.w600),
                ),
                activeColor: Colors.black,
              ),
            ],
          ),
        ));
  }
  void onBottomNavBArTapped(int index, BuildContext context) {
    if (index == widget.currentIndex) return;
    Widget? page;
    if (index == 0) {
      page = const HomePage();
    } else if (index == 1) {
      page = const CartPage();
    } else if (index == 2) {
      page = const FavouritePage();
    } else {
      page = const ProfilePage();
    }

    Navigator.push(context,
        MaterialPageRoute(builder: (_) => page ?? const SizedBox.shrink()));
  }
}

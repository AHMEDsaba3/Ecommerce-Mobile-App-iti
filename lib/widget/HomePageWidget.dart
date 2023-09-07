import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class HomePageWidget extends StatefulWidget {
  final Widget body;
  late final int currentIndex;
  HomePageWidget({super.key,required this.body,required this.currentIndex});

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
                padding: const EdgeInsets.only(top: 53, left: 25, right: 25),
                child: Container(
                  width: double.maxFinite,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.black,
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              EvaIcons.menu_2,
                              color: Colors.white,
                              size: 30,
                            )),
                      ),
                      Spacer(),
                      CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.grey[350],
                        child: Image.asset('assets/image/Rectangle 97.png'),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 28,
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
                  topLeft: Radius.circular(30), topRight: Radius.circular(30)),
              boxShadow: [
                BoxShadow(
                    blurRadius: 5,
                    color: Colors.grey,
                    spreadRadius: 3,
                    blurStyle: BlurStyle.outer)
              ]),
          child: BottomNavyBar(
            selectedIndex: widget.currentIndex,
            showElevation: true, // use this to remove appBar's elevation
            onItemSelected: (index) => setState(() => widget.currentIndex = index),
            items: [
              BottomNavyBarItem(
                inactiveColor: Colors.black,
                icon: CircleAvatar(
                    radius: 17,
                    backgroundColor: Colors.black,
                    child: Icon(
                      Icons.home_filled,
                      color: Colors.white,
                      size: 20,
                    )),
                title: Text(
                  'Home',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                ),
                activeColor: Colors.black,
              ),
              BottomNavyBarItem(
                inactiveColor: Colors.black,
                icon: CircleAvatar(
                    radius: 17,
                    backgroundColor: Colors.black,
                    child: Icon(
                      Icons.shopping_cart,
                      color: Colors.white,
                      size: 20,
                    )),
                title: Text(
                  'Cart',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                ),
                activeColor: Colors.black,
              ),
              BottomNavyBarItem(
                inactiveColor: Colors.black,
                icon: CircleAvatar(
                    radius: 17,
                    backgroundColor: Colors.black,
                    child: Icon(
                      Icons.favorite,
                      color: Colors.white,
                      size: 20,
                    )),
                title: Text(
                  'Favourite',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                ),
                activeColor: Colors.black,
              ),
              BottomNavyBarItem(
                inactiveColor: Colors.black,
                icon: CircleAvatar(
                    radius: 17,
                    backgroundColor: Colors.black,
                    child: Icon(
                      Icons.person,
                      color: Colors.white,
                      size: 20,
                    )),
                title: Text(
                  'Profile',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                ),
                activeColor: Colors.black,
              ),
            ],
          ),
        ));
  }
}

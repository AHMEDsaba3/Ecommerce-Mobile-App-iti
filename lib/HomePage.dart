import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:final_project/provider/product_provider.dart';
import 'package:final_project/widget/ad_Widget.dart';
import 'package:final_project/widget/category_widget.dart';
import 'package:final_project/widget/product_widget.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _searchController = TextEditingController();
  int _currentIndex = 0;
  final PageController _pageController = PageController();

  @override
  void initState() {
    Provider.of<ProductProvider>(context, listen: false).getCategories();
    Provider.of<ProductProvider>(context, listen: false).getProducts();
    super.initState();
  }

  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Container(
                    child: RichText(
                      text: TextSpan(
                          text: 'Welcome,\n',
                          style: TextStyle(
                              fontSize: 35,
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'Poppins'),
                          children: [
                            TextSpan(
                                text: 'Our Fashions App',
                                style: TextStyle(
                                    fontSize: 30,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w600))
                          ]),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Container(
                      width: double.maxFinite,
                      child: Row(
                        children: [
                          SearchBar(
                            constraints: BoxConstraints(maxWidth: 275),
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.white),
                            controller: _searchController,
                            hintText: 'Search...',
                            leading: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.search,
                                  size: 30,
                                )),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: Image.asset('assets/image/filtter.png',
                                  width: 50, height: 50))
                        ],
                      )),
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Container(
                    height: 160,
                    width: double.maxFinite,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          AdvWidget( saleNo: 50,),
                          const SizedBox(
                            width: 15,
                          ),
                          AdvWidget(saleNo: 70,)
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Text(
                    'Categories',
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Poppins',
                        fontSize: 20,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: CatWidget()),
                ),
                SizedBox(
                  height: 10,
                ),
                getProduct(),
                SizedBox(
                  height: 5,
                ),
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
            selectedIndex: _currentIndex,
            showElevation: true, // use this to remove appBar's elevation
            onItemSelected: (index) => setState(() => _currentIndex = index),
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
  Widget getProduct(){
    if (Provider.of<ProductProvider>(context).products == null){
      return CircularProgressIndicator.adaptive();
    } else if (Provider.of<ProductProvider>(context).products!.isNotEmpty) {
      return   GridView.count(
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.symmetric(horizontal: 25),
        childAspectRatio: 0.7,
        crossAxisCount: 2,
        shrinkWrap: true,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        children: Provider.of<ProductProvider>(context)
        .products!
        .map((e) => ProductWidget(product: e))
            .toList(),
      );
    }else{
      return const Text('No product found');
    }
  }

  Widget CatWidget() {
    if (Provider.of<ProductProvider>(context).categories == null) {
      return CircularProgressIndicator.adaptive();
    } else if (Provider.of<ProductProvider>(context).categories!.isNotEmpty) {
      return SizedBox(
        height: 70,
        child: ButtonBar(
          alignment: MainAxisAlignment.start,
          buttonPadding: EdgeInsets.all(3),
          children: Provider.of<ProductProvider>(context)
              .categories!
              .map((e) => CategoryWidget(
              CateTitle :e
          ))
              .toList(),
        ),
      );
    } else {
      return const SizedBox.shrink();
    }
  }

}

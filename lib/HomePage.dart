import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:final_project/model/Product.dart';
import 'package:final_project/widget/HomePageWidget.dart';
import 'package:final_project/provider/favourite_provider.dart';
import 'package:final_project/provider/product_provider.dart';
import 'package:final_project/widget/ad_Widget.dart';
import 'package:final_project/widget/category_widget.dart';
import 'package:final_project/widget/product_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:provider/provider.dart';
import 'package:skeletonizer/skeletonizer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _searchController = TextEditingController();
  final PageController _pageController = PageController();

  @override
  void initState() {
    Provider.of<FavouriteProvider>(context, listen: false)
        .getFavouriteProducts();
    Provider.of<ProductProvider>(context, listen: false).getCategories();
    Provider.of<ProductProvider>(context, listen: false).getProducts();

    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return HomePageWidget(
      body: getBody(), currentIndex: 0, leftLogo: EvaIcons.home_outline,);
  }

  Widget getProduct() {
    if (Provider.of<ProductProvider>(context).products?.isEmpty ?? false) {
      return const Text('No Products Found');
    } else{
      return Skeletonizer(
        enabled: Provider.of<ProductProvider>(context).products == null
            ? true
            : false,
        child: GridView.count(
          physics: const NeverScrollableScrollPhysics(),
          padding: EdgeInsets.symmetric(horizontal: 25),
          childAspectRatio: 0.7,
          crossAxisCount: 2,
          shrinkWrap: true,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          children: Provider
              .of<ProductProvider>(context)
              .products
              ?.map((e) => ProductWidget(product: e))
              .toList() ?? List.generate(6, (index) =>ProductWidget(product: Product())
              )
        ),
      );
    } 
  }

  Widget getBody() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
                    AdvWidget(saleNo: 50,),
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
    );
  }

  Widget CatWidget() {
    if (Provider.of<ProductProvider>(context).categories?.isEmpty ?? false) {
      return const Text('No Categories Found');
    }
    else{
      return SizedBox(
        height: 70,
        child: Skeletonizer(
          enabled: Provider.of<ProductProvider>(context).categories == null
              ? true
              : false,
          child: ButtonBar(
            alignment: MainAxisAlignment.start,
            buttonPadding: EdgeInsets.all(3),
            children: Provider
                .of<ProductProvider>(context)
                .categories
                ?.map((e) =>
                CategoryWidget(
                    CateTitle: e
                ))
                .toList()??
                List.generate(
                    4,
                        (index) => Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: CategoryWidget(
                       CateTitle: ' ',
                      ),
                    )),
          ),
        ),
      );
    }
  }

}

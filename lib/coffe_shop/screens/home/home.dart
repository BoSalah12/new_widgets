// ignore_for_file: import_of_legacy_library_into_null_safe, avoid_unnecessary_containers

import '../../data/data.dart';
import '../../screens/home/widgets.dart';
import '../../utils/app_assets.dart';
import '../../utils/constants.dart';
import 'package:flutter/material.dart';

class MyCoffeShopHome extends StatefulWidget {
  const MyCoffeShopHome({super.key});

  @override
  State<MyCoffeShopHome> createState() => _MyCoffeShopHomeState();
}

class _MyCoffeShopHomeState extends State<MyCoffeShopHome> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        backgroundColor: Colors.white,
        elevation: 2,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: kDarkBrownColor,
        unselectedItemColor: kLightBrownColor,
        iconSize: 35,
        showUnselectedLabels: false,
        onTap: (newIndex) {
          setState(() {
            index = newIndex;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
            label: "Orders",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "Favorites",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
      ),
      body: IndexedStack(
        index: index,
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                children: <Widget>[
                  const SizedBox(height: 50.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      const Flexible(
                        child: WelcomeMessage(),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 15.0),
                        child: CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage(AppAssets.peopleAssets.person2),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 30.0),
                  const CategoryTitle(title: "Taste of the week"),
                  SizedBox(
                    height: 410.0,
                    width: w,
                    child: ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: coffees.length,
                      itemBuilder: (context, index) {
                        return CoffeeCard(
                          coffee: coffees[index],
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 15.0),
                  const CategoryTitle(title: "Explore nearby"),
                  const SizedBox(height: 15.0),
                  SizedBox(
                      height: 125.0,
                      width: w,
                      child: ListView.builder(
                        physics: const BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemCount: shops.length,
                        itemBuilder: (context, index) {
                          return CoffeeShopCard(
                            coffeeShop: shops[index],
                          );
                        },
                      )),
                  const SizedBox(height: 20.0)
                ],
              ),
            ),
          ),
          const Placeholder(),
          const Placeholder(),
          const Placeholder(),
        ],
      ),
    );
  }
}

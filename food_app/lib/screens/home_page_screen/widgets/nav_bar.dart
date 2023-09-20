import 'dart:developer';

import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:food_app/colors/colors.dart';
import 'package:food_app/screens/categories_screen/widgets/shopping_list.dart';
import 'package:food_app/screens/favourites_screen/favourites_screen.dart';
import 'package:food_app/screens/home_page_screen/home_page_screen.dart';
import 'package:food_app/screens/more_screen/more_screen.dart';

import '../../categories_screen/categories_screen.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  /// Controller to handle PageView and also handles initial page
  final _pageController = PageController(initialPage: 0);

  /// Controller to handle bottom nav bar and also handles initial page
  final _controller = NotchBottomBarController(index: 0);

  int maxCount = 4;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  /// widget list
  final List<Widget> bottomBarPages = [
    const HomePage(),
    const CategoriesScreen(),
    FavouriteScreen(
      favoriteScreenItems: ShoppingList,
    ),
    const MoreScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: List.generate(
            bottomBarPages.length, (index) => bottomBarPages[index]),
      ),
      extendBody: true,
      bottomNavigationBar: (bottomBarPages.length <= maxCount)
          ? AnimatedNotchBottomBar(
              /// Provide NotchBottomBarController
              notchBottomBarController: _controller,
              color: Colors.white,
              notchColor: txtColor,

              /// restart app if you change removeMargins
              removeMargins: false,
              bottomBarWidth: 500,
              durationInMilliSeconds: 300,
              bottomBarItems: const [
                BottomBarItem(
                  inActiveItem: Icon(
                    Icons.home_filled,
                    color: txtColor,
                  ),
                  activeItem: Icon(
                    Icons.home_filled,
                    color: btnColor,
                  ),
                ),
                BottomBarItem(
                  inActiveItem: Icon(
                    Icons.category,
                    color: txtColor,
                  ),
                  activeItem: Icon(
                    Icons.category,
                    color: btnColor,
                  ),
                ),
                BottomBarItem(
                  inActiveItem: Icon(
                    Icons.favorite,
                    color: txtColor,
                  ),
                  activeItem: Icon(
                    Icons.favorite,
                    color: btnColor,
                  ),
                ),
                BottomBarItem(
                  inActiveItem: Icon(
                    Icons.more_vert,
                    color: txtColor,
                  ),
                  activeItem: Icon(
                    Icons.more_vert,
                    color: btnColor,
                  ),
                ),
              ],
              onTap: (index) {
                /// perform action on tab change and to update pages you can update pages without pages
                log('current selected index $index');
                _pageController.jumpToPage(index);
              },
            )
          : null,
    );
  }
}

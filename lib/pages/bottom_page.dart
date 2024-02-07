import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:university_app/helper/app_colors.dart';
import 'package:university_app/pages/examns_page.dart';
import 'package:university_app/pages/home_page.dart';
import 'package:university_app/pages/search_page.dart';
import 'package:university_app/pages/second_page.dart';
import 'package:university_app/pages/wishlist_page.dart';

class BottomPage extends StatefulWidget {
  const BottomPage({super.key});

  @override
  State<BottomPage> createState() => _BottomPageState();
}

class _BottomPageState extends State<BottomPage> {
  PersistentTabController controller = PersistentTabController(initialIndex: 0);

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: Colors.white,
      handleAndroidBackButtonPress: true,
      resizeToAvoidBottomInset: true,
      stateManagement: true,
      hideNavigationBarWhenKeyboardShows: true,
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: Colors.white,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: ItemAnimationProperties(
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: ScreenTransitionAnimation(
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle: NavBarStyle.style3,
    );
  }

  List<Widget> _buildScreens() {
    return [
      HomePage(),
      SearchPage(),
      ExamnsPage(),
      WhishlistPage(),
      SecondPage(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(Icons.home),
        title: ("Home"),
        activeColorPrimary: AppColors.title5CategoriesColor,
        inactiveColorPrimary: AppColors.textTitleHome2Color,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.search),
        title: ("Search"),
        activeColorPrimary: AppColors.title5CategoriesColor,
        inactiveColorPrimary: AppColors.textTitleHome2Color,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.pages),
        title: ("Examns"),
        activeColorPrimary: AppColors.title5CategoriesColor,
        inactiveColorPrimary: AppColors.textTitleHome2Color,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.saved_search_sharp),
        title: ("Wishlist"),
        activeColorPrimary: AppColors.title5CategoriesColor,
        inactiveColorPrimary: AppColors.textTitleHome2Color,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.supervised_user_circle_sharp),
        title: ("Account"),
        activeColorPrimary: AppColors.title5CategoriesColor,
        inactiveColorPrimary: AppColors.textTitleHome2Color,
      ),
    ];
  }
}

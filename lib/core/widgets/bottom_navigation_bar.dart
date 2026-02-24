import 'package:flutter/material.dart';
import 'package:green_mart/core/style/colors.dart';
import 'package:green_mart/features/cart/presentation/view/cart_screen.dart';
import 'package:green_mart/features/explore/presentation/view/explore_screen.dart';
import 'package:green_mart/features/favourite/presentation/view/favourite_screen.dart';
import 'package:green_mart/features/home/presentation/view/home_screen.dart';
import 'package:green_mart/features/profile/presentation/view/profile_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentIndex = 0;
  List<Widget> screens = [
    const HomeScreen(),
    const ExploreScreen(),
    const CartScreen(),
    const FavouriteScreen(),
    const ProfileScreen(),
  
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: _navBar(),
    );
  }

  Container _navBar() {
    return Container(
      padding: const EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
        
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
        ),
        boxShadow: [
          BoxShadow(
            color: Color(0xff555E58).withValues(alpha: .1),
            blurRadius: 10,
            offset: Offset(0, -5),
          ),
        ],
      ),
      child: BottomNavigationBar(
        selectedItemColor: AppColors.primaryColor,
        unselectedItemColor: AppColors.blackColor,
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Image.asset("assets/store 1.png"),
            activeIcon: Image.asset(
              "assets/store 1.png",
              color: AppColors.primaryColor,
            ),
            label: 'Shop',

          ),

          BottomNavigationBarItem(
            icon: Image.asset("assets/search.png"),
            activeIcon: Image.asset(
              "assets/search.png",
              color: AppColors.primaryColor,
            ),
            label: 'Explore',
          ),

          BottomNavigationBarItem(
            icon: Image.asset("assets/cart.png"),
            activeIcon: Image.asset(
              "assets/cart.png",
              color: AppColors.primaryColor,
            ),
            label: 'Cart',
          ),

          BottomNavigationBarItem(
            icon: Image.asset("assets/favourite.png"),
            activeIcon: Image.asset(
              "assets/favourite.png",
              color: AppColors.primaryColor,
            ),
            label: 'Favourite',
          ),

          BottomNavigationBarItem(
            icon: Image.asset("assets/user 1.png"),
            activeIcon: Image.asset(
              "assets/user 1.png",
              color: AppColors.primaryColor,
            ),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}

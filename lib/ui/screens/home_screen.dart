import 'package:flutter/material.dart';
import 'package:warda/ui/values/colors.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentBottomNavBarItemIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.pink,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/images/warda_logo.png', width: MediaQuery.of(context).size.width * 0.25,)
            ],
          ),
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 64.0,
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.all(Radius.circular(50)),
              shape: BoxShape.rectangle
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Material(
                    type: MaterialType.transparency,
                    child: InkWell(
                      customBorder: CircleBorder(),
                      splashColor: currentBottomNavBarItemIndex == 0 ? AppColors.purpleLight : AppColors.tealLight,
                      onTap: (){
                        setState(() {
                          currentBottomNavBarItemIndex = 0;
                        });
                      },
                      child: Container(
                        width: 56,
                        height: 56,
                        decoration: BoxDecoration(
                          color: currentBottomNavBarItemIndex == 0 ? AppColors.tealLight : AppColors.purpleLight,
                          borderRadius: BorderRadius.all(Radius.circular(50))
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.home,
                              semanticLabel: "Home",
                              color: currentBottomNavBarItemIndex == 0 ? AppColors.teal : AppColors.purple
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Material(
                    type: MaterialType.transparency,
                    child: InkWell(
                      customBorder: CircleBorder(),
                      splashColor: currentBottomNavBarItemIndex == 1 ? AppColors.purpleLight : AppColors.tealLight,
                      onTap: (){
                        setState(() {
                          currentBottomNavBarItemIndex = 1;
                        });
                      },
                      child: Container(
                        width: 56,
                        height: 56,
                        decoration: BoxDecoration(
                          color: currentBottomNavBarItemIndex == 1 ? AppColors.tealLight : AppColors.purpleLight,
                          borderRadius: BorderRadius.all(Radius.circular(50))
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.shopping_cart,
                              semanticLabel: "Cart",
                              color: currentBottomNavBarItemIndex == 1 ? AppColors.teal : AppColors.purple,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Material(
                    type: MaterialType.transparency,
                    child: InkWell(
                      customBorder: CircleBorder(),
                      splashColor: currentBottomNavBarItemIndex == 2 ? AppColors.purpleLight : AppColors.tealLight,
                      onTap: (){
                        setState(() {
                          currentBottomNavBarItemIndex = 2;
                        });
                      },
                      child: Container(
                        width: 56,
                        height: 56,
                        decoration: BoxDecoration(
                          color: currentBottomNavBarItemIndex == 2 ? AppColors.tealLight : AppColors.purpleLight,
                          borderRadius: BorderRadius.all(Radius.circular(50))
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.favorite,
                              semanticLabel: "Wishlist",
                              color: currentBottomNavBarItemIndex == 2 ? AppColors.teal : AppColors.purple,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Material(
                    type: MaterialType.transparency,
                    child: InkWell(
                      customBorder: CircleBorder(),
                      splashColor: currentBottomNavBarItemIndex == 3 ? AppColors.purpleLight : AppColors.tealLight,
                      onTap: (){
                        setState(() {
                          currentBottomNavBarItemIndex = 3;
                        });
                      },
                      child: Container(
                        width: 56,
                        height: 56,
                        decoration: BoxDecoration(
                          color: currentBottomNavBarItemIndex == 3 ? AppColors.tealLight : AppColors.purpleLight,
                          borderRadius: BorderRadius.all(Radius.circular(50))
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.person,
                              semanticLabel: "Profile",
                              color: currentBottomNavBarItemIndex == 3 ? AppColors.teal : AppColors.purple,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ]
              ),
            ),
          ),
        ),
      ),
    );
  }
}
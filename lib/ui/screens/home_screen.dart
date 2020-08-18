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
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
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
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        currentBottomNavBarItemIndex = 0;
                      });
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.home,
                          semanticLabel: "Home",
                          color: currentBottomNavBarItemIndex == 0 ? AppColors.teal : AppColors.purple,
                          size: currentBottomNavBarItemIndex == 0 ? 32 : 24
                        ),
                        Text("Home",
                          style: TextStyle(
                            color: currentBottomNavBarItemIndex == 0 ? AppColors.teal : AppColors.purple,
                            fontSize: currentBottomNavBarItemIndex == 0 ? 16 : 0
                          )
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        currentBottomNavBarItemIndex = 1;
                      });
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.shopping_cart,
                          semanticLabel: "Cart",
                          color: currentBottomNavBarItemIndex == 1 ? AppColors.teal : AppColors.purple,
                          size: currentBottomNavBarItemIndex == 1 ? 32 : 24,
                        ),
                        Text("Cart",
                          style: TextStyle(
                            color: currentBottomNavBarItemIndex == 1 ? AppColors.teal : AppColors.purple,
                            fontSize: currentBottomNavBarItemIndex == 1 ? 16 : 0
                          )
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        currentBottomNavBarItemIndex = 2;
                      });
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.favorite,
                          semanticLabel: "Wishlist",
                          color: currentBottomNavBarItemIndex == 2 ? AppColors.teal : AppColors.purple,
                          size: currentBottomNavBarItemIndex == 2 ? 32 : 24
                        ),
                        Text("Wishlist",
                          style: TextStyle(
                            color: currentBottomNavBarItemIndex == 2 ? AppColors.teal : AppColors.purple,
                            fontSize: currentBottomNavBarItemIndex == 2 ? 16 : 0
                          )
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        currentBottomNavBarItemIndex = 3;
                      });
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.person,
                          semanticLabel: "Profile",
                          color: currentBottomNavBarItemIndex == 3 ? AppColors.teal : AppColors.purple,
                          size: currentBottomNavBarItemIndex == 3 ? 32 : 24
                        ),
                        Text("Profile",
                          style: TextStyle(
                            color: currentBottomNavBarItemIndex == 3 ? AppColors.teal : AppColors.grayDark,
                            fontSize: currentBottomNavBarItemIndex == 3 ? 16 : 0
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ]
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo/common/AppColors.dart';
import 'package:flutter_svg/svg.dart';

import '../../routes/AppRouter.gr.dart';

@RoutePage()
class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  MainScreenState createState() => MainScreenState();
}

class MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    double navBarHeight =
        MediaQuery.of(context).size.height * 0.08; // 8% of total screen height
    navBarHeight = navBarHeight.clamp(
        50.0, 75.0); // Ensuring the nav bar is not too small or too big

    return AutoTabsRouter(
      routes: const [
        HomeRoute(),
        SearchRoute(),
        NotificationRoute(),
      ],
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
          body: child,
          bottomNavigationBar: Theme(
              data: ThemeData(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
              ),
              child: AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  height: navBarHeight,
                  // Adjust height based on visibility
                  child: Wrap(children: [
                    BottomNavigationBar(
                      backgroundColor: AppColor.primaryColor,
                      currentIndex: tabsRouter.activeIndex,
                      showSelectedLabels: false,
                      showUnselectedLabels: false,
                      onTap: (value) {
                        tabsRouter.setActiveIndex(value);
                      },
                      items: [
                        BottomNavigationBarItem(
                          activeIcon: SvgPicture.asset(
                              'assets/images/ic_home_selected.svg'),
                          icon: SvgPicture.asset(
                              'assets/images/ic_home_unselected.svg'),
                          label: 'Home',
                        ),
                        BottomNavigationBarItem(
                          activeIcon: SvgPicture.asset(
                              'assets/images/ic_cart_selected.svg'),
                          icon: SvgPicture.asset(
                              'assets/images/ic_cart_unselected.svg'),
                          label: 'Cart',
                        ),
                        BottomNavigationBarItem(
                          activeIcon: SvgPicture.asset(
                              'assets/images/ic_profile_selected.svg'),
                          icon: SvgPicture.asset(
                              'assets/images/ic_profile_unselected.svg'),
                          label: 'Settings',
                        ),
                      ],
                    )
                  ]))),
        );
      },
    );
  }
}

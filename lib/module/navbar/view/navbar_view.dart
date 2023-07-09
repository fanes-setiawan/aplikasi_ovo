import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ovo/core.dart';
import '../controller/navbar_controller.dart';

class NavbarView extends StatefulWidget {
  const NavbarView({Key? key}) : super(key: key);

  Widget build(context, NavbarController controller) {
    controller.view = this;

    return DefaultTabController(
      length: 4,
      initialIndex: controller.currentTab,
      child: Scaffold(
        body: IndexedStack(
          index: controller.currentTab,
          children: [
            HomeView(),
            FinanceView(),
            InboxView(),
            ProfileView(),
          ],
        ),
        floatingActionButtonLocation:
            FloatingActionButtonLocation.miniCenterDocked,
        floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
        floatingActionButton: Container(
          width: 70,
          height: 70,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(50),
          ),
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: FloatingActionButton(
              shape: CircleBorder(),
              highlightElevation: 4,
              backgroundColor: AppColors.purple,
              onPressed: () {
                Get.to(PayView());
              },
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: SvgPicture.asset(
                  "assets/icons/qris.svg",
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          currentIndex: controller.currentTab,
          selectedItemColor: AppColors.purple,
          unselectedItemColor: Colors.grey,
          onTap: controller.onTapped,
          items: [
            BottomNavigationBarItem(
              label: "Home",
              icon: ColorFiltered(
                colorFilter: ColorFilter.mode(
                    controller.currentTab == 0
                        ? AppColors.purple
                        : AppColors.navbarColor,
                    BlendMode.srcIn),
                child: SvgPicture.asset(
                  'assets/icons/home.svg',
                  height: 25,
                  width: 25,
                ),
              ),
            ),
            BottomNavigationBarItem(
              label: "Finance",
              icon: ColorFiltered(
                colorFilter: ColorFilter.mode(
                    controller.currentTab == 1
                        ? AppColors.purple
                        : AppColors.navbarColor,
                    BlendMode.srcIn),
                child: SvgPicture.asset(
                  'assets/icons/finance.svg',
                  height: 25,
                  width: 25,
                ),
              ),
            ),
            BottomNavigationBarItem(
              label: "Inbox",
              icon: ColorFiltered(
                colorFilter: ColorFilter.mode(
                    controller.currentTab == 2
                        ? AppColors.purple
                        : AppColors.navbarColor,
                    BlendMode.srcIn),
                child: SvgPicture.asset(
                  'assets/icons/inbox.svg',
                  color: AppColors.navbarColor,
                  height: 25,
                  width: 25,
                ),
              ),
            ),
            BottomNavigationBarItem(
              label: "Profile",
              icon: ColorFiltered(
                colorFilter: ColorFilter.mode(
                    controller.currentTab == 3
                        ? AppColors.purple
                        : AppColors.navbarColor,
                    BlendMode.srcIn),
                child: SvgPicture.asset(
                  'assets/icons/profile.svg',
                  color: AppColors.navbarColor,
                  height: 25,
                  width: 25,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<NavbarView> createState() => NavbarController();
}

import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';
import 'package:nexus/core/constants/assets.dart';
import 'package:nexus/core/helpers/base_extensions/context/navigation.dart';
import 'package:nexus/core/helpers/base_extensions/context/padding.dart';
import 'package:nexus/core/helpers/helper_methods/spacing.dart';
import 'package:nexus/core/routing/routes.dart';
import 'package:nexus/core/theming/app_styles.dart';
import 'package:nexus/core/theming/colors_manager.dart';
import 'package:nexus/features/chatbot/screens/start_chat_screen.dart';
import 'package:nexus/features/home/presentation/screens/home_screen.dart';
import 'package:nexus/features/profile/presentation/widgets/profile_menu.dart';

class AppLayout extends StatefulWidget {
  const AppLayout({super.key});

  @override
  State<AppLayout> createState() => _AppLayoutState();
}

class _AppLayoutState extends State<AppLayout> {
  int selectedPageIndex = 0;
  late List<Widget> screens;
  late PageController pageController;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  final List<Map<String, dynamic>> navItems = [
    {'icon': Assets.iconsHome, 'label': 'Home'},
    {'icon': Assets.iconsChatbot, 'label': 'Chatbot'},
    {'icon': Assets.iconsPlans, 'label': 'Plans'},
    {'icon': Assets.iconsMenu, 'label': 'Menu'},
  ];

  @override
  void initState() {
    screens = [
      const HomeScreen(),
      const StartChatScreen(),
    ];
    pageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose(); // Dispose of the PageController
    super.dispose();
  }

  void onItemTapped(int index) {
    pageController.jumpToPage(index);
    setState(() {
      selectedPageIndex = index;
    });
    SystemSound.play(SystemSoundType.alert);
  }

  @override
  Widget build(BuildContext context) {
    var bottomAppBar = Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: ColorsManager.appColor.withOpacity(0.1),
            spreadRadius: 0,
            blurRadius: 12.9,
            offset: const Offset(0, -5),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(26.r),
          topRight: Radius.circular(26.r),
        ),
        child: BottomAppBar(
          elevation: 0,
          height: 73.h,
          color: ColorsManager.violet500,
          shape: const CircularNotchedRectangle(),
          notchMargin: 8,
          clipBehavior: Clip.antiAlias,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: navItems.asMap().entries.map((entry) {
              int index = entry.key;
              var item = entry.value;
              // Build the nav item and conditionally add spacing after it
              return Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  _buildCustomNavItem(index, item['icon'], item['label']),
                  // Add spacing after each item except the last one
                  if (index < navItems.length - 1) ...[
                    if (index == 1)
                      horizontalSpace(
                          95) // Larger space between Chatbot and Plans
                    else
                      horizontalSpace(43), // Default spacing
                  ],
                ],
              );
            }).toList(),
          ),
        ),
      ),
    );

    return Scaffold(
      // extendBody: true, // to show the content of the screen under and between the FAB and the bottom app bar
      key: _scaffoldKey,
      drawer: const ProfileMenu(
        userName: 'Esraa Morsii',
        userEmail: 'esraamorsii13@gmail.com',
      ),
      body: SafeArea(
        child: PopScope(
          canPop: false,
          child: PageView(
            controller: pageController,
            physics: const NeverScrollableScrollPhysics(),
            children: screens,
          ),
        ),
      ),
      bottomNavigationBar: bottomAppBar,
      floatingActionButton: Padding(
        padding: context.only(bottom: 12),
        child: FloatingActionButton(
          shape: const OvalBorder(),
          onPressed: () {
            context.pushNamed(
              Routes.burnScanScreen,
            );
          },
          backgroundColor: ColorsManager.appColor,
          child: Padding(
            padding: context.all(13),
            child: SvgPicture.asset(
              Assets.iconsScan,
            ),
          ),
        ),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
    );
  }

  Widget _buildCustomNavItem(int index, String icon, String label) {
    return InkWell(
      splashColor: ThemeData().splashColor,
      splashFactory: InkRipple.splashFactory,
      onTap: () {
        if (index == 3) {
          _scaffoldKey.currentState?.openDrawer(); // Open the drawer
        } else if (index == 2) {
          context.pushNamed(
            Routes.subscriptionScreen,
          );
        } else {
          onItemTapped(index);
        }
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(
            icon,
            colorFilter: ColorFilter.mode(
              selectedPageIndex == index
                  ? ColorsManager.appColor
                  : ColorsManager.violet50,
              BlendMode.srcIn,
            ),
          ),
          verticalSpace(4),
          Text(
            label,
            style: AppStyles.aldrichRegular12Violet50.copyWith(
              color: selectedPageIndex == index
                  ? ColorsManager.appColor
                  : ColorsManager.violet50,
            ),
          ),
        ],
      ),
    );
  }
}

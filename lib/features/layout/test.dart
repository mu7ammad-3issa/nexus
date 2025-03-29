// bottomNavigationBar: Container(
//   height: kBottomNavigationBarHeight,
//   decoration: BoxDecoration(
//     color: ColorsManager.violet500,
//     borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
//   ),
//   child: Row(
//     mainAxisAlignment: MainAxisAlignment.spaceAround,
//     children: [
//       _buildCustomNavItem(0, Assets.iconsHome, 'Home'),
//       _buildCustomNavItem(1, Assets.iconsChatbot, 'Chatbot'),
//       SizedBox(width: 48), // Space for FAB
//       _buildCustomNavItem(2, Assets.iconsChoosePlan, 'Plans'),
//       _buildCustomNavItem(3, Assets.iconsMenu, 'Menu'),
//     ],
//   ),
// ),

// // Helper method
// Widget _buildCustomNavItem(int index, String iconPath, String label) {
//   return GestureDetector(
//     behavior: HitTestBehavior.opaque,
//     onTap: () => onItemTapped(index),
//     child: Column(
//       mainAxisSize: MainAxisSize.min,
//       children: [
//         SvgPicture.asset(
//           iconPath,
//           colorFilter: ColorFilter.mode(
//             selectedPageIndex == index
//                 ? Constants.appColor
//                 : ColorsManager.violet50,
//             BlendMode.srcIn,
//           ),
//           height: 24,
//         ),
//         SizedBox(height: 4),
//         Text(
//           label,
//           style: AppStyles.aldrichRegular12Violet50.copyWith(
//             color: selectedPageIndex == index
//                 ? Constants.appColor
//                 : ColorsManager.violet50,
//           ),
//         ),
//       ],
//     ),
//   );
// }
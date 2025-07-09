import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nexus/core/constants/assets.dart';
import 'package:nexus/core/helpers/base_extensions/context/navigation.dart';
import 'package:nexus/core/routing/routes.dart';
import 'package:nexus/core/theming/app_styles.dart';

class WelcomeHeader extends StatefulWidget {
  const WelcomeHeader({super.key});

  @override
  State<WelcomeHeader> createState() => _WelcomeListTileState();
}

class _WelcomeListTileState extends State<WelcomeHeader> {
  String userName = '';

  void getUserName() async {
    // userName = await SharedPrefHelper.getString(SharedPrefKeys.userName);
    setState(() {});
  }

  @override
  void initState() {
    getUserName();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      contentPadding: EdgeInsets.zero,
      title: Text(
        'Welcome $userName',
        style: AppStyles.aldrichRegular16Violet100.copyWith(
          color: Colors.white,
        ),
      ),
      subtitle: Text(
        'Train, prepare, and stay safe for emergencies.',
        style: AppStyles.aldrichRegular12Violet50.copyWith(
          color: const Color(0xff92919A),
        ),
      ),
      trailing: IconButton(
        onPressed: () {
          context.pushNamed(Routes.notificationsScreen);
        },
        icon: SvgPicture.asset(Assets.iconsNotifications),
      ),
    );
  }
}

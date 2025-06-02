import 'package:flutter/material.dart';
import 'package:nexus/core/constants/assets.dart';
import 'package:nexus/core/widgets/social_media_container.dart';
import 'package:nexus/core/helpers/helper_methods/spacing.dart';

class SocialMediaButtons extends StatelessWidget {
  const SocialMediaButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SocialMediaContainer(
          iconImage: Assets.iconsGoogle,
        ),
        horizontalSpace(19),
        const SocialMediaContainer(
          iconImage: Assets.iconsFacebook,
        ),
      ],
    );
  }
}

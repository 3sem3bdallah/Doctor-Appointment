import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/text_styles.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Column(
          children: [
            Text('Hello, Bruhh!', style: TextStyles.font18DarkBlueBold),
            Text('How are you today', style: TextStyles.font12GrayRegular),
          ],
        ),
        const Spacer(),
        CircleAvatar(
          radius: 24,
          backgroundColor: AppColors.lighterGray,
          child: IconButton(
            onPressed: () {},
            icon: SvgPicture.asset("assets/svg/notifications.svg"),
          ),
        ),
      ],
    );
  }
}

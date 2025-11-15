import 'package:adv_app/core/helpers/extensions.dart';
import 'package:adv_app/core/reouting/routes.dart';
import 'package:adv_app/core/theming/app_colors.dart';
import 'package:adv_app/core/theming/text_styles.dart';
import 'package:flutter/material.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(AppColors.mainBlue),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        minimumSize: WidgetStateProperty.all(const Size(double.infinity, 52)),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        ),
      ),
      child: Text('Get Started', style: TextStyles.font16WhiteMedium),
      onPressed: () {
        context.pushNamed(Routes.loginScreen);
      },
    );
  }
}
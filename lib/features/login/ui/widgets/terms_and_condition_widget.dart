import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/text_styles.dart';

class TermsAndConditionWidget extends StatelessWidget {
  const TermsAndConditionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'By logging, you agree to our',
            style: TextStyles.font13GrayRegular,
          ),
          TextSpan(
            text: ' Terms & Conditions',
            style: TextStyles.font14DarkBlueMedium,
          ),
          TextSpan(
            text: '\nand',
            style: TextStyles.font13GrayRegular.copyWith(height: 2.h),
          ),
          TextSpan(
            text: ' Privacy Policy.',
            style: TextStyles.font14DarkBlueMedium,
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../../../core/theming/text_styles.dart';

class DoctorSpecialitySeeAll extends StatelessWidget {
  const DoctorSpecialitySeeAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("Doctors by Speciality", style: TextStyles.font18DarkBlueSemiBold),
        const Spacer(),
        Text("See All", style: TextStyles.font14BlueRegular),
      ],
    );
  }
}

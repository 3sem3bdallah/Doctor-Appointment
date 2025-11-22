import '../../../../core/theming/text_styles.dart';
import 'package:flutter/material.dart';

class DoctorSpeciality extends StatelessWidget {
  const DoctorSpeciality({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Doctors by Speciality",
          style: TextStyles.font18DarkBlueSemiBold,
        ),
        const Spacer(),
        Text(
          "See All",
          style: TextStyles.font14BlueRegular,
        ),
      ],
    );
  }
}

import 'widgets/specializations_and_doctors_bloc_builder.dart';
import 'widgets/doctor_speciality.dart';
import 'package:flutter/material.dart';

import '../../../core/helpers/spacing.dart';
import 'widgets/doctors_blue_containers.dart';
import 'widgets/home_top_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const HomeTopBar(),
                const DoctorsBlueContainers(),
                verticalSpace(24),
                const DoctorSpeciality(),
                verticalSpace(10),
                const SpecializationsAndDoctorsBlocBuilder(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

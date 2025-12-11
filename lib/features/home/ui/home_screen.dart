import 'widgets/doctors_speciality_see_all.dart';
import 'widgets/doctors_list/doctors_bloc_builder.dart';
import 'widgets/specializations_list/specializations_bloc_builder.dart';
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const HomeTopBar(),
              const DoctorsBlueContainers(),
              verticalSpace(24),
              const DoctorSpecialitySeeAll(),
              verticalSpace(18),
              const SpecializationsBlocBuilder(),
              verticalSpace(8),
              const DoctorsBlocBuilder(),
            ],
          ),
        ),
      ),
    );
  }
}

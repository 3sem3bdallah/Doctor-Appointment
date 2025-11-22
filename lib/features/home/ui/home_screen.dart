import 'widgets/doctor_speciality.dart';
import 'widgets/doctor_speciality_list_view.dart';
import 'widgets/doctors_list_view.dart';
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
          margin: EdgeInsets.fromLTRB(20, 16, 20, 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const HomeTopBar(),
              const DoctorsBlueContainers(),
              verticalSpace(24),
              const DoctorSpeciality(),
              verticalSpace(10),
              const DoctorSpecialityListView(),
              verticalSpace(5),
              const DoctorsListView(),
            ],
          ),
        ),
      ),
    );
  }
}

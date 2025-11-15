import 'package:flutter/material.dart';
import 'package:adv_app/core/di/dependency_injection.dart';
import 'package:adv_app/doc_app.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/reouting/app_router.dart';

void main() async {
  setUpGetIt();
  // To fix text hidden bug
  await ScreenUtil.ensureScreenSize();
  runApp(DocApp(appRouter: AppRouter()));
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/di/dependency_injection.dart';
import 'core/reouting/app_router.dart';
import 'doc_app.dart';

void main() async {
  setUpGetIt();
  // To fix text hidden bug
  await ScreenUtil.ensureScreenSize();
  runApp(DocApp(appRouter: AppRouter()));
}
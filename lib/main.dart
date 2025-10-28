import 'package:adv_app/core/di/dependency_injection.dart';
import 'package:adv_app/core/reouting/app_router.dart';
import 'package:adv_app/doc_app.dart';
import 'package:flutter/material.dart';

void main() {
  setUpGetIt();
  runApp(DocApp(appRouter: AppRouter()));
}

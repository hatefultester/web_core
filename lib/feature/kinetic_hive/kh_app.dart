import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../core/custom/get_fluent_app.dart';
import 'kh_app_binding.dart';
import 'kh_app_pages.dart';

class FoodPlannerApp extends StatelessWidget {
  const FoodPlannerApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetFluentApp(
      defaultTransition: Transition.noTransition,
      initialBinding: KhAppBinding(),
      themeMode: ThemeMode.dark,
      title: 'Food planner application',
      getPages: khAppPages,
      initialRoute: '/',
    );
  }
}

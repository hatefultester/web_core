import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_core/feature/code_resume/code_resume_app_binding.dart';

import 'code_resume_app_pages.dart';

class CodeResumeApp extends StatelessWidget {
  const CodeResumeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        defaultTransition: Transition.noTransition,
        initialBinding: CodeResumeAppBinding(),
        theme: ThemeData(
          useMaterial3: true,
        ),
        themeMode: ThemeMode.dark,
        title: 'Code resume application',
        getPages: codeResumeAppPages,
        initialRoute: '/',
    );
  }
}

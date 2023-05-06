import 'package:flutter/material.dart';
import '../views/code_resume_error_view.dart';
import '../views/code_resume_loading_view.dart';

import '../../../../core/abstractions/base_controller.dart';
import '../../../../core/abstractions/base_page.dart';

abstract class CodeResumePageTemplate<T extends BaseController, V> extends BasePage<T, V> {

  const CodeResumePageTemplate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildBasePage(context),
    );
  }

  buildPage(T controller, V viewState, BuildContext context);

  @override
  Widget buildSuccessView(T controller, V viewState, BuildContext context) {
    return buildPage(controller, viewState, context);
  }

  @override
  Widget buildBasicView(T controller, BuildContext context) {
    return const CodeResumeLoadingView(info: 'Page is preparing');
  }

  @override
  Widget buildErrorView(T controller, BuildContext context) {
    return const CodeResumeErrorView(info: 'Page failed to load');
  }

  @override
  Widget buildLoadingView(T controller, BuildContext context) {
    return const CodeResumeLoadingView(info: 'Page is loading');
  }
}
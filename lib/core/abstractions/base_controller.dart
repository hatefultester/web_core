
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_core/core/abstractions/simple_controller.dart';

abstract class BaseController<T> extends SimpleController {
  late Rx<T> viewState;

  @override
  onInit() async {
    super.onInit();
    startSyncing();
    bool syncStatus = await startController();
    finishSyncing(success: syncStatus);
  }

  @override
  Future<bool> startController() async {
    try {
      await initController();
      viewState = Rx(await initViewState());
      return true;
    } on Exception catch (e) {
      debugPrint(e.toString());
      return false;
    }
  }

  @override
  Future<void> initController();

  Future<T> initViewState();
  
  setViewState(T viewState) => this.viewState.value = viewState;
}

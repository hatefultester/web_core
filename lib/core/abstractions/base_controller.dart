
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../enums/device_screen_type.dart';
import '../enums/sync_state.dart';

abstract class BaseController<T> extends GetxController {
  Rx<SyncState> syncState = Rx(SyncState.basic);
  
  late Rx<T> viewState;

  Rx<DeviceScreenType> screenType = Rx(DeviceScreenType.desktop);

  @override
  onInit() async {
    super.onInit();
    startSyncing();
    bool syncStatus = await _initController();
    finishSyncing(success: syncStatus);
  }

  Future<bool> _initController() async {
    try {
      await initController();
      viewState = Rx(await initViewState());
      return true;
    } on Exception catch (e) {
      debugPrint(e.toString());
      return false;
    }
  }

  Future<void> initController();

  Future<T> initViewState();
  
  setViewState(T viewState) => this.viewState.value = viewState;

  startSyncing() => syncState.value = SyncState.loading;

  finishSyncing({bool success = true}) => syncState.value = success ? SyncState.done : SyncState.error;

  delay({Duration duration = _fakeDuration}) async => await Future.delayed(duration);

  setDeviceScreenType(DeviceScreenType type) => screenType.value = type;
}

const Duration _fakeDuration = Duration(seconds: 2);
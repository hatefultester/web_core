import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

import '../enums/device_screen_type.dart';
import '../enums/sync_state.dart';

abstract class SimpleController extends GetxController {
  Rx<SyncState> syncState = Rx(SyncState.basic);

  Rx<DeviceScreenType> screenType = Rx(DeviceScreenType.desktop);

  @override
  onInit() async {
    super.onInit();
    startSyncing();
    bool syncStatus = await startController();
    finishSyncing(success: syncStatus);
  }

  Future<bool> startController() async {
    try {
      await initController();
      return true;
    } on Exception catch (e) {
      debugPrint(e.toString());
      return false;
    }
  }

  Future<void> initController();

  startSyncing() => syncState.value = SyncState.loading;

  finishSyncing({bool success = true}) => syncState.value = success ? SyncState.done : SyncState.error;

  delay({Duration duration = _fakeDuration}) async => await Future.delayed(duration);

  setDeviceScreenType(DeviceScreenType type) => screenType.value = type;
}

const Duration _fakeDuration = Duration(seconds: 2);
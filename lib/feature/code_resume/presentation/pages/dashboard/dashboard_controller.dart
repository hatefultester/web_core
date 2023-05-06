import '../../../../../core/abstractions/base_controller.dart';

enum DashboardControllerViewState {
  basic,
}

class DashboardController extends BaseController<DashboardControllerViewState> {
  @override
  Future<void> initController() async {
  }

  @override
  Future<DashboardControllerViewState> initViewState() async => DashboardControllerViewState.basic;

}
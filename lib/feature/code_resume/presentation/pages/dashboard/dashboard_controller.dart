import '../../../../../core/abstractions/base_controller.dart';
import 'dashboard_controller_view_state.dart';

class DashboardController extends BaseController<DashboardControllerViewState> {
  @override
  Future<void> initController() async {
  }

  @override
  Future<DashboardControllerViewState> initViewState() async => DashboardControllerViewState.basic;

}
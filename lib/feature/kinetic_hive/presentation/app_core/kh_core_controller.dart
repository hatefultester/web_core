
import '../../../../core/abstractions/base_controller.dart';
import 'kh_core_state.dart';

class KhCoreController extends BaseController<KhCoreState> {

  final KhCoreState initState;

  KhCoreController({required this.initState});

  @override
  Future<void> initController() async {
    await delay();
  }

  @override
  Future<KhCoreState> initViewState() async => initState;

  void handleMenuItemTapped(int value) {
    KhCoreState? _newState = getDashboardMenuItemFromIndex(value);
    if (_newState is KhCoreState) {
      setViewState(_newState);
    }
  }

}
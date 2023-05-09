import 'package:fluent_ui/fluent_ui.dart';
import 'package:get/get.dart';
import '../../../../../../core/enums/device_screen_type.dart';
import '../../../shared/views/kh_view.dart';
import 'kh_user_view_controller.dart';

class KhUserView
    extends KhViewTemplate<KhUserViewController> {

  const KhUserView({Key? key}) : super(key: key);

  @override
  List<Widget> buildView(KhUserViewController controller,
      DeviceScreenType screenType, BuildContext context) {
    return [

    ];
  }

  @override
  KhUserViewController builder() => KhUserViewController();
}

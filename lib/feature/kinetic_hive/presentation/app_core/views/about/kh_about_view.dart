import 'package:fluent_ui/fluent_ui.dart';
import 'package:get/get.dart';
import '../../../../../../core/enums/device_screen_type.dart';
import '../../../shared/views/kh_view.dart';
import 'kh_about_view_controller.dart';

class KhAboutView
    extends KhViewTemplate<KhAboutViewController> {

  const KhAboutView({Key? key}) : super(key: key);

  @override
  List<Widget> buildView(KhAboutViewController controller,
      DeviceScreenType screenType, BuildContext context) {
    return [
      Text('This is About view')
    ];
  }

  @override
  KhAboutViewController builder() => KhAboutViewController();
}

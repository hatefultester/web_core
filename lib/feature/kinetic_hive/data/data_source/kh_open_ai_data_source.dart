import 'package:get/get.dart';
import 'package:web_core/core/mixins/open_ai_communication_mixin.dart';

import '../secrets.dart';

class KhOpenAiDataSource extends GetxService with OpenAiCommunicationMixin {

  @override
  onInit() {
    super.onInit();
    setApiKeys(openAiApiKey: foodPlannerOpenAiApiKey, openAiOrg: foodPlannerOpenAiOrg);
  }
}
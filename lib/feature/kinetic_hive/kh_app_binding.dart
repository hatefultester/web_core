import 'package:get/get.dart';
import 'data/data_source/kh_open_ai_data_source.dart';
import 'data/repository/repository_impl/kh_dietary_creations_repository_impl.dart';
import 'domain/use_cases/create_dietary_plan/kh_create_dietary_plan_use_case.dart';
import 'kh_app_navigator.dart';

class KhAppBinding extends Bindings {
  @override
  Future<void> dependencies() async {

    Get.put<KhAppNavigator>(KhAppNavigator(), permanent: true);

    Get.lazyPut<KhOpenAiDataSource>(() => KhOpenAiDataSource());
    Get.lazyPut<KhDietaryCreationRepositoryImpl>(() => KhDietaryCreationRepositoryImpl());
    Get.lazyPut<KhCreateDietaryPlanUseCase>(() => KhCreateDietaryPlanUseCase(Get.find<KhDietaryCreationRepositoryImpl>(),),);
  }

  KhAppBinding();
}

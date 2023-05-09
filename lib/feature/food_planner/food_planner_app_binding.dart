import 'package:get/get.dart';
import 'package:web_core/feature/food_planner/data/data_source/open_ai_data_source.dart';
import 'package:web_core/feature/food_planner/data/repository/dietary_repository.dart';
import 'package:web_core/feature/food_planner/data/repository/repository_impl/dietary_repository_impl.dart';

import 'domain/use_cases/create_dietary_plan_use_case.dart';
import 'food_planner_app_navigator.dart';

class FoodPlannerAppBinding extends Bindings {
  @override
  Future<void> dependencies() async {

    Get.put<FoodPlannerAppNavigator>(FoodPlannerAppNavigator(), permanent: true);

    Get.lazyPut<FoodPlannerOpenAiDataSource>(() => FoodPlannerOpenAiDataSource());
    Get.lazyPut<DietaryRepositoryImpl>(() => DietaryRepositoryImpl());
    Get.lazyPut<CreateDietaryPlanUseCase>(() => CreateDietaryPlanUseCase(Get.find<DietaryRepositoryImpl>(),),);
  }

  FoodPlannerAppBinding();
}

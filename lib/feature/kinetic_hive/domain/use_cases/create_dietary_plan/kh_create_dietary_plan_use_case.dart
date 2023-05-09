import 'package:dartz/dartz.dart';

import '../../../../../core/abstractions/base_use_case.dart';
import '../../../data/repository/repository_impl/kh_dietary_creations_repository_impl.dart';
import '../../entities/kh_dietary_plan.dart';
import 'kh_create_dietary_plan_use_case_params.dart';

class KhCreateDietaryPlanUseCase extends BaseUseCase<KhDietaryCreationRepositoryImpl,
    KhCreateDietaryPlanUseCaseParams, KhDietaryPlan> {
  KhCreateDietaryPlanUseCase(KhDietaryCreationRepositoryImpl repository)
      : super(repository);

  @override
  String get failureDisplayMessage => 'Creating dietary meal plan failed';

  @override
  Future<Either<Failure, KhDietaryPlan>> execute(
      {required KhCreateDietaryPlanUseCaseParams params}) async {
    try {
      List<String> assistantMessages =
          repository.getAssistantMessages(type: params.dietaryPlanType);

      List<String> userMessages = repository.getUserMessages(
          userRestrictions: params.userRestrictionsOutput,
          userLifestyleHabits: params.userLifestyleHabitsOutput,
          userEatingHabits: params.userEatingHabitsOutput);

      String requestData = await repository.getDietaryPlanDataFromDatasource(assistantMessages: assistantMessages, userMessages: userMessages);

      KhDietaryPlan? plan = await repository.parseDietaryPlanRawData(rawData: requestData);

      if (plan is KhDietaryPlan) {
        return Right(plan);
      } else {
        return Left(Failure(
          infoMessage: failureDisplayMessage,
          debugMessage: 'plan is not parsed correctly',
        ));
      }
    } on Exception catch (e) {
      return Left(
        Failure(debugMessage: e.toString(), infoMessage: failureDisplayMessage),
      );
    }
  }
}


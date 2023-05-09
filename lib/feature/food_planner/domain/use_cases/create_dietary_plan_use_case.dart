import 'package:dartz/dartz.dart';

import '../../../../core/abstractions/base_use_case.dart';
import '../../data/repository/repository_impl/dietary_repository_impl.dart';
import '../entities/dietary_plan.dart';

class CreateDietaryPlanUseCase extends BaseUseCase<DietaryRepositoryImpl,
    CreateDietaryPlanUseCaseParams, DietaryPlan> {
  CreateDietaryPlanUseCase(DietaryRepositoryImpl repository)
      : super(repository);

  @override
  String get failureDisplayMessage => 'Creating dietary meal plan failed';

  @override
  Future<Either<Failure, DietaryPlan>> execute(
      {required CreateDietaryPlanUseCaseParams params}) async {
    try {
      List<String> assistantMessages =
          repository.getAssistantMessages(type: params.dietaryPlanType);

      List<String> userMessages = repository.getUserMessages(
          userRestrictions: params.userRestrictionsOutput,
          userLifestyleHabits: params.userLifestyleHabitsOutput,
          userEatingHabits: params.userEatingHabitsOutput);

      String requestData = await repository.getDietaryPlanDataFromDatasource(assistantMessages: assistantMessages, userMessages: userMessages);

      DietaryPlan? plan = await repository.parseDietaryPlanRawData(rawData: requestData);

      if (plan is DietaryPlan) {
        return Right(plan);
      } else {
        return Left(Failure(
          infoMessage: failureDisplayMessage
        ));
      }
    } on Exception catch (e) {
      return Left(
        Failure(debugMessage: e.toString(), infoMessage: failureDisplayMessage),
      );
    }
  }
}

class CreateDietaryPlanUseCaseParams {
  final String userRestrictionsOutput;
  final String userLifestyleHabitsOutput;
  final String userEatingHabitsOutput;
  final DietaryPlanType dietaryPlanType;

  CreateDietaryPlanUseCaseParams({
    required this.userRestrictionsOutput,
    required this.userLifestyleHabitsOutput,
    required this.userEatingHabitsOutput,
    required this.dietaryPlanType,
  });
}

enum DietaryPlanType {
  weekPlan,
  threeDayPlan,
}

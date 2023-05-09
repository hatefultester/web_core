import 'package:dartz/dartz.dart';
import '../../../data/dto/kh_article_dto.dart';
import '../../../data/dto/mock/kh_article_dto_mock_data.dart';
import '../../../../../core/abstractions/base_use_case.dart';
import '../../../data/repository/repository_impl/kh_present_article_detail_repository_impl.dart';
import 'kh_present_article_use_case_params.dart';

class KhPresentArticleUseCase extends BaseUseCase<PresentArticleDetailRepositoryImpl, KhPresentArticleUseCaseParams, KhArticleDto> {
  KhPresentArticleUseCase(super.repository);

  @override
  Future<Either<Failure, KhArticleDto>> execute({required KhPresentArticleUseCaseParams params}) async {
    final KhArticleDto? article = articleFromMock(params.type);
    if (article is KhArticleDto) {
      return Right(article!);
    } else {
      return Left(Failure(infoMessage: failureDisplayMessage));
    }
  }

  @override
  // TODO: implement failureDisplayMessage
  String get failureDisplayMessage => 'Article failed to load';

}
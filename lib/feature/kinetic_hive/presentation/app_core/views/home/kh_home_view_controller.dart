
import 'package:fluent_ui/fluent_ui.dart';
import 'package:get/get.dart';
import '../../../../../../core/abstractions/base_use_case.dart';
import '../../../../data/dto/kh_article_dto.dart';
import '../../../../data/dto/mock/kh_article_dto_mock_data.dart';
import '../../../../data/repository/repository_impl/kh_present_article_detail_repository_impl.dart';
import '../../../../domain/use_cases/present_article/kh_present_article_use_case.dart';

import '../../../../../../core/abstractions/simple_controller.dart';
import '../../../../domain/use_cases/present_article/kh_present_article_use_case_params.dart';

class KhHomeViewController extends SimpleController {

  final KhPresentArticleUseCase _presentArticleUseCase = KhPresentArticleUseCase(PresentArticleDetailRepositoryImpl());

  List<ArticleMockDataType> articles = ArticleMockDataType.values;

  List<KhArticleDto> articleDtoList = [];

  RxBool showArticle = false.obs;

  @override
  Future<void> initController() async {
    for (ArticleMockDataType arte in articles) {
      KhArticleDto? article = await _loadArticle(arte);
      if (article is KhArticleDto)
      articleDtoList.add(
        article
      );
    }
    showArticle.value = true;
  }


  Future<KhArticleDto?> _loadArticle(ArticleMockDataType type) async {
    final result = await _presentArticleUseCase.execute(params: KhPresentArticleUseCaseParams(type));

    result.fold((Failure failure) {
      print(failure.debugMessage);
      print('---');
      print(failure.infoMessage);
      Get.dialog(const ContentDialog(
        title: Text("Loading articles failed"),
      ));
      return null;
    }, (data) {
      return KhArticleDto(title: data.title, article: data.article);
    });
  }



}

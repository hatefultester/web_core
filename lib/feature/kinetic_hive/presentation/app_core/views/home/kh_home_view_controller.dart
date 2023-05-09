
import 'package:fluent_ui/fluent_ui.dart';
import 'package:get/get.dart';
import '../../../../../../core/abstractions/base_use_case.dart';
import '../../../../data/dto/kh_article_dto.dart';
import '../../../../data/repository/repository_impl/kh_present_article_detail_repository_impl.dart';
import '../../../../domain/use_cases/present_article/kh_present_article_use_case.dart';
import '../../../shared/mixin/kh_progress_hud_mixin.dart';

import '../../../../../../core/abstractions/simple_controller.dart';
import '../../../../domain/use_cases/present_article/kh_present_article_use_case_params.dart';

class KhHomeViewController extends SimpleController {

  final KhPresentArticleUseCase _presentArticleUseCase = KhPresentArticleUseCase(PresentArticleDetailRepositoryImpl());

  late KhArticleDto articleDto;

  RxBool showArticle = false.obs;

  @override
  Future<void> initController() async {
    _loadArticle();
  }

  _loadArticle() async {
    final result = await _presentArticleUseCase.execute(params: KhPresentArticleUseCaseParams());

    result.fold((Failure failure) {
      debugPrint(failure.infoMessage);
      return;
    }, (data) {
      articleDto = KhArticleDto(title: data.title, article: data.article);
      showArticle.value = true;
    });
  }


}

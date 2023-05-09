import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import '../../../../../../core/enums/device_screen_type.dart';
import '../../../../data/dto/kh_article_dto.dart';
import '../../../shared/views/kh_view.dart';
import 'kh_home_view_controller.dart';

class KhHomeView extends KhViewTemplate<KhHomeViewController> {
  const KhHomeView({Key? key}) : super(key: key, scrollable: true);

  @override
  List<Widget> buildView(KhHomeViewController controller,
      DeviceScreenType screenType, BuildContext context) {
    return [
      // Padding(
      //   padding: const EdgeInsets.all(8.0),
      //   child: Obx(
      //     () {
      //       var selectedArticle = controller.selectedArticle.value;
      //       return Wrap(
      //       children: [
      //         for (var article in controller.articles)
      //           Padding(
      //             padding: const EdgeInsets.all(8.0),
      //             child: HyperlinkButton(
      //               child: Text(
      //                 describeEnum(article).toUpperCase(),
      //                 style: TextStyle(
      //                   fontSize: article == selectedArticle ? 18 : 16,
      //                   fontWeight: article == selectedArticle ? FontWeight.bold : FontWeight.w500,
      //                   letterSpacing: 2.5,
      //                 ),
      //               ),
      //               onPressed: () {
      //                 controller.handleSwitchArticle(article);
      //               },
      //             ),
      //           )
      //       ],
      //     );
      //     }
      //   ),
      // ),
      Obx(() {
        if (controller.showArticle.value) {
          return Column(
            children: [
              for (var i = 0; i< controller.articleDtoList.length; i++)
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      controller.articleDtoList[i].title,
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                  ),
                  const Divider(),
                  for (KhSectionDto section in controller.articleDtoList[i].article)
                    KhArticleSectionItem(section),
                  SizedBox(
                      width: double.infinity,
                      height: 300,
                      child: Image.asset(
                        controller.articles[i].imagePath(),
                      ),),
                ],
              ),
            ],
          );
        } else {
          return const SizedBox.shrink();
        }
      }),
    ];
  }

  @override
  KhHomeViewController builder() => KhHomeViewController();
}

class KhArticleSectionItem extends StatelessWidget {
  final KhSectionDto section;

  const KhArticleSectionItem(this.section, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              section.section_title,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              section.content,
              style: const TextStyle(fontSize: 14, letterSpacing: 1.3),
            ),
          ),
        ],
      ),
    );
  }
}

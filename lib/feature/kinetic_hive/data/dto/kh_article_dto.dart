import 'dart:convert';

import 'mock/kh_article_dto_mock_data.dart';

class KhArticleDto {
  final String title;
  final List<KhSectionDto> article;

  KhArticleDto({required this.title, required this.article});

  factory KhArticleDto.fromJson(Map<String, dynamic> json) {
    return KhArticleDto(
      title: json['title'],
      article: List<KhSectionDto>.from(
          json['article'].map((section) => KhSectionDto.fromJson(section))),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'article': article.map((section) => section.toJson()).toList(),
    };
  }

  static KhArticleDto? fromMock() {
    return KhArticleDto.fromJson(jsonDecode(mockArticleDto));
  }
}

class KhSectionDto {
  final String section_title;
  final String content;

  KhSectionDto({required this.section_title, required this.content});

  factory KhSectionDto.fromJson(Map<String, dynamic> json) {
    return KhSectionDto(
      section_title: json['section_title'],
      content: json['content'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'section_title': section_title,
      'content': content,
    };
  }


}


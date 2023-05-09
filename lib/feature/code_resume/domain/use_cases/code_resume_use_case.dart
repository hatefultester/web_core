import '../entities/code_resume_data.dart';

abstract class CodeResumeUseCase {
  Future<void> loadCodeResumePreview();
  Future<void> createCodeResume({final CodeResumeData codeResumeData});
  Future<void> downloadCodeResume({final String format});
  Future<void> shareCodeResume({final String platform});
  Future<void> updateCodeResume({final CodeResumeData codeResumeData});
}
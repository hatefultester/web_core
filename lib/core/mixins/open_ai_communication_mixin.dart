import 'package:dart_openai/openai.dart';

mixin OpenAiCommunicationMixin {
  setApiKeys({required String openAiApiKey, required String openAiOrg}) {
    OpenAI.apiKey = openAiApiKey;
    OpenAI.organization = openAiOrg;
  }

  Future<String> openAiRequest(
      {required String userMessage,
        required String assistantMessage,
        String openAiModel = 'gpt-3.5-turbo',
        double temperature = 0.2}) async {
    final chatCompletions = await OpenAI.instance.chat.create(
      model: openAiModel,
      temperature: temperature,
      messages: [
        OpenAIChatCompletionChoiceMessageModel(
            role: OpenAIChatMessageRole.assistant, content: assistantMessage),
        OpenAIChatCompletionChoiceMessageModel(
            role: OpenAIChatMessageRole.user, content: userMessage),
      ],
    );

    return chatCompletions.choices.first.message.content;
  }
}

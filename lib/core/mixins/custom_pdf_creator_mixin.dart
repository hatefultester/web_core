import 'package:flutter/services.dart';
import 'package:pdf/widgets.dart' as pw;

mixin CustomPdfCreatorMixin {

  Future<pw.Document> createEmptyPdf() async {
    final pw.Font sans = await _loadSans();

    final pw.ThemeData theme = pw.ThemeData.withFont(
      base: sans,
    );

    final pdf = pw.Document(theme: theme);

    return pdf;
  }

  convertToUInt8List(pw.Document document) async => await document.save();

  Future<pw.Font> get sans async => await _loadSans();

  _loadSans() async =>
      await rootBundle.load('assets/fonts/NotoSans-Regular.ttf').then(
            (bytes) => pw.Font.ttf(
          bytes.buffer.asByteData(),
        ),
      );


}
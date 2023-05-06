import 'dart:html';
import 'dart:typed_data';
import 'package:flutter/foundation.dart';

mixin CustomBrowserFileDownloadMixin {

  downloadFileInBrowserFromUInt8List(
      {required String fileType,
        required String fileExtension,
        required Uint8List bytes,
        required String filename}) async {

    if (!kIsWeb) return;

    final blob = Blob([bytes], fileType);
    final url = Url.createObjectUrlFromBlob(blob);

    final anchor = AnchorElement(href: url)
      ..download = '$filename.$fileExtension'
      ..style.display = 'none';

    document.body!.children.add(anchor);

    anchor.click();

    Url.revokeObjectUrl(url);
    anchor.remove();
  }

}
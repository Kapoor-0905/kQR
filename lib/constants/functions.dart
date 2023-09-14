import 'package:flutter/services.dart';

pasteFromClipboard() {
  Clipboard.getData(Clipboard.kTextPlain).then((value) {
    return value!.text;
  });
}

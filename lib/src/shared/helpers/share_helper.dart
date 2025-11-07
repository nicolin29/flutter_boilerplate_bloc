import 'package:share_plus/share_plus.dart';

class ShareHelper {
  static Future<void> text(String text) async {
    await SharePlus.instance.share(ShareParams(text: text));
  }

  static Future<void> file(String path, {String? subject}) async {
    await SharePlus.instance.share(
      ShareParams(subject: subject, files: [XFile(path)]),
    );
  }
}

import 'dart:convert';

import 'package:terradart_appwrite/terradart_appwrite.dart';
import 'package:terradart_core/terradart_core.dart';

/// Minimal example: an Appwrite project and a storage bucket.
///
/// Credentials never enter synth output — authenticate at apply time
/// via `APPWRITE_*` environment variables.
final class HelloStack extends Stack {
  HelloStack()
      : super(
          providers: [
            const AppwriteProvider(
              endpoint: 'https://cloud.appwrite.io/v1',
              organizationId: 'YOUR-ORG-ID',
            ),
          ],
        ) {
    add(
      AppwriteProject(
        localName: 'hello',
        name: TfArg.literal('hello'),
      ),
    );
    add(
      AppwriteStorageBucket(
        localName: 'uploads',
        name: TfArg.literal('uploads'),
      ),
    );
  }
}

void main() {
  final result = HelloStack().synth();
  // ignore: avoid_print
  print(const JsonEncoder.withIndent('  ').convert(result.tfJson));
}

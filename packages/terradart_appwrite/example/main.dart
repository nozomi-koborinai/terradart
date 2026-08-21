import 'dart:convert';

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_appwrite/terradart_appwrite.dart';

/// Minimal example: an Appwrite storage bucket, synthesized to Terraform
/// JSON. Credentials never appear in synth output — authenticate at
/// apply time via the APPWRITE_API_KEY / APPWRITE_ORGANIZATION_API_KEY
/// environment variables.
final class HelloStack extends Stack {
  HelloStack()
      : super(
          providers: [
            const AppwriteProvider(
              endpoint: 'https://cloud.appwrite.io/v1',
              projectId: 'my-project',
            ),
          ],
        ) {
    add(
      AppwriteStorageBucket(
        localName: 'uploads',
        name: TfArg.literal('uploads'),
        maximumFileSize: TfArg.literal(10485760),
      ),
    );
  }
}

void main() {
  final result = HelloStack().synth();
  // ignore: avoid_print
  print(const JsonEncoder.withIndent('  ').convert(result.tfJson));
}

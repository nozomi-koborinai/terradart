import 'dart:convert';

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/terradart_google.dart';

/// Minimal example: a single Pub/Sub topic, synthesized to Terraform JSON.
final class HelloStack extends Stack {
  HelloStack({required String projectId})
      : super(
          providers: [
            GoogleProvider(project: projectId, region: 'us-central1'),
          ],
        ) {
    add(GooglePubsubTopic(localName: 'hello', name: TfArg.literal('hello')));
  }
}

void main() {
  final result = HelloStack(projectId: 'YOUR-PROJECT-ID').synth();
  // ignore: avoid_print
  print(const JsonEncoder.withIndent('  ').convert(result.tfJson));
}

import 'dart:convert';

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google_beta/terradart_google_beta.dart';

/// Minimal example: pre-provision the Pub/Sub service agent (beta-only).
final class HelloStack extends Stack {
  HelloStack({required String projectId})
      : super(
          providers: [
            GoogleBetaProvider(project: projectId, region: 'us-central1'),
          ],
        ) {
    add(
      GoogleProjectServiceIdentity(
        localName: 'pubsub_agent',
        service: TfArg.literal('pubsub.googleapis.com'),
      ),
    );
  }
}

void main() {
  final result = HelloStack(projectId: 'YOUR-PROJECT-ID').synth();
  // ignore: avoid_print
  print(const JsonEncoder.withIndent('  ').convert(result.tfJson));
}

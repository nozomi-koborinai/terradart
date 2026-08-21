import 'dart:convert';

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google_beta/terradart_google_beta.dart';

/// Minimal example: enable Firebase on an existing GCP project (a
/// beta-only resource), synthesized to Terraform JSON.
final class HelloBetaStack extends Stack {
  HelloBetaStack({required String projectId})
      : super(
          providers: [
            GoogleBetaProvider(project: projectId, region: 'us-central1'),
          ],
        ) {
    add(
      GoogleFirebaseProject(
        localName: 'firebase',
        project: TfArg.literal(projectId),
      ),
    );
  }
}

void main() {
  final result = HelloBetaStack(projectId: 'YOUR-PROJECT-ID').synth();
  // ignore: avoid_print
  print(const JsonEncoder.withIndent('  ').convert(result.tfJson));
}

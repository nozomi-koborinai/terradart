/// Synth entry point for the Lunch Concierge cookbook recipe.
///
/// Required environment variables:
/// - GCP_PROJECT_ID: target project ID.
/// - IMAGE_URI: pushed container image URI for the combined web/server app.
/// - INVOKER_EMAIL: Google account allowed to invoke the Cloud Run service.
library;

import 'dart:io';

import 'package:terradart_core/terradart_core.dart';
import 'package:lunch_concierge_infra/lunch_concierge_stack.dart';

Future<void> main(List<String> args) async {
  final projectId = _requiredEnv('GCP_PROJECT_ID');
  final imageUri = _requiredEnv('IMAGE_URI');
  final invokerEmail = _requiredEnv('INVOKER_EMAIL');

  final stateBucket = Platform.environment['TF_STATE_BUCKET'];
  await runStack(
    args,
    () => LunchStack(
      projectId: projectId,
      imageUri: imageUri,
      invokerEmail: invokerEmail,
      backend: stateBucket == null || stateBucket.isEmpty
          ? null
          : GcsBackend(
              bucket: stateBucket,
              prefix:
                  Platform.environment['TF_STATE_PREFIX'] ?? 'lunch-concierge',
            ),
    ),
  );
}

String _requiredEnv(String name) {
  final value = Platform.environment[name];
  if (value == null || value.isEmpty) {
    stderr.writeln('error: set $name');
    exit(64);
  }
  return value;
}

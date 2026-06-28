/// Synth entry point for the Lunch Concierge cookbook recipe.
///
/// Required environment variables:
/// - GCP_PROJECT_ID: target project ID.
/// - IMAGE_URI: pushed container image URI for the combined web/server app.
/// - INVOKER_EMAIL: Google account allowed to invoke the Cloud Run service.
library;

import 'dart:io';

import 'package:lunch_concierge_infra/lunch_concierge_stack.dart';

Future<void> main() async {
  final projectId = _requiredEnv('GCP_PROJECT_ID');
  final imageUri = _requiredEnv('IMAGE_URI');
  final invokerEmail = _requiredEnv('INVOKER_EMAIL');

  final stack = LunchStack(
    projectId: projectId,
    imageUri: imageUri,
    invokerEmail: invokerEmail,
  );
  await stack.writeTo('tf-out');
  stdout.writeln('synthesized to tf-out/main.tf.json');
}

String _requiredEnv(String name) {
  final value = Platform.environment[name];
  if (value == null || value.isEmpty) {
    stderr.writeln('error: set $name');
    exit(64);
  }
  return value;
}

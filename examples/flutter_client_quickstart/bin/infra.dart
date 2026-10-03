/// Synth entry point.
///
/// ```text
/// dart run bin/infra.dart              # tf-out/dev, tf-out/prod, and the
///                                      # dev mirror at tf-out/main.tf.json
/// dart run bin/infra.dart --env dev    # tf-out/dev only
/// terradart apply --env dev
/// ```
///
/// Requires `GCP_PROJECT_ID`. Synth needs no credentials.
library;

import 'dart:io';

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_example_flutter_client_quickstart/env.dart';
import 'package:terradart_example_flutter_client_quickstart/main.dart';

Future<void> main(List<String> args) async {
  final projectId = Platform.environment['GCP_PROJECT_ID'];
  if (projectId == null || projectId.isEmpty) {
    stderr.writeln(
      'error: set GCP_PROJECT_ID env var (e.g. GCP_PROJECT_ID=my-proj-123)',
    );
    exitCode = 64;
    return;
  }

  final everyEnvironment = !_requestedEnv(args);
  await runEnvironments(
    args,
    Env.values,
    (env) => FlutterClientStack(projectId: projectId, env: env),
  );
  if (exitCode != 0 || !everyEnvironment) return;

  // The example gates and CI `terraform validate` read tf-out/main.tf.json,
  // the file every other quickstart writes. Environments live in
  // tf-out/<name>. Mirror dev — what `terradart apply --env dev` applies —
  // so those checks validate that configuration. Apply with --env; applying
  // both directories would track the same dev names in two states.
  await File('tf-out/dev/main.tf.json').copy('tf-out/main.tf.json');
  stdout.writeln('mirrored tf-out/dev/main.tf.json to tf-out/main.tf.json');
}

bool _requestedEnv(List<String> args) {
  for (final arg in args) {
    if (arg == '--env' || arg.startsWith('--env=')) return true;
  }
  return false;
}

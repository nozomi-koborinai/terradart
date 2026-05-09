/// Synth entry point. The cleartext password is read from the
/// `DB_PASSWORD` env var so it is never committed to source. Run as:
///
/// ```
/// DB_PASSWORD='your-secret-here' dart run bin/infra.dart
/// ```
library;

import 'dart:io';

import 'package:terradart_example_secret_manager_quickstart/main.dart';

Future<void> main() async {
  final cleartext = Platform.environment['DB_PASSWORD'];
  if (cleartext == null || cleartext.isEmpty) {
    stderr.writeln(
      'DB_PASSWORD env var must be set (the cleartext value never enters '
      'Terraform state -- it goes to the secret_data_wo write-only field).',
    );
    exit(64); // EX_USAGE
  }

  final projectId = Platform.environment['GCP_PROJECT_ID'] ?? 'YOUR-PROJECT-ID';
  final stack = DbCredentialsStack(
    projectId: projectId,
    dbPasswordCleartext: cleartext,
    secretVersion: 1, // bump this on rotation
  );
  await stack.synth(outDir: 'tf-out');
}

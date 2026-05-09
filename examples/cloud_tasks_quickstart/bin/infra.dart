/// Synth entry point. Run `dart run bin/infra.dart` to emit
/// `tf-out/main.tf.json` and `lib/generated/email_jobs_stack.app.dart`.
library;

import 'package:terradart_example_cloud_tasks_quickstart/main.dart';

Future<void> main() async {
  final stack = EmailJobsStack(projectId: 'YOUR-PROJECT-ID');
  await stack.synth(outDir: 'tf-out');
}

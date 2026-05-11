// Copies the 13 hand-written wrapper files into the golden baseline directory
// and normalises imports + adds the GENERATED FILE header. Idempotent: running
// twice produces byte-identical output.
//
// Usage: dart run tool/freeze_handwritten_baseline.dart (from packages/terradart_google)
import 'dart:io';
import 'package:path/path.dart' as p;

const _header =
    '// GENERATED FILE - DO NOT EDIT\n'
    '// Run `terradart wrap` to regenerate.\n';

const _sources = <String>[
  'lib/src/pubsub/google_pubsub_topic.dart',
  'lib/src/pubsub/google_pubsub_subscription.dart',
  'lib/src/pubsub/google_pubsub_topic_iam_member.dart',
  'lib/src/pubsub/google_pubsub_subscription_iam_member.dart',
  'lib/src/cloud_tasks/google_cloud_tasks_queue.dart',
  'lib/src/cloud_tasks/google_cloud_tasks_queue_iam_member.dart',
  'lib/src/secret_manager/google_secret_manager_secret.dart',
  'lib/src/secret_manager/google_secret_manager_secret_version.dart',
  'lib/src/secret_manager/google_secret_manager_secret_iam_member.dart',
  'lib/src/cloud_scheduler/google_cloud_scheduler_job.dart',
  'lib/src/iam/google_service_account.dart',
  'lib/src/project/google_project_service.dart',
  'lib/src/data/google_project.dart',
];

const _baselineDir = 'test/golden/handwritten_baseline';

void main() {
  final outDir = Directory(_baselineDir);
  if (!outDir.existsSync()) outDir.createSync(recursive: true);

  for (final src in _sources) {
    final f = File(src);
    if (!f.existsSync()) {
      stderr.writeln('missing source: $src');
      exit(1);
    }
    var content = f.readAsStringSync();

    // Normalise relative imports to package: imports. Matches the path-only
    // segment (`import '<rel>/generated/<file>'`) so it works whether the
    // statement terminates with `;` on the same line or continues with a
    // multi-line `show ...;` clause.
    content = content.replaceAllMapped(
      RegExp(r"""import '(\.\.?/)+generated/([^']+)'"""),
      (m) => "import 'package:terradart_google/src/generated/${m[2]}'",
    );

    // Prepend the GENERATED header (idempotent: skip if already present).
    if (!content.startsWith('// GENERATED FILE')) {
      content = _header + content;
    }

    // Force LF line endings.
    content = content.replaceAll('\r\n', '\n');

    final basename = p.basename(src);
    final outPath = p.join(_baselineDir, basename);
    File(outPath).writeAsStringSync(content);
    stdout.writeln('frozen: $outPath');
  }
}

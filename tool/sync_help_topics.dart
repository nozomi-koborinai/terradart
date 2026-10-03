// Keeps the `terradart help <topic>` texts the CLI carries identical to
// their sources, packages/terradart_cli/help/<topic>.md.
//
// The CLI carries them as Dart constants (lib/src/assets/help_topics.g.dart)
// because `dart pub global activate` and `dart compile exe` cannot read a
// file outside the package at run time.
//
//   dart tool/sync_help_topics.dart        # list what is stale, exit 1
//   dart tool/sync_help_topics.dart --fix  # rewrite the constants
//
// tool/help_topics_test.dart fails while anything is stale.
import 'dart:io';

import 'package:path/path.dart' as p;

const helpTopicsDir = 'packages/terradart_cli/help';
const helpTopicsDart =
    'packages/terradart_cli/lib/src/assets/help_topics.g.dart';

/// The topic sources under [root], by name, in name order.
Map<String, String> readHelpTopics(String root) {
  final files =
      Directory(p.join(root, helpTopicsDir))
          .listSync()
          .whereType<File>()
          .where((f) => f.path.endsWith('.md'))
          .toList()
        ..sort((a, b) => a.path.compareTo(b.path));
  return {
    for (final f in files)
      p.basenameWithoutExtension(f.path): f.readAsStringSync(),
  };
}

/// The Dart library that carries [topics].
String renderHelpTopics(Map<String, String> topics) {
  final b = StringBuffer()
    ..write('// GENERATED FILE - DO NOT EDIT\n')
    ..write(
      '// `dart tool/sync_help_topics.dart --fix` copies $helpTopicsDir/*.md\n'
      '// here; tool/help_topics_test.dart fails when they differ.\n',
    )
    ..write('\n')
    ..write(
      '/// `terradart help <topic>`: the text of each topic, by name; the\n'
      '/// first line is its summary in `terradart help --list`.\n',
    )
    ..write('const Map<String, String> helpTopics = {\n');
  for (final MapEntry(key: name, value: text) in topics.entries) {
    if (text.contains("'''")) {
      throw FormatException(
        "$helpTopicsDir/$name.md: holds ''', which the "
        'constant cannot',
      );
    }
    b.write("  '$name': r'''\n$text''',\n");
  }
  b.write('};\n');
  return '$b';
}

/// The stale files, relative to [root]; with [fix], rewrites them.
List<String> syncHelpTopics(String root, {bool fix = false}) {
  final file = File(p.join(root, helpTopicsDart));
  final dart = renderHelpTopics(readHelpTopics(root));
  if (file.existsSync() && file.readAsStringSync() == dart) return const [];
  if (fix) {
    file.parent.createSync(recursive: true);
    file.writeAsStringSync(dart);
  }
  return const [helpTopicsDart];
}

void main(List<String> args) {
  final fix = args.contains('--fix');
  final root = p.normalize(
    p.join(p.dirname(Platform.script.toFilePath()), '..'),
  );
  final stale = syncHelpTopics(root, fix: fix);
  if (stale.isEmpty) {
    stdout.writeln('The help topics match $helpTopicsDir.');
    return;
  }
  for (final f in stale) {
    stdout.writeln('${fix ? 'rewrote' : 'stale'}: $f');
  }
  if (!fix) {
    stderr.writeln('Run: dart tool/sync_help_topics.dart --fix');
    exitCode = 1;
  }
}

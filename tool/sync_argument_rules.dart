// Keeps every copy of the argument-writing rules in step with their one
// source, the block between the `argument-rules:start` / `:end` markers of
// website/src/content/docs/docs/arguments.md.
//
// A copy is the same pair of markers in another file, in whatever comment
// syntax the file takes (`<!-- -->`, MDX `{/* */}`), after a line prefix
// (`/// ` in a doc comment, `  /// ` in a barrels manifest's `umbrellaDoc`).
// The prefix of the start-marker line is put before every line of the
// block.
//
//   dart tool/sync_argument_rules.dart        # list stale copies, exit 1
//   dart tool/sync_argument_rules.dart --fix  # rewrite them
//
// The barrels manifests feed the generated umbrella libraries; run the wrap
// lanes (`dart tool/wrap_lanes.dart --gate regen`) after `--fix` touches
// one. tool/argument_rules_test.dart fails on a stale copy.
import 'dart:io';

import 'package:path/path.dart' as p;

const argumentRulesSource = 'website/src/content/docs/docs/arguments.md';

/// Every file that carries a copy, relative to the repo root.
const argumentRulesCopies = [
  'README.md',
  'website/src/content/docs/docs/getting-started.mdx',
  'skills/terradart/SKILL.md',
  'packages/terradart_core/lib/src/tf_arg.dart',
  'packages/terradart_core/lib/src/ref_to.dart',
  'packages/terradart_codegen/lib/src/codegen/barrels/barrels.yaml',
  'packages/terradart_codegen/lib/src/codegen/barrels/barrels_google_beta.yaml',
  'packages/terradart_codegen/lib/src/codegen/barrels/barrels_aws.yaml',
  'packages/terradart_codegen/lib/src/codegen/barrels/barrels_cloudflare.yaml',
  'packages/terradart_codegen/lib/src/codegen/barrels/barrels_appwrite.yaml',
];

final _start = RegExp(
  r'^(.*?)(?:<!--|\{/\*)\s*argument-rules:start\s*(?:-->|\*/\})\s*$',
);
final _end = RegExp(r'(?:<!--|\{/\*)\s*argument-rules:end\s*(?:-->|\*/\})');

/// The lines of the block in [text], without the markers and with the
/// start marker's prefix removed.
List<String> argumentRulesBlock(String text, String file) {
  final (:start, :end, :prefix) = _markers(text.split('\n'), file);
  final lines = text.split('\n').sublist(start + 1, end);
  return [
    for (final l in lines)
      l.startsWith(prefix) ? l.substring(prefix.length) : l.trimLeft(),
  ];
}

/// [text] with its block replaced by [block], each line prefixed like the
/// start marker (an empty line gets the prefix without trailing spaces).
String withArgumentRules(String text, String file, List<String> block) {
  final lines = text.split('\n');
  final (:start, :end, :prefix) = _markers(lines, file);
  return [
    ...lines.take(start + 1),
    for (final l in block) l.isEmpty ? prefix.trimRight() : '$prefix$l',
    ...lines.skip(end),
  ].join('\n');
}

({int start, int end, String prefix}) _markers(List<String> lines, String file) {
  final starts = [
    for (var i = 0; i < lines.length; i++)
      if (_start.hasMatch(lines[i])) i,
  ];
  final ends = [
    for (var i = 0; i < lines.length; i++)
      if (_end.hasMatch(lines[i])) i,
  ];
  if (starts.length != 1 || ends.length != 1 || ends.single < starts.single) {
    throw FormatException(
      '$file: needs one argument-rules:start marker followed by one '
      'argument-rules:end marker',
    );
  }
  return (
    start: starts.single,
    end: ends.single,
    prefix: _start.firstMatch(lines[starts.single])!.group(1)!,
  );
}

/// The copies under [root] that differ from the source; with [fix], they
/// are rewritten first, so the result lists what was rewritten.
List<String> syncArgumentRules(String root, {bool fix = false}) {
  final source = File(p.join(root, argumentRulesSource)).readAsStringSync();
  final block = argumentRulesBlock(source, argumentRulesSource);
  final stale = <String>[];
  for (final copy in argumentRulesCopies) {
    final file = File(p.join(root, copy));
    final text = file.readAsStringSync();
    final synced = withArgumentRules(text, copy, block);
    if (synced == text) continue;
    stale.add(copy);
    if (fix) file.writeAsStringSync(synced);
  }
  return stale;
}

void main(List<String> args) {
  final fix = args.contains('--fix');
  final stale = syncArgumentRules(Directory.current.path, fix: fix);
  if (stale.isEmpty) {
    stdout.writeln('sync_argument_rules: OK (${argumentRulesCopies.length} copies)');
    return;
  }
  for (final copy in stale) {
    stdout.writeln('${fix ? 'rewrote' : 'stale'}: $copy');
  }
  if (!fix) {
    stderr.writeln(
      'sync_argument_rules: run `dart tool/sync_argument_rules.dart --fix`, '
      'then `dart tool/wrap_lanes.dart --gate regen` if a barrels manifest '
      'changed.',
    );
    exitCode = 1;
  }
}

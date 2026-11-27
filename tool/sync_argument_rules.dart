import 'dart:io';

import 'package:path/path.dart' as p;

import 'wrap_lanes.dart';

const argumentRulesSource = 'website/src/content/docs/docs/arguments.md';

const argumentRulesFixedCopies = [
  'README.md',
  'website/src/content/docs/docs/getting-started.mdx',
  'skills/terradart/SKILL.md',
  'packages/terradart_core/lib/src/tf_arg.dart',
  'packages/terradart_core/lib/src/ref_to.dart',
];

List<String> argumentRulesCopiesFor(List<WrapLane> lanes) => [
  ...argumentRulesFixedCopies,
  for (final lane in lanes) lane.barrelsManifest,
];

final List<String> argumentRulesCopies = argumentRulesCopiesFor(
  parseWrapLanes(File(providersPath).readAsStringSync()),
);

final _start = RegExp(
  r'^(.*?)(?:<!--|\{/\*)\s*argument-rules:start\s*(?:-->|\*/\})\s*$',
);
final _end = RegExp(r'(?:<!--|\{/\*)\s*argument-rules:end\s*(?:-->|\*/\})');

List<String> argumentRulesBlock(String text, String file) {
  final (:start, :end, :prefix) = _markers(text.split('\n'), file);
  final lines = text.split('\n').sublist(start + 1, end);
  return [
    for (final l in lines)
      l.startsWith(prefix) ? l.substring(prefix.length) : l.trimLeft(),
  ];
}

String withArgumentRules(String text, String file, List<String> block) {
  final lines = text.split('\n');
  final (:start, :end, :prefix) = _markers(lines, file);
  return [
    ...lines.take(start + 1),
    for (final l in block) l.isEmpty ? prefix.trimRight() : '$prefix$l',
    ...lines.skip(end),
  ].join('\n');
}

({int start, int end, String prefix}) _markers(
  List<String> lines,
  String file,
) {
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
    stdout.writeln(
      'sync_argument_rules: OK (${argumentRulesCopies.length} copies)',
    );
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

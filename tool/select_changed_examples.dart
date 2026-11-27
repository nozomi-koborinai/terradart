// ignore_for_file: avoid_print

import 'dart:convert';
import 'dart:io';

const kDefaultShardSize = 10;

List<String> allSlugs() =>
    Directory('examples')
        .listSync()
        .whereType<Directory>()
        .map((d) => d.path.split(Platform.pathSeparator).last)
        .where((n) => n.endsWith('_quickstart'))
        .map((n) => n.substring(0, n.length - '_quickstart'.length))
        .toList()
      ..sort();

List<String> selectExamples({
  required String event,
  required List<String> changed,
  bool Function(String slug)? exists,
}) {
  if (event != 'pull_request') return allSlugs();
  final fanOut = RegExp(r'^(packages/|tool/|\.github/workflows/ci\.yml$)');
  if (changed.any(fanOut.hasMatch)) return allSlugs();
  final example = RegExp(r'^examples/([^/]+)_quickstart/');
  final slugs = <String>{};
  for (final path in changed) {
    final m = example.firstMatch(path);
    if (m != null) slugs.add(m.group(1)!);
  }
  return slugs.where(exists ?? _quickstartExists).toList()..sort();
}

List<Map<String, Object>> shardExamples(
  List<String> slugs, {
  int maxPerShard = kDefaultShardSize,
}) {
  if (maxPerShard <= 0) {
    throw ArgumentError.value(maxPerShard, 'maxPerShard', 'must be positive');
  }
  if (slugs.isEmpty) return const [];
  final shardCount = (slugs.length + maxPerShard - 1) ~/ maxPerShard;
  final base = slugs.length ~/ shardCount;
  final remainder = slugs.length % shardCount;
  final shards = <Map<String, Object>>[];
  var offset = 0;
  for (var i = 0; i < shardCount; i++) {
    final size = base + (i < remainder ? 1 : 0);
    shards.add({
      'id': '${i + 1}/$shardCount',
      'examples': slugs.sublist(offset, offset + size),
    });
    offset += size;
  }
  return shards;
}

bool _quickstartExists(String slug) =>
    Directory('examples/${slug}_quickstart').existsSync();

void main(List<String> args) {
  var event = '';
  var printShards = false;
  var shardSize = kDefaultShardSize;
  String? githubOutput;
  for (var i = 0; i < args.length; i++) {
    switch (args[i]) {
      case '--event' when i + 1 < args.length:
        event = args[++i];
      case '--shards':
        printShards = true;
      case '--shard-size' when i + 1 < args.length:
        final parsed = int.tryParse(args[++i]);
        if (parsed == null || parsed <= 0) {
          stderr.writeln('--shard-size must be a positive integer');
          exit(64);
        }
        shardSize = parsed;
      case '--github-output' when i + 1 < args.length:
        githubOutput = args[++i];
      default:
        stderr.writeln(
          'usage: select_changed_examples.dart --event <name> '
          '[--shards] [--shard-size <n>] [--github-output <path>]',
        );
        exit(64);
    }
  }
  if (event.isEmpty) {
    stderr.writeln(
      'usage: select_changed_examples.dart --event <name> '
      '[--shards] [--shard-size <n>] [--github-output <path>]',
    );
    exit(64);
  }
  final changed = <String>[];
  if (event == 'pull_request') {
    while (true) {
      final line = stdin.readLineSync();
      if (line == null) break;
      final trimmed = line.trim();
      if (trimmed.isNotEmpty) changed.add(trimmed);
    }
  }
  final selected = selectExamples(event: event, changed: changed);
  final shards = shardExamples(selected, maxPerShard: shardSize);
  final examplesJson = jsonEncode(selected);
  final shardsJson = jsonEncode(shards);
  if (githubOutput != null) {
    File(githubOutput).writeAsStringSync(
      'examples=$examplesJson\nshards=$shardsJson\n',
      mode: FileMode.append,
    );
    print('selected=$examplesJson');
    print('shards=${shards.length} (${selected.length} examples)');
    return;
  }
  print(printShards ? shardsJson : examplesJson);
}

library;

import 'dart:convert';
import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:pub_semver/pub_semver.dart';
import 'package:terradart_hcl/terradart_hcl.dart';

const migrateFixturesRoot = 'packages/terradart_migrate/test/fixtures';

String repinFixture(
  String hcl, {
  required String source,
  required String version,
}) {
  if (hcl.trimLeft().startsWith('{')) {
    return _repinJsonFixture(hcl, source: source, version: version);
  }
  final edits = <({int start, int end})>[];
  for (final expr in TfModule.fromHcl(hcl).requiredProviders.values) {
    if (expr is! ObjectExpr) continue;
    if (expr.item('source')?.value.constantString != source) continue;
    final versionExpr = expr.item('version')?.value;
    if (versionExpr == null || versionExpr.range.isNone) continue;
    final text = versionExpr.constantString;
    if (text == null || text == version || !_isSingleVersion(text)) continue;
    edits.add((
      start: versionExpr.range.start.offset,
      end: versionExpr.range.end.offset,
    ));
  }
  edits.sort((a, b) => b.start.compareTo(a.start));
  var out = hcl;
  for (final edit in edits) {
    out = out.replaceRange(edit.start, edit.end, '"$version"');
  }
  return out;
}

String _repinJsonFixture(
  String json, {
  required String source,
  required String version,
}) {
  final root = jsonDecode(json);
  if (root is! Map) return json;
  final tf = root['terraform'];
  final providers = tf is Map ? tf['required_providers'] : null;
  if (providers is! Map) return json;
  var changed = false;
  for (final entry in providers.values) {
    if (entry is! Map || entry['source'] != source) continue;
    final current = entry['version'];
    if (current is! String ||
        current == version ||
        !_isSingleVersion(current)) {
      continue;
    }
    entry['version'] = version;
    changed = true;
  }
  if (!changed) return json;
  return '${const JsonEncoder.withIndent('  ').convert(root)}\n';
}

List<String> repinLaneFixtures(
  String repoRoot, {
  required String source,
  required String version,
}) {
  final fixtures = Directory(p.join(repoRoot, migrateFixturesRoot));
  if (!fixtures.existsSync()) return const [];
  final moved = <String>[];
  for (final sub in ['lanes', 'shapes']) {
    final dir = Directory(p.join(fixtures.path, sub));
    if (!dir.existsSync()) continue;
    final files =
        dir
            .listSync(recursive: true)
            .whereType<File>()
            .where(
              (file) =>
                  file.path.endsWith('.tf') || file.path.endsWith('.tf.json'),
            )
            .toList()
          ..sort((a, b) => a.path.compareTo(b.path));
    for (final file in files) {
      final before = file.readAsStringSync();
      final after = repinFixture(before, source: source, version: version);
      if (after == before) continue;
      file.writeAsStringSync(after);
      final rel = p.split(p.relative(file.path, from: dir.path)).join('/');
      moved.add(sub == 'lanes' ? rel : '$sub/$rel');
    }
  }
  moved.sort();
  return moved;
}

bool _isSingleVersion(String constraint) {
  var text = constraint.trim();
  if (text.startsWith('=')) text = text.substring(1).trim();
  try {
    Version.parse(text);
    return true;
  } on FormatException {
    return false;
  }
}

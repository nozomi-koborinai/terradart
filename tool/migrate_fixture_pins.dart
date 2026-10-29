/// Rewrites exact provider pins in the migrate lane fixtures.
///
/// A weekly schema bump moves `provider_version.txt` and the generated
/// constant together. The fixture gate compares fixtures with the
/// synthesized `main.tf.json`, so the same step has to move exact pins or
/// the bump goes red. A range such as `~> 8.0` stays, and a second run
/// changes nothing.
library;

import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:pub_semver/pub_semver.dart';
import 'package:terradart_hcl/terradart_hcl.dart';

/// The migrator's test fixtures, relative to the repo root.
const migrateFixturesRoot = 'packages/terradart_migrate/test/fixtures';

/// [hcl] with every exact `required_providers` version of [source] set to
/// [version]. A constraint [Version.parse] rejects, such as `~> 8.0`, stays.
String repinFixture(
  String hcl, {
  required String source,
  required String version,
}) {
  final edits = <({int start, int end})>[];
  for (final expr in TfModule.fromHcl(hcl).requiredProviders.values) {
    if (expr is! ObjectExpr) continue;
    if (expr.item('source')?.value.constantString != source) continue;
    final versionExpr = expr.item('version')?.value;
    if (versionExpr == null || versionExpr.range.isNone) continue;
    final text = versionExpr.constantString;
    if (text == null || text == version || !_isExactRelease(text)) continue;
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

/// [repinFixture] over every `*.tf` file under `lanes/`, writing the files
/// it changes. Returns those paths relative to `lanes/`, sorted.
List<String> repinLaneFixtures(
  String repoRoot, {
  required String source,
  required String version,
}) {
  final lanes = Directory(p.join(repoRoot, migrateFixturesRoot, 'lanes'));
  if (!lanes.existsSync()) return const [];
  final files =
      lanes
          .listSync(recursive: true)
          .whereType<File>()
          .where((file) => file.path.endsWith('.tf'))
          .toList()
        ..sort((a, b) => a.path.compareTo(b.path));
  final moved = <String>[];
  for (final file in files) {
    final before = file.readAsStringSync();
    final after = repinFixture(before, source: source, version: version);
    if (after == before) continue;
    file.writeAsStringSync(after);
    moved.add(p.split(p.relative(file.path, from: lanes.path)).join('/'));
  }
  moved.sort();
  return moved;
}

bool _isExactRelease(String constraint) {
  try {
    Version.parse(constraint.trim());
    return true;
  } on FormatException {
    return false;
  }
}

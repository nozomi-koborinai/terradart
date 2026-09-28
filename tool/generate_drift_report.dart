// tool/generate_drift_report.dart
//
// Aggregates structured inputs (provided as files in --inputs-dir) into a
// Markdown drift report. The report is the body of one lane's weekly
// schema-bump PR.
//
// Usage:
//   dart tool/generate_drift_report.dart \
//     [--lane=google] \
//     --inputs-dir=/tmp/schema-bump \
//     --out=.schema-bump/drift_report.md \
//     --decision-out=/tmp/auto_merge.json
//
// --lane names a tool/providers.yaml lane (default google); its source and
// schemaDir title the report and its schema-diff pointer.
//
// Input layout:
//   state.json (tool/fetch_schema.dart + bump_date), wrap_check.txt,
//   wrap_check_exit, gates.txt, gates_exit, schema_diff.json
//   (tool/schema_resource_diff.dart); optional mm_yaml_sync.json (lanes
//   with Magic Modules YAML), beta_bump.json (the google-beta ride-along),
//   api_diff.json (tool/bump_api_surface.dart diff), scaffold.json and
//   new_factories.json (tool/bump_new_factories.dart scaffold / record).
//
// --decision-out (optional) receives `{auto_merge, blockers}`: the
// workflow enables auto-merge only when `blockers` is empty.
//
// Exit codes:
//   0 report generated (regardless of whether drift was present)
//   64 usage error
//   65 missing or unreadable input file

import 'dart:convert';
import 'dart:io';

import 'package:meta/meta.dart';
import 'package:yaml/yaml.dart';

const _exitUsage = 64;
const _exitMissingInput = 65;

Future<void> main(List<String> args) async {
  final parsed = _parseArgs(args);
  if (parsed == null) {
    stderr.writeln(
      'Usage: dart tool/generate_drift_report.dart '
      '[--lane=<name>] --inputs-dir=<path> --out=<path> '
      '[--decision-out=<path>]',
    );
    exit(_exitUsage);
  }
  final ReportInputs inputs;
  try {
    final lane = ReportLane.fromProviders(
      File('tool/providers.yaml').readAsStringSync(),
      parsed.lane,
    );
    inputs = readInputs(parsed.inputsDir, lane: lane);
  } catch (e) {
    stderr.writeln('Cannot read inputs: $e');
    exit(_exitMissingInput);
  }
  final md = buildReport(inputs);
  final outFile = File(parsed.outPath)
    ..createSync(recursive: true)
    ..writeAsStringSync(md);
  stdout.writeln('drift report written: ${outFile.path}');
  final decisionOut = parsed.decisionOut;
  if (decisionOut != null) {
    final blockers = autoMergeBlockers(inputs);
    File(decisionOut)
      ..createSync(recursive: true)
      ..writeAsStringSync(
        jsonEncode({'auto_merge': blockers.isEmpty, 'blockers': blockers}),
      );
    stdout.writeln(
      blockers.isEmpty
          ? 'auto-merge: eligible'
          : 'auto-merge: blocked (${blockers.join('; ')})',
    );
  }
}

class _Args {
  _Args(this.inputsDir, this.outPath, this.decisionOut, this.lane);
  final String inputsDir;
  final String outPath;
  final String? decisionOut;
  final String lane;
}

_Args? _parseArgs(List<String> args) {
  String? inputs;
  String? out;
  String? decisionOut;
  var lane = 'google';
  for (final a in args) {
    if (a.startsWith('--lane=')) {
      lane = a.substring('--lane='.length);
    } else if (a.startsWith('--inputs-dir=')) {
      inputs = a.substring('--inputs-dir='.length);
    } else if (a.startsWith('--out=')) {
      out = a.substring('--out='.length);
    } else if (a.startsWith('--decision-out=')) {
      decisionOut = a.substring('--decision-out='.length);
    }
  }
  if (inputs == null || out == null) return null;
  return _Args(inputs, out, decisionOut, lane);
}

/// The lane a report is about: its registry source, the Terraform type
/// prefix of its resources, the fixture the PR diff carries, and what its
/// QA gates are called.
@visibleForTesting
class ReportLane {
  const ReportLane({
    required this.name,
    required this.source,
    required this.schemaDir,
    this.prOnly = false,
  });

  /// Reads [name]'s `source`, `schemaDir` and `bump.mode` from
  /// tool/providers.yaml.
  factory ReportLane.fromProviders(String providersYaml, String name) {
    final providers =
        (loadYaml(providersYaml) as YamlMap)['providers'] as YamlMap;
    final entry = providers[name];
    if (entry is! YamlMap ||
        entry['source'] is! String ||
        entry['schemaDir'] is! String) {
      throw FormatException('unknown lane "$name" in tool/providers.yaml');
    }
    final bump = entry['bump'];
    return ReportLane(
      name: name,
      source: entry['source'] as String,
      schemaDir: entry['schemaDir'] as String,
      prOnly: bump is YamlMap && bump['mode'] == 'pr-only',
    );
  }

  static const google = ReportLane(
    name: 'google',
    source: 'hashicorp/google',
    schemaDir: 'packages/terradart_codegen/test/fixtures/wrap/source',
  );

  final String name;
  final String source;
  final String schemaDir;

  /// `bump.mode: pr-only`: the workflow opens the PR but never enables
  /// auto-merge on it.
  final bool prOnly;

  /// `google_`, `aws_`, `cloudflare_`: the source's provider name.
  String get typePrefix => '${source.split('/').last}_';

  String get gatesLabel =>
      name == 'google' ? 'universal QA gates' : 'lane QA gates ($name)';
}

@visibleForTesting
class ReportInputs {
  ReportInputs({
    required this.state,
    required this.wrapCheckStdout,
    required this.wrapCheckExitCode,
    required this.gatesStdout,
    required this.gatesExitCode,
    required this.schemaDiff,
    this.mmYamlSync,
    this.betaBump,
    this.apiDiff,
    this.scaffold,
    this.newFactories,
    this.lane = ReportLane.google,
  });
  final Map<String, dynamic> state;
  final String wrapCheckStdout;
  final int wrapCheckExitCode;
  final String gatesStdout;
  final int gatesExitCode;

  /// Optional `mm_yaml_sync.json` — only lanes enriched by Magic Modules
  /// YAML sync it. Absent → the report omits the MM section and row.
  final Map<String, dynamic>? mmYamlSync;
  final Map<String, dynamic> schemaDiff;
  final ReportLane lane;

  /// Optional `beta_bump.json` payload — present only when the workflow ran
  /// the google-beta ride-along (a GA bump week). Absent file → null → the
  /// report omits the beta section entirely.
  final Map<String, dynamic>? betaBump;

  /// Optional `api_diff.json` (`tool/bump_api_surface.dart diff`):
  /// `{breaking: [..], added: n}`. Absent → the surface was not compared,
  /// which blocks auto-merge.
  final Map<String, dynamic>? apiDiff;

  /// Optional `scaffold.json`: `{exit, log_excerpt}` of the default-override
  /// scaffolding for the new types. A nonzero exit blocks auto-merge.
  final Map<String, dynamic>? scaffold;

  /// Optional `new_factories.json`: `{factories: [{tf_type, class_name,
  /// kind}], example_generator}` — the new types the regenerate made
  /// factories.
  final Map<String, dynamic>? newFactories;
}

@visibleForTesting
ReportInputs readInputs(String dir, {ReportLane lane = ReportLane.google}) {
  final state = jsonDecode(File('$dir/state.json').readAsStringSync())
      as Map<String, dynamic>;
  final wrapCheck = File('$dir/wrap_check.txt').readAsStringSync();
  final wrapCheckExit = int.parse(
    File('$dir/wrap_check_exit').readAsStringSync().trim(),
  );
  final gates = File('$dir/gates.txt').readAsStringSync();
  final gatesExit = int.parse(
    File('$dir/gates_exit').readAsStringSync().trim(),
  );
  final mmFile = File('$dir/mm_yaml_sync.json');
  final mm = mmFile.existsSync()
      ? jsonDecode(mmFile.readAsStringSync()) as Map<String, dynamic>
      : null;
  final schema = jsonDecode(File('$dir/schema_diff.json').readAsStringSync())
      as Map<String, dynamic>;
  final betaFile = File('$dir/beta_bump.json');
  final beta = betaFile.existsSync()
      ? jsonDecode(betaFile.readAsStringSync()) as Map<String, dynamic>
      : null;
  Map<String, dynamic>? optional(String name) {
    final file = File('$dir/$name');
    return file.existsSync()
        ? jsonDecode(file.readAsStringSync()) as Map<String, dynamic>
        : null;
  }

  final api = optional('api_diff.json');
  return ReportInputs(
    state: state,
    wrapCheckStdout: wrapCheck,
    wrapCheckExitCode: wrapCheckExit,
    gatesStdout: gates,
    gatesExitCode: gatesExit,
    mmYamlSync: mm,
    schemaDiff: schema,
    betaBump: beta,
    apiDiff: api,
    scaffold: optional('scaffold.json'),
    newFactories: optional('new_factories.json'),
    lane: lane,
  );
}

@visibleForTesting
String buildReport(ReportInputs i) {
  final b = StringBuffer();
  final banner = buildNewMajorBanner(i);
  if (banner != null) {
    b.writeln(banner);
    b.writeln();
    b.writeln('---');
    b.writeln();
  }
  b.writeln('# Schema bump (${i.lane.source}) — ${i.state['bump_date']}');
  b.writeln();
  b.writeln(buildAutoMergeSection(i));
  b.writeln();
  b.writeln(buildSummaryTable(i));
  b.writeln();
  b.writeln(buildApiSection(i));
  b.writeln();
  b.writeln(buildSchemaSection(i));
  b.writeln();
  final mmSection = buildMmYamlSection(i);
  if (mmSection != null) {
    b.writeln(mmSection);
    b.writeln();
  }
  final betaSection = buildBetaSection(i);
  if (betaSection != null) {
    b.writeln(betaSection);
    b.writeln();
  }
  b.writeln(buildDivergenceSection(i));
  b.writeln();
  b.writeln(buildGateSection(i));
  b.writeln();
  b.writeln(buildNewResourceSection(i));
  b.writeln();
  b.writeln(buildRemovedResourceSection(i));
  b.writeln();
  b.writeln('---');
  b.writeln();
  b.writeln(
    'Generated by `.github/workflows/schema-bump.yml`. '
    'Source: `tool/generate_drift_report.dart`.',
  );
  return b.toString();
}

/// Why this bump must wait for a human; empty when it may auto-merge.
///
/// Auto-merge is for the routine week only: a clean regenerate, green QA
/// gates, no MM sync failure, no removed curated resource (or data source,
/// on lanes that diff them), no new major, and no breaking change to the
/// generated Dart API. A new upstream type is routine: the bump scaffolds
/// its default override and records it for later polish, so only a failed
/// scaffold blocks. CI's required checks still gate the merge itself.
@visibleForTesting
List<String> autoMergeBlockers(ReportInputs i) {
  final blockers = <String>[
    if (i.lane.prOnly)
      '${i.lane.name} is a pr-only lane (bump.mode in tool/providers.yaml): '
          'its bumps never auto-merge',
  ];
  if (i.state['new_major_available'] == true) {
    blockers.add('a new provider major is available');
  }
  if (i.wrapCheckExitCode != 0) {
    blockers.add('`terradart wrap --check` diverged');
  }
  if (i.gatesExitCode != 0) blockers.add('${i.lane.gatesLabel} failed');
  if (((i.mmYamlSync?['failed'] as List?) ?? const []).isNotEmpty) {
    blockers.add('MM YAML sync failures');
  }
  final scaffold = i.scaffold;
  if (scaffold != null && scaffold['exit'] != 0) {
    blockers.add('scaffolding default overrides for the new types failed');
  }
  final removed = _count(i, 'removed_resources');
  if (removed > 0) {
    blockers.add('$removed curated resource(s) removed upstream');
  }
  final removedData = _count(i, 'removed_data_sources');
  if (removedData > 0) {
    blockers.add('$removedData curated data source(s) removed upstream');
  }
  final beta = i.betaBump;
  if (beta != null &&
      (beta['extract_exit'] != 0 || beta['wrap_check_exit'] != 0)) {
    blockers.add('the google-beta ride-along failed');
  }
  final api = i.apiDiff;
  if (api == null) {
    blockers.add('the generated API surface was not compared');
  } else {
    final breaking = (api['breaking'] as List?)?.length ?? 0;
    if (breaking > 0) blockers.add('$breaking breaking API change(s)');
  }
  return blockers;
}

int _count(ReportInputs i, String key) =>
    (i.schemaDiff[key] as List?)?.length ?? 0;

/// Whether the lane's schema diff covers data sources too.
bool _tracksDataSources(ReportInputs i) =>
    i.schemaDiff.containsKey('added_data_sources');

@visibleForTesting
String buildAutoMergeSection(ReportInputs i) {
  final blockers = autoMergeBlockers(i);
  if (blockers.isEmpty) {
    return '## ✅ Auto-merge enabled\n\n'
        'Routine bump: no removed curated types and no breaking API change '
        '(new types became factories with default overrides). It '
        'squash-merges once the required checks pass.';
  }
  return '## ✋ Needs a maintainer\n\n'
      'Auto-merge is off for this bump:\n\n'
      '${blockers.map((b) => '- $b').join('\n')}';
}

@visibleForTesting
String buildApiSection(ReportInputs i) {
  final api = i.apiDiff;
  if (api == null) {
    return '## ⚠️ Generated API surface\n\n- not compared this run.';
  }
  final breaking = ((api['breaking'] as List?) ?? const []).cast<String>();
  final added = api['added'] ?? 0;
  if (breaking.isEmpty) {
    return '## ✅ Generated API surface\n\n'
        '- no breaking change; $added entries added.';
  }
  final b = StringBuffer(
    '## ❌ Generated API surface (${breaking.length} breaking)\n\n',
  );
  for (final line in breaking.take(200)) {
    b.writeln('- `$line`');
  }
  if (breaking.length > 200) {
    b.writeln('- ... and ${breaking.length - 200} more (see the workflow log)');
  }
  b.writeln();
  b.write('A breaking change needs a `MIGRATING.md` entry.');
  return b.toString();
}

@visibleForTesting
String? buildNewMajorBanner(ReportInputs i) {
  if (i.state['new_major_available'] != true) return null;
  final maxMajor = i.state['max_major_version'] ?? 'unknown';
  return '> ⚠️ **NEW MAJOR AVAILABLE**: `${i.lane.source}` v$maxMajor exists.\n'
      '>\n'
      '> The weekly bump never crosses a major: it keeps tracking '
      'v${i.state['major'] ?? '?'}. Absorbing v$maxMajor needs a '
      'curated-surface regression sweep.\n'
      '>\n'
      '> Action: open a separate planning issue when ready to absorb v$maxMajor.';
}

@visibleForTesting
String buildSummaryTable(ReportInputs i) {
  final current = i.state['current'] ?? 'unknown';
  final latest = i.state['latest'] ?? current;
  final major = i.state['major'];
  final wrapStatus = i.wrapCheckExitCode == 0 ? '✅ clean' : '⚠️ divergence';
  final gatesStatus = i.gatesExitCode == 0 ? '✅ all pass' : '❌ failures';
  final prefix = i.lane.typePrefix;
  final removed =
      _count(i, 'removed_resources') + _count(i, 'removed_data_sources');
  final betaRow = betaSummaryRow(i);
  final mm = i.mmYamlSync;
  return '## Summary\n\n'
      '| Source | Status |\n'
      '|---|---|\n'
      '| `${i.lane.source}`${major == null ? '' : ' v$major'} | '
      '$current → **$latest** |\n'
      '${betaRow == null ? '' : '$betaRow\n'}'
      '${mm == null ? '' : '| magic-modules | **${(mm['changed'] as List?)?.length ?? 0} files updated** |\n'}'
      '| `terradart wrap --check` | $wrapStatus |\n'
      '| ${i.lane.gatesLabel} | $gatesStatus |\n'
      '| New `$prefix*` resources | **${_count(i, 'added_resources')} detected** |\n'
      '${_tracksDataSources(i) ? '| New `$prefix*` data sources | **${_count(i, 'added_data_sources')} detected** |\n' : ''}'
      '| Removed curated types | ${removed == 0 ? "✅ none" : "⚠️ $removed"} |';
}

@visibleForTesting
String? betaSummaryRow(ReportInputs i) {
  final beta = i.betaBump;
  if (beta == null) return null;
  final prev = beta['previous_version'] ?? 'unknown';
  final version = beta['version'] ?? 'unknown';
  final clean = beta['extract_exit'] == 0 && beta['wrap_check_exit'] == 0;
  final status = clean
      ? '$prev → **$version**'
      : '⚠️ $prev → $version — see the google-beta section';
  return '| `hashicorp/google-beta` | $status |';
}

@visibleForTesting
String? buildBetaSection(ReportInputs i) {
  final beta = i.betaBump;
  if (beta == null) return null;
  final prev = beta['previous_version'] ?? 'unknown';
  final version = beta['version'] ?? 'unknown';
  final b = StringBuffer('## google-beta bump ($prev → $version)\n\n');
  if (beta['extract_exit'] != 0) {
    b.writeln(
      '- ❌ fixture re-extraction failed (exit ${beta['extract_exit']}) — '
      'the PR ships GA-only; `source_beta/` is unchanged at $prev. A '
      'fail-closed StateError usually means an upstream beta-only type '
      'was removed (Tier 3).',
    );
  } else {
    b.writeln(
      '- ✅ fixture re-extracted at $version (same resource set — keys '
      'from the previous fixture).',
    );
    if (beta['wrap_check_exit'] == 0) {
      b.writeln('- ✅ `terradart wrap --check` (beta) clean.');
    } else {
      b.writeln(
        '- ⚠️ `terradart wrap --check` (beta) divergence '
        '(exit ${beta['wrap_check_exit']}) — see the excerpt below.',
      );
    }
  }
  final excerpt = (beta['log_excerpt'] as String?) ?? '';
  if (excerpt.isNotEmpty) {
    b
      ..writeln()
      ..writeln('<details><summary>beta failure log excerpt</summary>')
      ..writeln()
      ..writeln('```')
      ..writeln(excerpt.trim())
      ..writeln('```')
      ..writeln()
      ..writeln('</details>');
  }
  return b.toString().trimRight();
}

@visibleForTesting
String buildSchemaSection(ReportInputs i) {
  final current = i.state['current'] ?? 'unknown';
  final latest = i.state['latest'] ?? current;
  return '## Provider schema diff ($current → $latest)\n\n'
      '- See full schema diff in the PR file diff for '
      '`${i.lane.schemaDir}/schema.json`.';
}

@visibleForTesting
String? buildMmYamlSection(ReportInputs i) {
  final mm = i.mmYamlSync;
  if (mm == null) return null;
  final changed = (mm['changed'] as List?) ?? [];
  final failed = (mm['failed'] as List?) ?? [];
  final ref = mm['ref'] as String?;
  final at = ref == null ? '' : '- Read at magic-modules `$ref`.\n';
  if (changed.isEmpty && failed.isEmpty) {
    return '## MM YAML updates\n\n$at- ✅ no upstream changes since last sync.';
  }
  final b = StringBuffer('## MM YAML updates (${changed.length} files)\n\n$at');
  if (at.isNotEmpty) b.writeln();
  if (changed.isNotEmpty) {
    b.writeln('| File | Upstream URL |');
    b.writeln('|---|---|');
    for (final c in changed) {
      final m = c as Map<String, dynamic>;
      b.writeln('| `${m['file']}` | <${m['upstream_url']}> |');
    }
  }
  if (failed.isNotEmpty) {
    b.writeln();
    b.writeln('### ⚠️ Sync failures');
    for (final f in failed) {
      final m = f as Map<String, dynamic>;
      b.writeln('- `${m['file']}` — ${m['reason']}');
    }
  }
  return b.toString().trimRight();
}

@visibleForTesting
String buildDivergenceSection(ReportInputs i) {
  if (i.wrapCheckExitCode == 0) {
    return '## ✅ `terradart wrap --check`\n\n'
        'All wrappers byte-identical with emitter output.';
  }
  return '## ⚠️ `terradart wrap --check` divergence\n\n'
      'The wrap CLI output no longer matches committed wrappers. Likely\n'
      'caused by upstream schema or MM YAML changes. Review and either\n'
      're-run `terradart wrap` locally, or adjust `wrapper_overrides/yaml/`\n'
      'overrides.\n\n'
      '```\n'
      '${_truncate(i.wrapCheckStdout, 8000)}\n'
      '```';
}

@visibleForTesting
String buildGateSection(ReportInputs i) {
  final label = i.lane.gatesLabel;
  final title = '${label[0].toUpperCase()}${label.substring(1)}';
  if (i.gatesExitCode == 0) {
    return '## ✅ $title pass';
  }
  return '## ❌ $title failures\n\n'
      '```\n'
      '${_truncate(i.gatesStdout, 8000)}\n'
      '```';
}

@visibleForTesting
String buildNewResourceSection(ReportInputs i) {
  final prefix = i.lane.typePrefix;
  final generated = {
    for (final f in ((i.newFactories?['factories'] as List?) ?? const [])
        .cast<Map<String, dynamic>>())
      '${f['kind']}:${f['tf_type']}': f['class_name'] as String,
  };
  String line(String type, String kind) {
    final dataSource = kind == 'dataSource' ? ' (data source)' : '';
    final className = generated['$kind:$type'];
    return className == null
        ? '- `$type`$dataSource — no factory generated (see the wrap log)'
        : '- `$type`$dataSource → `$className`';
  }

  final added = [
    for (final r in (i.schemaDiff['added_resources'] as List?) ?? const [])
      line('$r', 'resource'),
    for (final d in (i.schemaDiff['added_data_sources'] as List?) ?? const [])
      line('$d', 'dataSource'),
  ];
  final what = _tracksDataSources(i) ? 'types' : 'resources';
  if (added.isEmpty) {
    return '## 🆕 New `$prefix*` $what\n\n- ✅ none in this bump.';
  }
  final b = StringBuffer(
    '## 🆕 New `$prefix*` $what (${added.length} detected)\n\n',
  );
  for (final r in added) {
    b.writeln(r);
  }
  b.writeln();
  final scaffold = i.scaffold;
  if (scaffold != null && scaffold['exit'] != 0) {
    b
      ..writeln(
        '⚠️ Scaffolding their default overrides failed (exit '
        '${scaffold['exit']}); no override was kept.',
      )
      ..writeln()
      ..writeln('```')
      ..writeln('${scaffold['log_excerpt'] ?? ''}'.trim())
      ..writeln('```')
      ..writeln();
  }
  final coveredByGenerator =
      (i.newFactories?['example_generator'] as String?)?.isNotEmpty ?? false;
  b.writeln(
    'New types do not block auto-merge. Each generated factory has a '
    'default override (review it later) and a `tool/curation_backlog.yaml` '
    'entry for API polish; ${coveredByGenerator ? 'the lane\'s leftover '
        'example generator covers it in an example' : 'an `awaiting-example:` '
        'line in `tool/example_debt.yaml` holds its example coverage'}. Types '
    'without a factory are in the backlog only.',
  );
  return b.toString().trimRight();
}

@visibleForTesting
String buildRemovedResourceSection(ReportInputs i) {
  final removed = [
    for (final r in (i.schemaDiff['removed_resources'] as List?) ?? const [])
      '`$r`',
    for (final d in (i.schemaDiff['removed_data_sources'] as List?) ?? const [])
      '`$d` (data source)',
  ];
  if (removed.isEmpty) {
    return '## ✅ Removed curated types\n\n- none detected.';
  }
  final b = StringBuffer(
    '## ⚠️ Removed curated types (${removed.length})\n\n',
  );
  b.writeln(
    'These curated types existed in the previous schema but are gone in the '
    'new one, so their wrappers will break:',
  );
  b.writeln();
  for (final r in removed) {
    b.writeln('- $r');
  }
  return b.toString().trimRight();
}

String _truncate(String s, int max) {
  if (s.length <= max) return s;
  return '${s.substring(0, max)}\n... (truncated)';
}

/// Single source of truth for docs consistency checks and catalog counts.
///
/// Counts are DERIVED from `packages/terradart_google/lib/src/_catalog.g.dart`
/// (the wrap-generated catalog), not hand-bumped constants. A Wave that
/// regenerates the catalog moves every count in lockstep, so parallel Wave
/// PRs no longer race on a shared count constant (the #136/#137/#138
/// reconcile churn). Only the human-readable prose in README / CONTRIBUTING /
/// website still needs syncing — `check_docs_consistency.dart` verifies it
/// matches these derived numbers.
library;

import 'dart:io';

import 'bump_plan.dart';
import 'lane_surface.dart';
import 'wrap_lanes.dart';

final _CatalogCounts _counts = _readCatalogCounts();

/// Total catalog entries (curated factories + data sources).
int get catalogEntryCount => _counts.total;

/// Curated resource factories (excludes data sources).
int get curatedFactoryCount => _counts.resources;

/// Curated data sources.
int get dataSourceCount => _counts.dataSources;

/// `1 data source` / `N data sources` for catalog prose.
String get dataSourceCatalogPhrase =>
    dataSourceCount == 1 ? '1 data source' : '$dataSourceCount data sources';

String get curatedCatalogPhrase => '$curatedFactoryCount curated';
String get catalogEntriesPhrase => '$catalogEntryCount catalog';

/// The pages whose prose carries the terradart_google catalog counts.
const googleCountPages = [
  'README.md',
  'CONTRIBUTING.md',
  'packages/terradart_google/README.md',
  'website/src/content/docs/docs/coverage/google.md',
];

/// The page whose Sustainability section carries the weekly bump table.
const bumpSchedulePage = 'website/src/content/docs/docs/how-its-built.mdx';

/// Every tool/providers.yaml lane with a `bump:` entry.
final List<BumpLane> bumpLanes = parseBumpLanes(
  File(providersPath).readAsStringSync(),
);

const _bumpScheduleStart = '{/* bump-schedule:start */}';
const _bumpScheduleEnd = '{/* bump-schedule:end */}';

/// [text] with the lines between the bump-schedule markers set to the table
/// [lanes] render. One row per lane, Sunday first. Throws [StateError] when
/// [text] does not contain exactly one marker pair, or when a lane has no
/// `siteTitle`.
String fixBumpSchedule(String text, List<BumpLane> lanes) {
  final lines = text.split('\n');
  var startAt = -1;
  var endAt = -1;
  for (var i = 0; i < lines.length; i++) {
    final line = lines[i].trim();
    if (line == _bumpScheduleStart) {
      if (startAt != -1) _badBumpScheduleMarkers();
      startAt = i;
    } else if (line == _bumpScheduleEnd) {
      if (endAt != -1) _badBumpScheduleMarkers();
      endAt = i;
    }
  }
  if (startAt == -1 || endAt == -1 || startAt >= endAt) {
    _badBumpScheduleMarkers();
  }
  final rows = [...lanes]
    ..sort((a, b) => a.weekday.index.compareTo(b.weekday.index));
  return [
    ...lines.sublist(0, startAt + 1),
    '| Provider | Day (UTC) | Routine bump |',
    '|---|---|---|',
    for (final lane in rows) _bumpScheduleRow(lane),
    ...lines.sublist(endAt),
  ].join('\n');
}

Never _badBumpScheduleMarkers() {
  throw StateError('expected one $_bumpScheduleStart before $_bumpScheduleEnd');
}

String _bumpScheduleRow(BumpLane lane) {
  final title = lane.lane.siteTitle;
  if (title == null || title.isEmpty) {
    throw StateError('lane ${lane.lane.name} has no siteTitle');
  }
  final rideAlong = lane.rideAlong;
  final provider = rideAlong == null
      ? title
      : '$title (with ${rideAlong.name})';
  final routine = switch (lane.mode) {
    'auto' => 'auto-merges when CI is green',
    'pr-only' => 'waits for review',
    _ => throw StateError('lane ${lane.lane.name}: bump mode ${lane.mode}'),
  };
  return '| $provider | ${lane.weekday.label} | $routine |';
}

/// [text] with every terradart_google count phrase set to the catalog's
/// counts: `N curated resource factories + M data sources`,
/// `(T catalog entries)` and `(GA catalog, T entries)`.
String fixGoogleCounts(String text) => text
    .replaceAll(
      RegExp(r'\d+ curated resource factories \+ \d+ data sources?\b'),
      '$curatedFactoryCount curated resource factories + '
      '$dataSourceCatalogPhrase',
    )
    .replaceAll(
      RegExp(r'\(\d+ catalog entries\)'),
      '($catalogEntryCount catalog entries)',
    )
    .replaceAll(
      RegExp(r'\(GA catalog, \d+ entries\)'),
      '(GA catalog, $catalogEntryCount entries)',
    );

/// The pub.dev install line of `terradart migrate`: README, the migrate
/// package README and the website guide must all carry it. Migration runs
/// before a Dart project exists, so the install is the user CLI, not
/// `terradart_migrate` (the library the command calls).
const migrateInstallPhrase = 'dart pub global activate terradart_cli';

class _CatalogCounts {
  const _CatalogCounts({
    required this.total,
    required this.resources,
    required this.dataSources,
  });

  final int total;
  final int resources;
  final int dataSources;
}

_CatalogCounts _readCatalogCounts() {
  // Resolve from repo root (check_docs_consistency, agent_verify) or from a
  // package dir, so the same library works in every caller's cwd.
  const candidates = [
    'packages/terradart_google/lib/src/_catalog.g.dart',
    '../terradart_google/lib/src/_catalog.g.dart',
    '../packages/terradart_google/lib/src/_catalog.g.dart',
  ];
  File? file;
  for (final path in candidates) {
    final f = File(path);
    if (f.existsSync()) {
      file = f;
      break;
    }
  }
  if (file == null) {
    throw StateError(
      'doc_expectations: _catalog.g.dart not found from '
      '${Directory.current.path} (tried: ${candidates.join(', ')})',
    );
  }
  final text = file.readAsStringSync();
  final kinds = RegExp(
    r'kind: CatalogKind\.(\w+)',
  ).allMatches(text).map((m) => m.group(1)).toList();
  if (kinds.isEmpty) {
    throw StateError('doc_expectations: no CatalogEntry kinds in ${file.path}');
  }
  return _CatalogCounts(
    total: kinds.length,
    resources: kinds.where((k) => k == 'resource').length,
    dataSources: kinds.where((k) => k == 'dataSource').length,
  );
}

/// A lane pinned to one exact provider release whose docs must not carry a
/// copy of that pin or of its catalog counts: the pin is the fixture's
/// `provider_version.txt` (`terradart wrap` emits it into the package) and
/// the counts are the generated catalog, so a schema bump touches no prose.
class ExactPinLane {
  const ExactPinLane(this.package, this.fixtureDir, this.pinConstant);

  final String package;
  final String fixtureDir;

  /// The generated-pin constant prose should name instead of the version.
  final String pinConstant;

  String get pin =>
      File('$fixtureDir/provider_version.txt').readAsStringSync().trim();

  /// `(resources, dataSources)` from the package's `_catalog.g.dart`.
  (int, int) get counts {
    final text = File(
      'packages/$package/lib/src/_catalog.g.dart',
    ).readAsStringSync();
    final kinds = RegExp(
      r'kind: CatalogKind\.(\w+)',
    ).allMatches(text).map((m) => m.group(1)).toList();
    return (
      kinds.where((k) => k == 'resource').length,
      kinds.where((k) => k == 'dataSource').length,
    );
  }

  /// Doc phrases that would go stale on the next bump: the pin itself and
  /// the `N resource` / `N data source` / `N catalog` counts.
  List<RegExp> get stalePhrases {
    final (resources, dataSources) = counts;
    return [
      RegExp('(?<![\\d.])${RegExp.escape(pin)}(?![\\d.])'),
      RegExp('\\b$resources resource'),
      RegExp('\\b$dataSources data source'),
      RegExp('\\b${resources + dataSources} catalog'),
    ];
  }
}

/// Lanes whose provider class aliases the generated pin
/// (`const String k… = terradartProviderVersion`).
final List<ExactPinLane> exactPinLanes = [
  for (final hit in discoverExactPins(
    parseWrapLanes(File(providersPath).readAsStringSync()),
  ))
    ExactPinLane(hit.package, hit.fixtureDir, hit.pinConstant),
];

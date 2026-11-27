import 'dart:io';

import 'bump_plan.dart';
import 'lane_surface.dart';
import 'wrap_lanes.dart';

final _CatalogCounts _counts = _readCatalogCounts();

int get catalogEntryCount => _counts.total;

int get curatedFactoryCount => _counts.resources;

int get dataSourceCount => _counts.dataSources;

String get dataSourceCatalogPhrase =>
    dataSourceCount == 1 ? '1 data source' : '$dataSourceCount data sources';

String get curatedCatalogPhrase => '$curatedFactoryCount curated';
String get catalogEntriesPhrase => '$catalogEntryCount catalog';

const googleCountPages = [
  'README.md',
  'CONTRIBUTING.md',
  'packages/terradart_google/README.md',
  'website/src/content/docs/docs/coverage/google.md',
];

const bumpSchedulePage = 'website/src/content/docs/docs/how-its-built.mdx';

final List<BumpLane> bumpLanes = parseBumpLanes(
  File(providersPath).readAsStringSync(),
);

const _bumpScheduleStart = '{/* bump-schedule:start */}';
const _bumpScheduleEnd = '{/* bump-schedule:end */}';

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
  throw const FormatException(
    'expected one $_bumpScheduleStart before $_bumpScheduleEnd',
  );
}

String _bumpScheduleRow(BumpLane lane) {
  final title = lane.lane.siteTitle;
  if (title == null || title.isEmpty) {
    throw FormatException('lane ${lane.lane.name} has no siteTitle');
  }
  final rideAlong = lane.rideAlong;
  final provider = rideAlong == null
      ? title
      : '$title (with ${rideAlong.name})';
  final routine = switch (lane.mode) {
    'auto' => 'auto-merges when CI is green',
    'pr-only' => 'waits for review',
    _ => throw FormatException(
      'lane ${lane.lane.name}: bump mode ${lane.mode}',
    ),
  };
  return '| $provider | ${lane.weekday.label} | $routine |';
}

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

const migrateInstallPhrase = 'dart install terradart_cli';

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

class ExactPinLane {
  const ExactPinLane(this.package, this.fixtureDir, this.pinConstant);

  final String package;
  final String fixtureDir;
  final String pinConstant;

  String get pin =>
      File('$fixtureDir/provider_version.txt').readAsStringSync().trim();

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

  List<RegExp> get stalePhrases {
    final (resources, dataSources) = counts;
    return [
      RegExp('(?<![\\d.^])${RegExp.escape(pin)}(?![\\d.])'),
      RegExp('\\b$resources resource'),
      RegExp('\\b$dataSources data source'),
      RegExp('\\b${resources + dataSources} catalog'),
    ];
  }
}

final List<ExactPinLane> exactPinLanes = [
  for (final hit in discoverExactPins(
    parseWrapLanes(File(providersPath).readAsStringSync()),
  ))
    ExactPinLane(hit.package, hit.fixtureDir, hit.pinConstant),
];

import 'dart:io';

import 'package:yaml/yaml.dart';

import 'wrap_lanes.dart';

List<String> laneCatalogPaths(List<WrapLane> lanes) => [
  for (final lane in lanes) '${lane.outputPackage}/lib/src/_catalog.g.dart',
];

final catalogEntryPattern = RegExp(
  "CatalogEntry\\(\\s*"
  "tfType:\\s*'([^']+)'\\s*,\\s*"
  "className:\\s*'([^']+)'\\s*,\\s*"
  "barrel:\\s*'([^']+)'\\s*,\\s*"
  'kind:\\s*CatalogKind\\.(\\w+)',
);

typedef CatalogEntryView = ({
  String tfType,
  String className,
  String barrel,
  String kind,
});

List<CatalogEntryView> parseCatalogEntries(String source) => [
  for (final match in catalogEntryPattern.allMatches(source))
    (
      tfType: match.group(1)!,
      className: match.group(2)!,
      barrel: match.group(3)!,
      kind: match.group(4)!,
    ),
];

List<String> workspacePackageNames(String pubspec) {
  final doc = loadYaml(pubspec);
  final workspace = doc is YamlMap ? doc['workspace'] : null;
  if (workspace is! YamlList) {
    throw const FormatException('pubspec.yaml has no workspace: list');
  }
  return [
    for (final entry in workspace)
      if (entry is String && entry.startsWith('packages/'))
        entry.split('/').last,
  ];
}

typedef ExactPinHit = ({String package, String fixtureDir, String pinConstant});

final _pinAlias = RegExp(r'const String (k\w+) = terradartProviderVersion;');

List<ExactPinHit> discoverExactPins(List<WrapLane> lanes, {String root = '.'}) {
  final hits = <ExactPinHit>[];
  for (final lane in lanes) {
    final dir = Directory('$root/${lane.outputPackage}/lib');
    if (!dir.existsSync()) continue;
    String? constant;
    final files =
        dir
            .listSync(recursive: true)
            .whereType<File>()
            .where((file) => file.path.endsWith('.dart'))
            .toList()
          ..sort((a, b) => a.path.compareTo(b.path));
    for (final file in files) {
      final match = _pinAlias.firstMatch(file.readAsStringSync());
      if (match == null) continue;
      constant = match.group(1);
      break;
    }
    if (constant == null) continue;
    hits.add((
      package: lane.outputPackage.split('/').last,
      fixtureDir: lane.schemaDir,
      pinConstant: constant,
    ));
  }
  return hits;
}

List<String> docSnippetPackages(String pubspec) => [
  for (final name in workspacePackageNames(pubspec))
    if (name != 'terradart_codegen' && name != 'terradart_cli') name,
];

List<String> migrateGatePackages(List<WrapLane> lanes) => [
  'terradart_core',
  for (final lane in lanes) lane.outputPackage.split('/').last,
  'terradart_time',
];

List<String> docSnippetBarrels(List<WrapLane> lanes) {
  String imp(String package) => "import 'package:$package/$package.dart';";
  return [
    "import 'dart:convert';",
    "import 'dart:io';",
    imp('terradart_core'),
    for (final lane in lanes) imp(lane.outputPackage.split('/').last),
    imp('terradart_time'),
  ];
}

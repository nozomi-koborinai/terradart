// Readers for tool/providers.yaml lanes and the workspace pubspec.
import 'dart:io';

import 'package:yaml/yaml.dart';

import 'wrap_lanes.dart';

/// `_catalog.g.dart` for every lane, in yaml order.
List<String> laneCatalogPaths(List<WrapLane> lanes) => [
  for (final lane in lanes) '${lane.outputPackage}/lib/src/_catalog.g.dart',
];

/// The four leading fields of one `CatalogEntry(` in `_catalog.g.dart`.
///
/// The match starts at the constructor, so a later `tfType:` inside
/// `docComment` is not a second entry. Whitespace covers a wrapped literal.
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

/// Workspace members under `packages/`, in pubspec order. Examples are not
/// packages. The CI test and publish dry-run matrices print this list.
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

/// A lane whose hand-written provider class aliases the generated pin
/// (`const String kAwsProviderVersionConstraint = terradartProviderVersion`).
/// `kProviderVersionConstraint` and `kBetaProviderVersionConstraint` stay
/// hand-written `~> 8.0`, so google and google-beta are absent.
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

/// Packages a doc-snippet sandbox depends on. The sandbox does not compile
/// the codegen or CLI libraries.
List<String> docSnippetPackages(String pubspec) => [
  for (final name in workspacePackageNames(pubspec))
    if (name != 'terradart_codegen' && name != 'terradart_cli') name,
];

/// Packages a migrator gate's temporary pubspec path-overrides: `terradart_core`,
/// every lane package, then `terradart_time`.
List<String> migrateGatePackages(List<WrapLane> lanes) => [
  'terradart_core',
  for (final lane in lanes) lane.outputPackage.split('/').last,
  'terradart_time',
];

/// Default imports for a fence that has none. One umbrella per lane, plus
/// `terradart_core` and `terradart_time`.
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

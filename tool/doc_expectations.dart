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

/// The pub.dev install line of the migrator: README, the package README and
/// the website guide must all carry it.
const migrateInstallPhrase = 'dart pub global activate terradart_migrate';

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
  final kinds = RegExp(r'kind: CatalogKind\.(\w+)')
      .allMatches(text)
      .map((m) => m.group(1))
      .toList();
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
    final text =
        File('packages/$package/lib/src/_catalog.g.dart').readAsStringSync();
    final kinds = RegExp(r'kind: CatalogKind\.(\w+)')
        .allMatches(text)
        .map((m) => m.group(1))
        .toList();
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

const exactPinLanes = [
  ExactPinLane(
    'terradart_aws',
    'packages/terradart_codegen/test/fixtures/wrap/source_aws',
    'kAwsProviderVersionConstraint',
  ),
  ExactPinLane(
    'terradart_cloudflare',
    'packages/terradart_codegen/test/fixtures/wrap/source_cloudflare',
    'kCloudflareProviderVersionConstraint',
  ),
];

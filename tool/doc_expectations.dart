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

/// Distinct per-service barrels (excludes the synthetic `data` barrel).
int get serviceBarrelCount => _counts.serviceBarrels;

String get curatedCatalogPhrase => '$curatedFactoryCount curated';
String get catalogEntriesPhrase => '$catalogEntryCount catalog';

/// MCP / agent docs (terradart-mcp catalog intros).
String get agentCatalogEntriesPhrase => '$catalogEntryCount entries';
String get agentResourceFactoriesPhrase =>
    '$curatedFactoryCount curated resource factories';
String get serviceBarrelCountPhrase => '$serviceBarrelCount service barrels';
String get listBarrelsOutputCountPhrase => '${_counts.allBarrels} in total';

class _CatalogCounts {
  const _CatalogCounts({
    required this.total,
    required this.resources,
    required this.dataSources,
    required this.serviceBarrels,
    required this.allBarrels,
  });

  final int total;
  final int resources;
  final int dataSources;
  final int serviceBarrels;
  final int allBarrels;
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
  final barrels = RegExp(r"barrel: '([^']+)'")
      .allMatches(text)
      .map((m) => m.group(1)!)
      .toSet();
  return _CatalogCounts(
    total: kinds.length,
    resources: kinds.where((k) => k == 'resource').length,
    dataSources: kinds.where((k) => k == 'dataSource').length,
    serviceBarrels: barrels.where((b) => b != 'data').length,
    allBarrels: barrels.length,
  );
}

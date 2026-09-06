import 'dart:convert';
import 'package:terradart_google/catalog.dart' show CatalogKind;
import 'coverage_report.dart';

String _kind(CatalogKind k) =>
    k == CatalogKind.dataSource ? 'data' : 'resource';

/// Human-readable report.
String renderText(CoverageReport r) {
  final b = StringBuffer();
  final s = r.summary;
  b.writeln('TerraDart coverage');
  b.writeln('==================');
  b.writeln(
    'Coverage: ${s.coverageByTypePct}% of types '
    '(${s.supportedTypes}/${s.distinctTypes}), '
    '${s.coverageByOccurrencePct}% of resources '
    '(${s.supportedOccurrences}/${s.totalOccurrences})',
  );
  b.writeln();

  b.writeln('Supported (${r.supported.length}):');
  for (final e in r.supported) {
    b.writeln(
      '  ${e.type} [${_kind(e.kind)}] x${e.count} '
      '-> ${e.className} (${e.package}/${e.barrel})',
    );
  }
  b.writeln();

  b.writeln('Not in catalog (${r.notInCatalog.length}):');
  for (final e in r.notInCatalog) {
    b.writeln('  ${e.type} [${_kind(e.kind)}] x${e.count} (${e.product})');
  }
  b.writeln();

  b.writeln('By directory:');
  for (final entry in r.perModule.entries) {
    b.writeln(
      '  ${entry.key}: ${entry.value.supported} supported, '
      '${entry.value.notInCatalog} not-in-catalog',
    );
  }

  if (r.unexpanded.isNotEmpty) {
    b.writeln();
    b.writeln('Counted once (${r.unexpanded.length}):');
    for (final u in r.unexpanded) {
      b.writeln('  $u');
    }
  }

  if (r.unparseable.isNotEmpty) {
    b.writeln();
    b.writeln('Not analyzed (${r.unparseable.length}):');
    for (final u in r.unparseable) {
      b.writeln('  $u');
    }
  }
  return b.toString();
}

/// Returns the coverage report as a plain [Map] suitable for JSON encoding or
/// MCP structuredContent. This is the canonical map structure shared by
/// [renderJson] and `check_coverage` in terradart_agent.
Map<String, Object?> reportToJsonMap(CoverageReport r) => {
  'summary': {
    'distinctTypes': r.summary.distinctTypes,
    'supportedTypes': r.summary.supportedTypes,
    'totalOccurrences': r.summary.totalOccurrences,
    'supportedOccurrences': r.summary.supportedOccurrences,
    'coverageByTypePct': r.summary.coverageByTypePct,
    'coverageByOccurrencePct': r.summary.coverageByOccurrencePct,
  },
  'supported': [
    for (final e in r.supported)
      {
        'type': e.type,
        'kind': _kind(e.kind),
        'count': e.count,
        'className': e.className,
        'barrel': e.barrel,
        'package': e.package,
      },
  ],
  'notInCatalog': [
    for (final e in r.notInCatalog)
      {
        'type': e.type,
        'kind': _kind(e.kind),
        'count': e.count,
        'product': e.product,
      },
  ],
  'perModule': {
    for (final entry in r.perModule.entries)
      entry.key: {
        'supported': entry.value.supported,
        'notInCatalog': entry.value.notInCatalog,
      },
  },
  'unparseable': r.unparseable,
  'unexpanded': r.unexpanded,
};

/// Machine-readable report. Encodes [reportToJsonMap] as indented JSON.
String renderJson(CoverageReport r) =>
    const JsonEncoder.withIndent('  ').convert(reportToJsonMap(r));

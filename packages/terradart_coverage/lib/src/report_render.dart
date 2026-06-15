import 'dart:convert';
import 'package:terradart_google/catalog.dart' show CatalogKind;
import 'coverage_report.dart';

String _kind(CatalogKind k) => k == CatalogKind.dataSource ? 'data' : 'resource';

/// Human-readable report.
String renderText(CoverageReport r) {
  final b = StringBuffer();
  final s = r.summary;
  b.writeln('TerraDart coverage');
  b.writeln('==================');
  b.writeln('Coverage: ${s.coverageByTypePct}% of types '
      '(${s.supportedTypes}/${s.distinctTypes}), '
      '${s.coverageByOccurrencePct}% of resources '
      '(${s.supportedOccurrences}/${s.totalOccurrences})');
  b.writeln();

  b.writeln('Supported (${r.supported.length}):');
  for (final e in r.supported) {
    b.writeln('  ${e.type} [${_kind(e.kind)}] x${e.count} '
        '-> ${e.className} (${e.barrel})');
  }
  b.writeln();

  b.writeln('Not in catalog (${r.notInCatalog.length}):');
  for (final e in r.notInCatalog) {
    b.writeln('  ${e.type} [${_kind(e.kind)}] x${e.count} (${e.product})');
  }
  b.writeln();

  b.writeln('By module:');
  for (final entry in r.perModule.entries) {
    b.writeln('  ${entry.key}: ${entry.value.supported} supported, '
        '${entry.value.notInCatalog} not-in-catalog');
  }

  if (r.unparseable.isNotEmpty) {
    b.writeln();
    b.writeln('Unparseable (${r.unparseable.length}):');
    for (final u in r.unparseable) {
      b.writeln('  $u');
    }
  }
  return b.toString();
}

/// Machine-readable report (also reused as MCP structuredContent later).
String renderJson(CoverageReport r) {
  final map = {
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
        }
    ],
    'notInCatalog': [
      for (final e in r.notInCatalog)
        {
          'type': e.type,
          'kind': _kind(e.kind),
          'count': e.count,
          'product': e.product,
        }
    ],
    'perModule': {
      for (final entry in r.perModule.entries)
        entry.key: {
          'supported': entry.value.supported,
          'notInCatalog': entry.value.notInCatalog,
        }
    },
    'unparseable': r.unparseable,
  };
  return const JsonEncoder.withIndent('  ').convert(map);
}

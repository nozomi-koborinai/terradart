import 'dart:convert';

import 'package:terradart_coverage/terradart_coverage.dart';
import 'package:terradart_google/catalog.dart';

/// Runs coverage analysis on a `terraform show -json` string and returns a
/// JSON-object result (MCP structuredContent). On bad input, returns an
/// `{'error': ...}` object instead of throwing, so the MCP call still succeeds
/// with an actionable message.
Map<String, Object?> checkCoverage(String tfJson) {
  final Map<String, dynamic> decoded;
  try {
    decoded = jsonDecode(tfJson) as Map<String, dynamic>;
  } on FormatException catch (e) {
    return {'error': 'input is not valid JSON: ${e.message}'};
  }
  final ParseOutcome parsed;
  try {
    parsed = parseShowJson(decoded);
  } on FormatException catch (e) {
    return {'error': e.message};
  }
  final report = buildCoverageReport(parsed, CatalogIndex(terradartCatalog));
  return reportToJsonMap(report);
}

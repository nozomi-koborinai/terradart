import 'dart:convert';
import 'package:terradart_coverage/terradart_coverage.dart';
import 'package:terradart_google/catalog.dart';
import 'package:test/test.dart';

CoverageReport _sample() => buildCoverageReport(
  const ParseOutcome(
    references: [
      TfReference(
        type: 'google_storage_bucket',
        kind: CatalogKind.resource,
        modulePath: 'root',
      ),
    ],
    unparseable: [],
  ),
  CatalogIndex(terradartCatalog),
);

void main() {
  test('text render contains a coverage summary line', () {
    final text = renderText(_sample());
    expect(text, contains('Coverage'));
    expect(text, contains('google_storage_bucket'));
  });

  test('json render is valid and carries expected keys', () {
    final jsonStr = renderJson(_sample());
    final decoded = jsonDecode(jsonStr) as Map<String, dynamic>;
    expect(
      decoded.keys,
      containsAll([
        'summary',
        'supported',
        'notInCatalog',
        'perModule',
        'unparseable',
      ]),
    );
    expect((decoded['summary'] as Map)['distinctTypes'], 1);
  });

  test('reportToJsonMap returns same structure as json render', () {
    final sample = _sample();
    final m = reportToJsonMap(sample);
    expect(m['summary'], isA<Map>());
    expect((m['summary'] as Map)['distinctTypes'], 1);
    expect(
      m.keys,
      containsAll([
        'summary',
        'supported',
        'notInCatalog',
        'perModule',
        'unparseable',
      ]),
    );
    // Verify the map round-trips to the same JSON as renderJson.
    final fromMap = const JsonEncoder.withIndent('  ').convert(m);
    expect(fromMap, equals(renderJson(sample)));
  });
}

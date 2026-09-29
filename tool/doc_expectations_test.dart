import 'dart:io';

import 'package:test/test.dart';

import 'doc_expectations.dart';

void main() {
  test('fixGoogleCounts sets every count phrase to the catalog', () {
    const stale =
        '**1 curated resource factories + 2 data sources** '
        '(3 catalog entries), (GA catalog, 3 entries), 7 resource factories';
    expect(
      fixGoogleCounts(stale),
      '**$curatedFactoryCount curated resource factories + '
      '$dataSourceCatalogPhrase** ($catalogEntryCount catalog entries), '
      '(GA catalog, $catalogEntryCount entries), 7 resource factories',
    );
  });

  test('the committed count pages are already fixed', () {
    for (final path in googleCountPages) {
      final text = File(path).readAsStringSync();
      expect(fixGoogleCounts(text), text, reason: path);
    }
  });
}

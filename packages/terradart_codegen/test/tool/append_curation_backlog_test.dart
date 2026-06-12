import 'package:test/test.dart';

import '../../../../tool/append_curation_backlog.dart';

void main() {
  group('appendCurationEntries', () {
    test('appends under entries schema and dedupes by resource', () {
      final result = appendCurationEntries(
        existing: const [
          {
            'resource': 'google_foo',
            'detected_at': '2026-01-01',
            'provider_version': '7.0.0',
          },
        ],
        resources: ['google_foo', 'google_bar'],
        detectedAt: '2026-06-12',
        providerVersion: '7.2.0',
      );
      expect(result, hasLength(2));
      expect(result.map((e) => e['resource']).toList(),
          ['google_bar', 'google_foo']);
      expect(result.first['provider_version'], '7.2.0');
    });
  });

  group('formatBacklogYaml', () {
    test('round-trips empty entries', () {
      const header = '# header';
      final yaml = formatBacklogYaml(header: header, entries: const []);
      expect(readBacklogEntries(yaml), isEmpty);
      expect(yaml, contains('entries:\n  []'));
    });

    test('preserves header and writes entries list', () {
      const header = '# tool/curation_backlog.yaml';
      final yaml = formatBacklogYaml(
        header: header,
        entries: const [
          {
            'resource': 'google_new',
            'detected_at': '2026-06-12',
            'provider_version': '7.2.0',
          },
        ],
      );
      expect(yaml.startsWith('# tool/curation_backlog.yaml'), isTrue);
      final entries = readBacklogEntries(yaml);
      expect(entries, hasLength(1));
      expect(entries.single['resource'], 'google_new');
    });
  });
}

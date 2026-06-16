import 'dart:convert';
import 'package:terradart_agent/src/tools/check_coverage.dart';
import 'package:test/test.dart';

void main() {
  test('reports coverage for a state document', () {
    final tfJson = jsonEncode({
      'values': {
        'root_module': {
          'resources': [
            {'mode': 'managed', 'type': 'google_storage_bucket', 'name': 'a'},
            {'mode': 'managed', 'type': 'google_notreal_thing', 'name': 'b'},
          ],
        },
      },
    });
    final out = checkCoverage(tfJson);
    expect(out['summary'], isA<Map<String, Object?>>());
    expect((out['summary'] as Map<String, Object?>)['distinctTypes'], 2);
  });

  test('returns an error object on invalid JSON (does not throw)', () {
    final out = checkCoverage('not json');
    expect(out['error'], isNotNull);
  });

  test('returns an error object on non-terraform-show JSON', () {
    final out = checkCoverage('{"format_version":"1.0"}');
    expect(out['error'], isNotNull);
  });
}

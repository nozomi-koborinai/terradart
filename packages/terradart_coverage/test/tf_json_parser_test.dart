import 'package:terradart_coverage/terradart_coverage.dart';
import 'package:terradart_google/catalog.dart' show CatalogKind;
import 'package:test/test.dart';

void main() {
  group('parseShowJson', () {
    test('extracts managed + data refs from a state document', () {
      final json = {
        'values': {
          'root_module': {
            'resources': [
              {'mode': 'managed', 'type': 'google_storage_bucket', 'name': 'a'},
              {'mode': 'data', 'type': 'google_project', 'name': 'p'},
            ],
          },
        },
      };
      final out = parseShowJson(json);
      expect(out.references, hasLength(2));
      expect(out.references[0].type, 'google_storage_bucket');
      expect(out.references[0].kind, CatalogKind.resource);
      expect(out.references[0].modulePath, 'root');
      expect(out.references[1].kind, CatalogKind.dataSource);
      expect(out.unparseable, isEmpty);
    });

    test('recurses into child modules and records module path', () {
      final json = {
        'values': {
          'root_module': {
            'resources': <Map<String, dynamic>>[],
            'child_modules': [
              {
                'address': 'module.network',
                'resources': [
                  {
                    'mode': 'managed',
                    'type': 'google_compute_network',
                    'name': 'n',
                  },
                ],
              },
            ],
          },
        },
      };
      final out = parseShowJson(json);
      expect(out.references.single.type, 'google_compute_network');
      expect(out.references.single.modulePath, 'module.network');
    });

    test('reads plan shape (planned_values) too', () {
      final json = {
        'planned_values': {
          'root_module': {
            'resources': [
              {'mode': 'managed', 'type': 'google_pubsub_topic', 'name': 't'},
            ],
          },
        },
      };
      final out = parseShowJson(json);
      expect(out.references.single.type, 'google_pubsub_topic');
    });

    test('records entries missing a type as unparseable, not dropped', () {
      final json = {
        'values': {
          'root_module': {
            'resources': [
              {'mode': 'managed', 'name': 'broken'},
            ],
          },
        },
      };
      final out = parseShowJson(json);
      expect(out.references, isEmpty);
      expect(out.unparseable, hasLength(1));
    });

    test(
      'throws FormatException when neither values nor planned_values exist',
      () {
        expect(
          () => parseShowJson({'format_version': '1.0'}),
          throwsA(isA<FormatException>()),
        );
      },
    );
  });
}

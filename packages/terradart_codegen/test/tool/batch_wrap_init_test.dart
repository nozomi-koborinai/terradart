import 'dart:convert';
import 'dart:io';

import 'package:test/test.dart';

import '../../../../tool/batch_wrap_init.dart';

void main() {
  group('parseArgs', () {
    test('parses --resources', () {
      final args = parseArgs([
        '--resources=google_container_cluster,google_container_node_pool',
      ]);
      expect(args, isNotNull);
      expect(args!.resources, [
        'google_container_cluster',
        'google_container_node_pool',
      ]);
      expect(args.prefix, isNull);
      expect(args.force, isFalse);
    });

    test('parses --prefix and flags', () {
      final args = parseArgs([
        '--prefix=google_container_',
        '--force',
        '--dry-run',
      ]);
      expect(args, isNotNull);
      expect(args!.prefix, 'google_container_');
      expect(args.resources, isNull);
      expect(args.force, isTrue);
      expect(args.dryRun, isTrue);
    });

    test('rejects both --resources and --prefix', () {
      expect(
        parseArgs([
          '--resources=google_x',
          '--prefix=google_',
        ]),
        isNull,
      );
    });

    test('rejects neither selector', () {
      expect(parseArgs([]), isNull);
    });
  });

  group('resolveResources', () {
    late Directory tmp;

    setUp(() {
      tmp = Directory.systemTemp.createTempSync('batch_wrap_init_test_');
    });

    tearDown(() {
      tmp.deleteSync(recursive: true);
    });

    test('explicit list is returned sorted', () {
      final schema = File('${tmp.path}/schema.json')
        ..writeAsStringSync(jsonEncode(<String, dynamic>{
          'provider_schemas': <String, dynamic>{
            'registry.terraform.io/hashicorp/google': <String, dynamic>{
              'resource_schemas': <String, dynamic>{},
            },
          },
        }));
      final output = Directory('${tmp.path}/out')..createSync();

      expect(
        resolveResources(
          explicit: ['google_b', 'google_a'],
          prefix: null,
          schemaFile: schema,
          outputDir: output.path,
        ),
        ['google_a', 'google_b'],
      );
    });

    test('prefix filter skips existing override yaml', () {
      final schema = File('${tmp.path}/schema.json')
        ..writeAsStringSync(jsonEncode(<String, dynamic>{
          'provider_schemas': <String, dynamic>{
            'registry.terraform.io/hashicorp/google': <String, dynamic>{
              'resource_schemas': <String, dynamic>{
                'google_container_cluster': <String, dynamic>{},
                'google_container_node_pool': <String, dynamic>{},
                'google_container_registry': <String, dynamic>{},
              },
            },
          },
        }));
      final output = Directory('${tmp.path}/out')..createSync();
      File('${output.path}/google_container_cluster.yaml')
          .writeAsStringSync('x');

      expect(
        resolveResources(
          explicit: null,
          prefix: 'google_container_',
          schemaFile: schema,
          outputDir: output.path,
        ),
        ['google_container_node_pool', 'google_container_registry'],
      );
    });
  });
}

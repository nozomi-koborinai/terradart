import 'dart:io';

import 'package:terradart_codegen/src/codegen/barrels/barrel_emitter.dart';
import 'package:terradart_codegen/src/codegen/barrels/barrel_manifest.dart';
import 'package:terradart_codegen/src/codegen/catalog_metadata_emitter.dart';
import 'package:test/test.dart';

CatalogEntryData _entry({
  required String tfType,
  required String className,
  required String barrel,
  List<String> nestedTypes = const [],
  String kind = 'resource',
}) => CatalogEntryData(
  tfType: tfType,
  className: className,
  barrel: barrel,
  kind: kind,
  summary: 's',
  docComment: 'd',
  constructorParams: const ['localName'],
  sensitiveFields: const [],
  nestedTypes: nestedTypes,
);

void main() {
  group('loadBarrelManifest', () {
    test('loads the committed manifest (sql file override)', () {
      final manifest = loadBarrelManifest(
        'lib/src/codegen/barrels/barrels.yaml',
      );
      // Length is ratcheted by wrap_command_test / docs consistency when a
      // Wave adds a barrel — keep this test focused on structural shape.
      expect(manifest.barrels, isNotEmpty);
      expect(manifest.barrels['sql']!.file, 'cloud_sql');
      expect(manifest.barrels['pubsub']!.doc, startsWith('///'));
      expect(
        manifest.barrels['firestore']!.extraExports.single,
        contains('firestore_fields.dart'),
      );
      expect(manifest.umbrellaDoc, contains('umbrella'));
      expect(manifest.umbrellaExtraExports.single, contains("'provider.dart'"));
    });

    test('doc is required per barrel', () {
      final tmp = Directory.systemTemp.createTempSync('barrels_yaml_');
      addTearDown(() => tmp.deleteSync(recursive: true));
      final path = '${tmp.path}/barrels.yaml';
      File(
        path,
      ).writeAsStringSync('umbrellaDoc: |-\n  /// u\nbarrels:\n  pubsub: {}\n');
      expect(
        () => loadBarrelManifest(path),
        throwsA(
          isA<FormatException>().having(
            (e) => e.message,
            'message',
            contains('doc is required'),
          ),
        ),
      );
    });

    test('unknown keys are rejected', () {
      final tmp = Directory.systemTemp.createTempSync('barrels_yaml_');
      addTearDown(() => tmp.deleteSync(recursive: true));
      final path = '${tmp.path}/barrels.yaml';
      File(path).writeAsStringSync(
        'umbrellaDoc: |-\n  /// u\nbarrels:\n  pubsub:\n    doc: |-\n'
        '      /// p\n    bogus: 1\n',
      );
      expect(
        () => loadBarrelManifest(path),
        throwsA(
          isA<FormatException>().having(
            (e) => e.message,
            'message',
            contains('unknown key: bogus'),
          ),
        ),
      );
    });
  });

  group('buildBarrelFiles', () {
    BarrelManifest manifest({Map<String, BarrelSpec>? barrels}) =>
        BarrelManifest(
          umbrellaDoc: '/// Umbrella.',
          umbrellaExtraExports: const ["export 'provider.dart';"],
          barrels:
              barrels ??
              {
                'pubsub': const BarrelSpec(doc: '/// Pub/Sub.'),
                'sql': const BarrelSpec(
                  doc: '/// Cloud SQL.',
                  file: 'cloud_sql',
                ),
              },
        );

    final entries = [
      _entry(
        tfType: 'google_pubsub_topic',
        className: 'GooglePubsubTopic',
        barrel: 'pubsub',
        nestedTypes: ['ZTopicHelper', 'ATopicEnum'],
      ),
      _entry(
        tfType: 'google_sql_database',
        className: 'GoogleSqlDatabase',
        barrel: 'sql',
      ),
    ];

    test('emits sorted show sets, file overrides, and the umbrella', () {
      final files = buildBarrelFiles(entries: entries, manifest: manifest());
      expect(files.keys.toSet(), {'pubsub', 'cloud_sql', 'terradart_google'});
      // Show names sort alphabetically (className merged with nestedTypes).
      expect(
        files['pubsub'],
        contains(
          "export 'src/pubsub/google_pubsub_topic.dart' "
          'show ATopicEnum, GooglePubsubTopic, ZTopicHelper;',
        ),
      );
      // The sql barrel exports from src/sql/ under its cloud_sql file stem.
      expect(files['cloud_sql'], contains("export 'src/sql/"));
      // Umbrella sorts barrel exports and verbatim extras together.
      final umbrella = files['terradart_google']!;
      final cloudSqlAt = umbrella.indexOf("export 'cloud_sql.dart';");
      final providerAt = umbrella.indexOf("export 'provider.dart';");
      final pubsubAt = umbrella.indexOf("export 'pubsub.dart';");
      expect(cloudSqlAt, greaterThan(0));
      expect(providerAt, greaterThan(cloudSqlAt));
      expect(pubsubAt, greaterThan(providerAt));
    });

    test('extraExports append verbatim after the generated exports', () {
      final files = buildBarrelFiles(
        entries: entries,
        manifest: manifest(
          barrels: {
            'pubsub': const BarrelSpec(
              doc: '/// Pub/Sub.',
              extraExports: ["export 'src/pubsub/hand.dart' show Hand;"],
            ),
            'sql': const BarrelSpec(doc: '/// Cloud SQL.', file: 'cloud_sql'),
          },
        ),
      );
      expect(
        files['pubsub'],
        contains("export 'src/pubsub/hand.dart' show Hand;"),
      );
    });

    test('fails closed on a catalog barrel missing from the manifest', () {
      expect(
        () => buildBarrelFiles(
          entries: entries,
          manifest: manifest(
            barrels: {'pubsub': const BarrelSpec(doc: '/// Pub/Sub.')},
          ),
        ),
        throwsA(
          isA<StateError>().having(
            (e) => e.message,
            'message',
            contains('missing catalog barrel(s): sql'),
          ),
        ),
      );
    });

    test('fails closed on a stale manifest barrel', () {
      final specs = {
        'pubsub': const BarrelSpec(doc: '/// Pub/Sub.'),
        'sql': const BarrelSpec(doc: '/// Cloud SQL.', file: 'cloud_sql'),
        'gone': const BarrelSpec(doc: '/// Gone.'),
      };
      expect(
        () => buildBarrelFiles(
          entries: entries,
          manifest: manifest(barrels: specs),
        ),
        throwsA(
          isA<StateError>().having(
            (e) => e.message,
            'message',
            contains('stale barrel(s) with no catalog entries: gone'),
          ),
        ),
      );
    });

    test('every barrel re-exports terradart_core', () {
      final files = buildBarrelFiles(entries: entries, manifest: manifest());
      for (final barrel in ['pubsub', 'cloud_sql']) {
        expect(files[barrel], contains(coreExport), reason: barrel);
      }
    });

    group('data sources', () {
      final withData = [
        ...entries,
        _entry(
          tfType: 'google_pubsub_topic',
          className: 'DataGooglePubsubTopic',
          barrel: 'data',
          kind: 'dataSource',
        ),
        _entry(
          tfType: 'google_sql_tiers',
          className: 'DataGoogleSqlTiers',
          barrel: 'data',
          kind: 'dataSource',
        ),
        _entry(
          tfType: 'google_client_config',
          className: 'DataGoogleClientConfig',
          barrel: 'data',
          kind: 'dataSource',
        ),
      ];
      BarrelManifest withDataBarrel([
        Map<String, String> authored = const {},
      ]) => BarrelManifest(
        umbrellaDoc: '/// Umbrella.',
        umbrellaExtraExports: const [],
        barrels: {
          'pubsub': const BarrelSpec(doc: '/// Pub/Sub.'),
          'sql': const BarrelSpec(doc: '/// Cloud SQL.', file: 'cloud_sql'),
          'data': const BarrelSpec(doc: '/// Data.'),
        },
        dataSourceBarrels: authored,
      );

      test('are exported from data and from their service barrel', () {
        final files = buildBarrelFiles(
          entries: withData,
          manifest: withDataBarrel(),
        );
        const topic =
            "export 'src/data/google_pubsub_topic.dart' "
            'show DataGooglePubsubTopic;';
        expect(files['data'], contains(topic));
        expect(files['pubsub'], contains(topic));
        expect(
          files['cloud_sql'],
          contains("export 'src/data/google_sql_tiers.dart'"),
        );
        expect(files['data'], contains('google_client_config.dart'));
        for (final barrel in ['pubsub', 'cloud_sql']) {
          expect(
            files[barrel],
            isNot(contains('google_client_config')),
            reason: barrel,
          );
        }
      });

      test('an authored entry places a type no name matches', () {
        final files = buildBarrelFiles(
          entries: withData,
          manifest: withDataBarrel({'google_client_config': 'pubsub'}),
        );
        expect(
          files['pubsub'],
          contains("export 'src/data/google_client_config.dart'"),
        );
      });

      for (final (authored, message) in [
        ({'google_nope': 'pubsub'}, 'not a data source'),
        ({'google_client_config': 'gone'}, 'not a catalog barrel'),
        ({'google_sql_tiers': 'sql'}, 'is the derived barrel'),
        ({'google_client_config': 'data'}, 'is the derived barrel'),
      ]) {
        test('rejects $authored', () {
          expect(
            () => buildBarrelFiles(
              entries: withData,
              manifest: withDataBarrel(authored),
            ),
            throwsA(
              isA<StateError>().having(
                (e) => e.message,
                'message',
                contains(message),
              ),
            ),
          );
        });
      }
    });
  });

  group('dataSourceBarrelFor', () {
    const resources = {
      'google_compute_network': 'compute',
      'google_compute_instance': 'compute',
      'google_service_account': 'iam',
      'google_dns_managed_zone': 'dns',
      'google_dns_policy': 'dns',
      'google_folder': 'folder',
      'google_storage_bucket': 'storage',
      'google_storage_insights_report_config': 'storage_insights',
    };
    for (final (type, barrel) in [
      ('google_service_account', 'iam'),
      ('google_compute_zones', 'compute'),
      ('google_storage_insights_dataset', 'storage_insights'),
      ('google_dns_managed_zones', 'dns'),
      ('google_folders', null),
      ('google_client_config', null),
    ]) {
      test('$type -> $barrel', () {
        expect(dataSourceBarrelFor(type, resources), barrel);
      });
    }
  });
}

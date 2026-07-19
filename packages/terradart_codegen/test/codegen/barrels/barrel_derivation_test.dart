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
}) =>
    CatalogEntryData(
      tfType: tfType,
      className: className,
      barrel: barrel,
      kind: 'resource',
      summary: 's',
      docComment: 'd',
      constructorParams: const ['localName'],
      sensitiveFields: const [],
      nestedTypes: nestedTypes,
    );

void main() {
  group('loadBarrelManifest', () {
    test('loads the committed manifest (67 barrels, sql file override)', () {
      final manifest = loadBarrelManifest(
        'lib/src/codegen/barrels/barrels.yaml',
      );
      expect(manifest.barrels, hasLength(67));
      expect(manifest.barrels['sql']!.file, 'cloud_sql');
      expect(manifest.barrels['pubsub']!.doc, startsWith('///'));
      expect(
        manifest.barrels['firestore']!.extraExports.single,
        contains('firestore_fields.dart'),
      );
      expect(manifest.umbrellaDoc, contains('umbrella'));
      expect(
        manifest.umbrellaExtraExports.single,
        contains("'provider.dart'"),
      );
    });

    test('doc is required per barrel', () {
      final tmp = Directory.systemTemp.createTempSync('barrels_yaml_');
      addTearDown(() => tmp.deleteSync(recursive: true));
      final path = '${tmp.path}/barrels.yaml';
      File(path).writeAsStringSync(
        'umbrellaDoc: |-\n  /// u\nbarrels:\n  pubsub: {}\n',
      );
      expect(
        () => loadBarrelManifest(path),
        throwsA(isA<FormatException>().having(
          (e) => e.message,
          'message',
          contains('doc is required'),
        )),
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
        throwsA(isA<FormatException>().having(
          (e) => e.message,
          'message',
          contains('unknown key: bogus'),
        )),
      );
    });
  });

  group('buildBarrelFiles', () {
    BarrelManifest manifest({Map<String, BarrelSpec>? barrels}) =>
        BarrelManifest(
          umbrellaDoc: '/// Umbrella.',
          umbrellaExtraExports: const ["export 'provider.dart';"],
          barrels: barrels ??
              {
                'pubsub': const BarrelSpec(doc: '/// Pub/Sub.'),
                'sql':
                    const BarrelSpec(doc: '/// Cloud SQL.', file: 'cloud_sql'),
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
      expect(
        files.keys.toSet(),
        {'pubsub', 'cloud_sql', 'terradart_google'},
      );
      // Show names sort alphabetically (className merged with nestedTypes).
      expect(
        files['pubsub'],
        contains("export 'src/pubsub/google_pubsub_topic.dart' "
            'show ATopicEnum, GooglePubsubTopic, ZTopicHelper;'),
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
        manifest: manifest(barrels: {
          'pubsub': const BarrelSpec(
            doc: '/// Pub/Sub.',
            extraExports: ["export 'src/pubsub/hand.dart' show Hand;"],
          ),
          'sql': const BarrelSpec(doc: '/// Cloud SQL.', file: 'cloud_sql'),
        }),
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
          manifest: manifest(barrels: {
            'pubsub': const BarrelSpec(doc: '/// Pub/Sub.'),
          }),
        ),
        throwsA(isA<StateError>().having(
          (e) => e.message,
          'message',
          contains('missing catalog barrel(s): sql'),
        )),
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
            entries: entries, manifest: manifest(barrels: specs)),
        throwsA(isA<StateError>().having(
          (e) => e.message,
          'message',
          contains('stale barrel(s) with no catalog entries: gone'),
        )),
      );
    });
  });
}

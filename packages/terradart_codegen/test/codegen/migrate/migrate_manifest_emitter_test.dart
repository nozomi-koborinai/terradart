import 'package:dart_style/dart_style.dart';
import 'package:terradart_codegen/src/codegen/migrate/migrate_manifest_data.dart';
import 'package:terradart_codegen/src/codegen/migrate/migrate_manifest_emitter.dart';
import 'package:test/test.dart';

MigrateEntryBuild _build(
  String tfType, {
  String kind = 'resource',
  List<MigrateHelperData> helpers = const [],
  List<MigrateEnumData> enums = const [],
}) =>
    MigrateEntryBuild(
      entry: MigrateEntryData(
        tfType: tfType,
        className: 'X',
        barrel: 'pubsub',
        kind: kind,
        slots: const [
          MigrateSlotData(
            tfName: 'name',
            dartName: 'name',
            kind: MigrateSlotKind.scalar,
            required: true,
            dartType: 'String',
          ),
          MigrateSlotData(
            tfName: '',
            dartName: 'target',
            kind: MigrateSlotKind.sealed,
            required: true,
            merged: true,
            variants: {'pubsub_target': 'PubsubTarget'},
          ),
        ],
        getters: const [
          MigrateGetterData(tfName: 'id', dartName: 'id', dartType: 'String'),
        ],
      ),
      helpers: helpers,
      enums: enums,
    );

const _helper = MigrateHelperData(
  className: 'PubsubTarget',
  slots: [
    MigrateSlotData(
      tfName: 'topic_name',
      dartName: 'topicName',
      kind: MigrateSlotKind.scalar,
      required: true,
      dartType: 'String',
    ),
  ],
);

void main() {
  group('MigrateManifestEmitter', () {
    test('emits a formatted, deterministic manifest', () {
      final src = MigrateManifestEmitter().emit(
        [
          _build('google_b', kind: 'dataSource'),
          _build('google_b', helpers: const [_helper]),
          _build(
            'google_a',
            enums: const [
              MigrateEnumData(name: 'Color', members: {'RED': 'red'}),
            ],
          ),
        ],
        package: 'terradart_google_beta',
      );
      final formatted = DartFormatter(
        languageVersion: DartFormatter.latestLanguageVersion,
      ).format(src);
      expect(formatted, startsWith('// GENERATED FILE - DO NOT EDIT\n'));
      expect(formatted, contains("import '../migrate_manifest.dart';"));
      expect(
        formatted,
        contains('const MigrateManifest googleBetaMigrateManifest'),
      );
      expect(formatted, contains("package: 'terradart_google_beta',"));
      // Sorted by tfType, resource before its dataSource twin.
      final a = formatted.indexOf("tfType: 'google_a'");
      final bRes = formatted.indexOf('kind: CatalogKind.resource', a + 1);
      final bData = formatted.indexOf('kind: CatalogKind.dataSource');
      expect(a, greaterThan(0));
      expect(bRes, lessThan(bData));
      expect(formatted, contains("'PubsubTarget': MigrateHelper("));
      expect(formatted, contains("'Color': MigrateEnum("));
      expect(formatted, contains("members: <String, String>{'RED': 'red'}"));
      expect(formatted, contains('merged: true'));
      expect(
        formatted,
        contains("variants: <String, String>{'pubsub_target': 'PubsubTarget'}"),
      );
      // Optional fields are omitted when default.
      expect(formatted, isNot(contains('positional: true')));
      expect(formatted, isNot(contains('wrapped: false')));
    });

    test('escapes quotes, dollars and backslashes in strings', () {
      final src = MigrateManifestEmitter().emit([
        const MigrateEntryBuild(
          entry: MigrateEntryData(
            tfType: 'google_x',
            className: 'X',
            barrel: 'x',
            kind: 'resource',
            slots: [
              MigrateSlotData(
                tfName: 'x',
                dartName: 'x',
                kind: MigrateSlotKind.manual,
                required: false,
                reason: r"it's $dynamic \ and",
              ),
            ],
            getters: [],
          ),
          helpers: [],
          enums: [],
        ),
      ], package: 'terradart_google');
      expect(src, contains(r"reason: 'it\'s \$dynamic \\ and'"));
    });

    test('rejects one helper name with two different shapes', () {
      const other = MigrateHelperData(className: 'PubsubTarget', slots: []);
      expect(
        () => MigrateManifestEmitter().emit([
          _build('google_a', helpers: const [_helper]),
          _build('google_b', helpers: const [other]),
        ], package: 'terradart_google'),
        throwsStateError,
      );
      // Identical redeclarations (the same file emitted twice) are fine.
      expect(
        MigrateManifestEmitter().emit([
          _build('google_a', helpers: const [_helper]),
          _build('google_b', helpers: const [_helper]),
        ], package: 'terradart_google'),
        contains("'PubsubTarget': MigrateHelper("),
      );
    });
  });
}

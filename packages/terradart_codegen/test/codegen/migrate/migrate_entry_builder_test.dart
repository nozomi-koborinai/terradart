import 'dart:convert';
import 'dart:io';

import 'package:dart_style/dart_style.dart';
import 'package:path/path.dart' as p;
import 'package:terradart_codegen/src/cli/wrap_cli_common.dart';
import 'package:terradart_codegen/src/codegen/data_source_wrapper_emitter.dart';
import 'package:terradart_codegen/src/codegen/generated_file_header.dart';
import 'package:terradart_codegen/src/codegen/migrate/migrate_entry_builder.dart';
import 'package:terradart_codegen/src/codegen/migrate/migrate_manifest_data.dart';
import 'package:terradart_codegen/src/codegen/wrapper_emitter.dart';
import 'package:terradart_codegen/src/codegen/wrapper_overrides/_registry.dart';
import 'package:terradart_codegen/src/codegen/wrapper_overrides/wrapper_override.dart';
import 'package:terradart_codegen/src/ir/attribute.dart';
import 'package:terradart_codegen/src/ir/constraints.dart';
import 'package:terradart_codegen/src/ir/nested_block.dart';
import 'package:terradart_codegen/src/ir/resource_def.dart';
import 'package:terradart_codegen/src/ir/type_def.dart';
import 'package:terradart_codegen/src/parser/ir_merger.dart';
import 'package:terradart_codegen/src/parser/mm_yaml_parser.dart';
import 'package:terradart_codegen/src/parser/schema_parser.dart';
import 'package:test/test.dart';

const _source = 'test/fixtures/wrap/source';
const _yamlRoot = 'lib/src/codegen/wrapper_overrides/yaml';

/// Emits one committed google wrapper exactly as `terradart wrap` does and
/// builds its manifest entry, so the test exercises the real registry.
final class _Fixture {
  _Fixture(this.schemaSrc);

  final String schemaSrc;
  late final Map<String, dynamic> _root =
      jsonDecode(schemaSrc) as Map<String, dynamic>;
  final _formatter = DartFormatter(
    languageVersion: DartFormatter.latestLanguageVersion,
  );

  Map<String, dynamic> rawBlock(String tfType, {required String schemasKey}) {
    final schemas = (_root['provider_schemas'] as Map).cast<String, dynamic>();
    final body = (schemas.values.single as Map).cast<String, dynamic>();
    final typed = (body[schemasKey] as Map).cast<String, dynamic>();
    return ((typed[tfType] as Map)['block'] as Map).cast<String, dynamic>();
  }

  MigrateEntryBuild build(String tfType, {bool dataSource = false}) {
    final loaded = loadWrapperOverrides(rootDir: _yamlRoot, only: tfType);
    final base = const SchemaJsonParser().parseString(
      schemaSrc,
      providerVersion: readProviderVersion(_source),
    );
    final mmFile = File(p.join(_source, 'mm', '$tfType.yaml'));
    final ir = mmFile.existsSync()
        ? const IrMerger().merge(
            base: base,
            overrides: {
              tfType: const MmYamlParser().parseString(
                mmFile.readAsStringSync(),
              ),
            },
          )
        : base;
    if (dataSource) {
      final override = loaded.dataSources[tfType]!;
      final def = ir.dataSources[tfType]!;
      final raw = <String, Map<String, dynamic>>{
        if (override.deriveNestedTypes)
          tfType: rawBlock(tfType, schemasKey: 'data_source_schemas'),
      };
      final src = generatedFileHeader +
          _formatter.format(
            DataSourceWrapperEmitter(
              overrides: loaded.dataSources,
              rawDataSourceSchemas: raw,
            ).emit(def, providerSource: 'hashicorp/google'),
          );
      return buildMigrateEntry(
        tfType: tfType,
        override: override,
        def: def,
        kind: 'dataSource',
        emittedSource: src,
        rawSchemaBlock: raw[tfType],
      );
    }
    final override = loaded.resources[tfType]!;
    final def = ir.resources[tfType]!;
    final raw = <String, Map<String, dynamic>>{
      if (override.deriveNestedTypes)
        tfType: rawBlock(tfType, schemasKey: 'resource_schemas'),
    };
    final src = generatedFileHeader +
        _formatter.format(
          WrapperEmitter(
            overrides: loaded.resources,
            rawResourceSchemas: raw,
          ).emit(
            def,
            providerSource: 'hashicorp/google',
            extraSensitiveFields: override.extraSensitiveFields,
          ),
        );
    return buildMigrateEntry(
      tfType: tfType,
      override: override,
      def: def,
      kind: 'resource',
      emittedSource: src,
      rawSchemaBlock: raw[tfType],
    );
  }
}

MigrateSlotData _slot(MigrateEntryBuild b, String dartName) =>
    b.entry.slots.singleWhere((s) => s.dartName == dartName);

MigrateHelperData _helper(MigrateEntryBuild b, String name) =>
    b.helpers.singleWhere((h) => h.className == name);

void main() {
  group('buildMigrateEntry (synthetic)', () {
    const emitted = '''
enum Color implements TerraformEnum {
  red('RED'),
  blue('BLUE');

  const Color(this.terraformValue);
  @override
  final String terraformValue;
}

class Config {
  const Config({this.level});
  final TfArg<Color>? level;
  Map<String, Object?> encode() => {
    if (level != null) 'level': level!.toTfJson(),
  };
}

final class GoogleThing extends Resource {
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
''';
    const def = ResourceDef(
      terraformType: 'google_thing',
      root: BlockDef(
        attributes: [
          Attribute(
            name: 'name',
            type: StringType(),
            constraints: Constraints(required: true),
          ),
          Attribute(
            name: 'labels',
            type: MapType(StringType()),
            constraints: Constraints(optional: true),
          ),
        ],
        nestedBlocks: [
          NestedBlockDef(
            name: 'settings',
            nesting: NestingMode.list,
            block: BlockDef(),
            constraints: Constraints(optional: true),
          ),
        ],
      ),
    );

    test('IR attributes, passthrough blocks, custom slots, helpers, enums', () {
      const override = WrapperOverride(
        outputDir: 'thing',
        paramOrder: ['name', 'labels', 'config', 'settings'],
        requiredParams: ['labels'],
        customSlots: {
          'config': CustomSlot(
            paramDeclaration: 'Config? config',
            argMapEntry:
                "if (config != null) 'config': TfArg.literal([config.encode()]),",
          ),
        },
      );
      final b = buildMigrateEntry(
        tfType: 'google_thing',
        override: override,
        def: def,
        kind: 'resource',
        emittedSource: emitted,
      );
      expect(b.entry.className, 'GoogleThing');
      expect(b.entry.barrel, 'thing');
      expect(b.entry.slots.map((s) => s.dartName),
          ['name', 'labels', 'config', 'settings']);

      final name = _slot(b, 'name');
      expect(name.kind, MigrateSlotKind.scalar);
      expect(name.dartType, 'String');
      expect(name.required, isTrue);

      final labels = _slot(b, 'labels');
      expect(labels.dartType, 'Map<String, String>');
      expect(labels.required, isTrue, reason: 'requiredParams override');

      final config = _slot(b, 'config');
      expect(config.kind, MigrateSlotKind.helper);
      expect(config.helper, 'Config');
      expect(config.tfName, 'config');
      expect(config.wrapped, isFalse);

      final settings = _slot(b, 'settings');
      expect(settings.kind, MigrateSlotKind.passthrough);
      expect(settings.dartType, 'List<Map<String, dynamic>>');

      final helper = _helper(b, 'Config');
      expect(helper.reason, isNull);
      expect(helper.slots.single.kind, MigrateSlotKind.enumValue);
      expect(helper.slots.single.dartType, 'Color');
      expect(helper.slots.single.tfName, 'level');

      expect(b.enums.single.name, 'Color');
      expect(b.enums.single.members, {'RED': 'red', 'BLUE': 'blue'});

      expect(b.entry.getters.single.tfName, 'name');
      expect(b.entry.getters.single.dartName, 'nameRef');
    });

    test('a migrate hint pins a custom slot to manual', () {
      const override = WrapperOverride(
        outputDir: 'thing',
        paramOrder: ['name', 'config'],
        customSlots: {
          'config': CustomSlot(
            paramDeclaration: 'Config? config',
            argMapEntry:
                "if (config != null) 'config': TfArg.literal([config.encode()]),",
            migrate: MigrateHint.manual(reason: 'by design'),
          ),
        },
      );
      final b = buildMigrateEntry(
        tfType: 'google_thing',
        override: override,
        def: def,
        kind: 'resource',
        emittedSource: emitted,
      );
      final config = _slot(b, 'config');
      expect(config.kind, MigrateSlotKind.manual);
      expect(config.reason, 'by design');
    });

    test('dartTypeOverrides drive attribute classification', () {
      const override = WrapperOverride(
        outputDir: 'thing',
        paramOrder: ['name'],
        dartTypeOverrides: {'name': 'Color'},
      );
      final b = buildMigrateEntry(
        tfType: 'google_thing',
        override: override,
        def: def,
        kind: 'resource',
        emittedSource: emitted,
      );
      expect(_slot(b, 'name').kind, MigrateSlotKind.enumValue);
    });

    test('deriveNestedTypes without a raw block is a programming error', () {
      const override = WrapperOverride(
        outputDir: 'thing',
        deriveNestedTypes: true,
      );
      expect(
        () => buildMigrateEntry(
          tfType: 'google_thing',
          override: override,
          def: def,
          kind: 'resource',
          emittedSource: emitted,
        ),
        throwsStateError,
      );
    });

    test('buildMigrateEntries resolves helpers across files', () {
      const other = ResourceDef(
        terraformType: 'google_other',
        root: BlockDef(),
      );
      const otherOverride = WrapperOverride(
        outputDir: 'thing',
        paramOrder: ['config'],
        customSlots: {
          'config': CustomSlot(
            paramDeclaration: 'required Config config',
            argMapEntry: "'config': TfArg.literal([config.encode()]),",
          ),
        },
      );
      final builds = buildMigrateEntries([
        const MigrateEntryInput(
          tfType: 'google_thing',
          override: WrapperOverride(outputDir: 'thing'),
          def: def,
          kind: 'resource',
          emittedSource: emitted,
        ),
        const MigrateEntryInput(
          tfType: 'google_other',
          override: otherOverride,
          def: other,
          kind: 'resource',
          emittedSource: 'final class GoogleOther extends Resource {}',
        ),
      ]);
      expect(builds, hasLength(2));
      expect(_slot(builds[1], 'config').kind, MigrateSlotKind.helper);
      // Helpers are recorded only by the file that declares them.
      expect(builds[0].helpers.map((h) => h.className), ['Config']);
      expect(builds[1].helpers, isEmpty);
    });
  });

  group('buildMigrateEntry (committed google registry)', () {
    late final _Fixture fixture;
    setUpAll(() {
      fixture = _Fixture(
        File(p.join(_source, 'schema.json')).readAsStringSync(),
      );
    });

    test('google_pubsub_subscription: derived helper + enum slots', () {
      final b = fixture.build('google_pubsub_subscription');
      expect(b.entry.className, 'GooglePubsubSubscription');
      expect(b.entry.kind, 'resource');
      expect(_slot(b, 'topic').kind, MigrateSlotKind.scalar);
      final pushConfig = _slot(b, 'pushConfig');
      expect(pushConfig.kind, MigrateSlotKind.helper);
      expect(pushConfig.tfName, 'push_config');
      final helper = _helper(b, pushConfig.helper!);
      expect(helper.reason, isNull);
      expect(helper.slots.map((s) => s.tfName), contains('push_endpoint'));
      expect(b.entry.slots.where((s) => s.kind == MigrateSlotKind.manual),
          isEmpty);
      expect(b.entry.getters.map((g) => g.dartName), contains('nameRef'));
    });

    test('google_cloud_scheduler_job: sealed virtual target slot', () {
      final b = fixture.build('google_cloud_scheduler_job');
      final target = _slot(b, 'target');
      expect(target.kind, MigrateSlotKind.sealed);
      expect(target.merged, isTrue);
      expect(target.tfName, isEmpty);
      expect(target.required, isTrue);
      expect(target.variants, containsPair('pubsub_target', isA<String>()));
      expect(target.variants, containsPair('http_target', isA<String>()));
      final pubsub = _helper(b, target.variants!['pubsub_target']!);
      expect(pubsub.reason, isNull);
      expect(pubsub.slots.map((s) => s.tfName), contains('topic_name'));
    });

    test('google_cloud_run_v2_service: custom slots and merged sealed fields',
        () {
      final b = fixture.build('google_cloud_run_v2_service');
      final template = _slot(b, 'template');
      expect(template.kind, MigrateSlotKind.helper);
      expect(template.tfName, 'template');
      final volume = b.helpers.singleWhere(
        (h) => h.className == 'CloudRunV2ServiceServiceVolume',
      );
      expect(volume.reason, isNull);
      final source = volume.slots.singleWhere((s) => s.dartName == 'source');
      expect(source.kind, MigrateSlotKind.sealed);
      expect(source.merged, isTrue);
      expect(source.variants, isNotEmpty);
      // Every variant the manifest names is itself in the helper table.
      for (final className in source.variants!.values) {
        expect(b.helpers.map((h) => h.className), contains(className));
      }
      expect(b.entry.slots.where((s) => s.kind == MigrateSlotKind.manual),
          isEmpty);
    });

    test('google_netapp_backup_vault: deriveNestedTypes helper slots', () {
      final b = fixture.build('google_netapp_backup_vault');
      final derived = b.entry.slots.where(
        (s) => s.kind == MigrateSlotKind.helper && !s.wrapped,
      );
      expect(derived, isNotEmpty);
      for (final s in derived) {
        expect(b.helpers.map((h) => h.className), contains(s.helper));
      }
    });

    test('data sources: Data class name, data barrel, getters', () {
      final policy = fixture.build(
        'google_access_context_manager_access_policy',
        dataSource: true,
      );
      expect(
        policy.entry.className,
        'DataGoogleAccessContextManagerAccessPolicy',
      );
      expect(policy.entry.kind, 'dataSource');
      expect(policy.entry.barrel, 'data');
      expect(policy.entry.getters, isNotEmpty);
      // `google_project` is the one data source without the `Data` prefix
      // (see `dataSourceClassName`); the manifest follows the emitter.
      final project = fixture.build('google_project', dataSource: true);
      expect(project.entry.className, 'GoogleProject');
      expect(project.entry.kind, 'dataSource');
    });
  });
}

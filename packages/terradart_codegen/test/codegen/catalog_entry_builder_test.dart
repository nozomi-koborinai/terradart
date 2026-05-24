import 'package:terradart_codegen/src/codegen/catalog_entry_builder.dart';
import 'package:terradart_codegen/src/codegen/wrapper_overrides/wrapper_override.dart';
import 'package:terradart_codegen/src/ir/attribute.dart';
import 'package:terradart_codegen/src/ir/constraints.dart';
import 'package:terradart_codegen/src/ir/nested_block.dart';
import 'package:terradart_codegen/src/ir/resource_def.dart';
import 'package:terradart_codegen/src/ir/type_def.dart';
import 'package:test/test.dart';

/// Minimal optional string attribute fixture.
Attribute _attr(String name) => Attribute(
      name: name,
      type: const StringType(),
      constraints: const Constraints(optional: true),
    );

/// Minimal single-nesting block fixture.
NestedBlockDef _block(String name) => NestedBlockDef(
      name: name,
      nesting: NestingMode.single,
      block: const BlockDef(),
      constraints: const Constraints(optional: true),
    );

ResourceDef _def({
  required String tfType,
  List<Attribute> attributes = const [],
  List<NestedBlockDef> nestedBlocks = const [],
  String? description,
}) =>
    ResourceDef(
      terraformType: tfType,
      description: description,
      root: BlockDef(attributes: attributes, nestedBlocks: nestedBlocks),
    );

void main() {
  group('catalogConstructorParams', () {
    test('prepends localName and snake→camels plain IR slots in slot order',
        () {
      // No override paramOrder → IR-natural order (attributes then blocks).
      final def = _def(
        tfType: 'google_pubsub_topic',
        attributes: [_attr('name'), _attr('kms_key_name')],
        nestedBlocks: [_block('message_storage_policy')],
      );
      const override = WrapperOverride(outputDir: 'pubsub');

      final params = catalogConstructorParams(def, override);

      expect(params.first, 'localName');
      expect(params, [
        'localName',
        'name',
        'kmsKeyName',
        'messageStoragePolicy',
      ]);
      // Universal bookends are NOT included.
      expect(params, isNot(contains('lifecycle')));
      expect(params, isNot(contains('dependsOn')));
    });

    test(
        'resolves a customSlot rename to the emitted identifier, not '
        'snakeToCamel(slotName)', () {
      // The url_map pattern: an IR-ish slot `host_rule` whose customSlot
      // renames the Dart param to the PLURAL `hostRules`. The catalog must
      // record `hostRules`, never `hostRule`.
      final def = _def(
        tfType: 'google_compute_url_map',
        attributes: [_attr('name')],
      );
      const override = WrapperOverride(
        outputDir: 'compute',
        paramOrder: ['name', 'host_rule', 'test'],
        customSlots: {
          'host_rule': CustomSlot(
            paramDeclaration: 'List<ComputeUrlMapUrlMapHostRule>? hostRules',
            argMapEntry: "if (hostRules != null) 'host_rule': x,",
          ),
          'test': CustomSlot(
            paramDeclaration: 'List<ComputeUrlMapUrlMapTest>? tests',
            argMapEntry: "if (tests != null) 'test': x,",
          ),
        },
      );

      final params = catalogConstructorParams(def, override);

      expect(params, ['localName', 'name', 'hostRules', 'tests']);
      expect(params, isNot(contains('hostRule')));
      expect(params, isNot(contains('test')));
    });

    test('resolves a virtual customSlot (no IR slot) like scheduler target',
        () {
      // `target` exists only in paramOrder + customSlots (no IR attribute /
      // block); its identifier comes from the paramDeclaration.
      final def = _def(
        tfType: 'google_cloud_scheduler_job',
        attributes: [_attr('name'), _attr('region')],
      );
      const override = WrapperOverride(
        outputDir: 'cloud_scheduler',
        paramOrder: ['name', 'region', 'target'],
        customSlots: {
          'target': CustomSlot(
            paramDeclaration:
                'required CloudSchedulerJobSchedulerTarget target',
            argMapEntry: 'target.blockKey: x,',
          ),
        },
      );

      final params = catalogConstructorParams(def, override);

      expect(params, ['localName', 'name', 'region', 'target']);
    });
  });

  group('paramIdentifier', () {
    test('returns the last identifier token of a paramDeclaration', () {
      expect(
        paramIdentifier('List<ComputeUrlMapUrlMapHostRule>? hostRules'),
        'hostRules',
      );
      expect(
        paramIdentifier('required CloudSchedulerJobSchedulerTarget target'),
        'target',
      );
      expect(
          paramIdentifier('BigQueryConfig? bigqueryConfig'), 'bigqueryConfig');
    });
  });

  group('scanNestedTypes', () {
    test('returns helper types in declaration order, excluding the main class',
        () {
      const source = '''
// GENERATED FILE - DO NOT EDIT
import 'package:terradart_core/terradart_core.dart';

enum BarEnum implements TerraformEnum {
  a('A');

  const BarEnum(this.wireValue);
  @override
  final String wireValue;
}

class FooHelper {
  const FooHelper();
}

class BazHelper {
  const BazHelper();
}

final class GoogleX extends Resource {
  GoogleX({required super.localName});
}
''';

      final names = scanNestedTypes(source, mainClass: 'GoogleX');

      expect(names, ['BarEnum', 'FooHelper', 'BazHelper']);
      expect(names, isNot(contains('GoogleX')));
    });

    test('matches sealed / abstract / base qualifiers', () {
      const source = '''
sealed class SchedulerTarget {}

final class PubsubTarget extends SchedulerTarget {}

final class GoogleY extends Resource {}
''';
      final names = scanNestedTypes(source, mainClass: 'GoogleY');
      expect(names, ['SchedulerTarget', 'PubsubTarget']);
    });

    test('returns [] when only the main class is present', () {
      const source = '''
import 'package:terradart_core/terradart_core.dart';

final class GooglePubsubTopic extends Resource {
  GooglePubsubTopic({required super.localName});
}
''';
      expect(scanNestedTypes(source, mainClass: 'GooglePubsubTopic'), isEmpty);
    });

    test('does not match indented (nested) declarations', () {
      // A `class` token that is indented (not column 0) must be ignored — it
      // would be a member/local, never a top-level helper.
      const source = '''
final class GoogleZ extends Resource {
  // not a real pattern, but proves the column-0 anchor:
  void f() {} // class Inner {}
}
''';
      expect(scanNestedTypes(source, mainClass: 'GoogleZ'), isEmpty);
    });
  });

  group('firstSentence', () {
    test('returns the first sentence of a single-line doc', () {
      expect(
        firstSentence('A named resource. More detail here.'),
        'A named resource.',
      );
    });

    test('collapses a multi-line first sentence to one line', () {
      expect(
        firstSentence('A named resource\nspanning two lines. Then more.'),
        'A named resource spanning two lines.',
      );
    });

    test('empty input yields empty string', () {
      expect(firstSentence(''), '');
      expect(firstSentence('   \n  '), '');
    });

    test('no trailing period returns the whole (collapsed) doc', () {
      expect(firstSentence('A summary with no period'),
          'A summary with no period');
      expect(
        firstSentence('Line one\nline two no period'),
        'Line one line two no period',
      );
    });

    test('does not truncate at a common abbreviation', () {
      expect(
        firstSentence('Configures e.g. the thing. Real end.'),
        'Configures e.g. the thing.',
      );
      expect(
        firstSentence('Use i.e. exactly this. Next.'),
        'Use i.e. exactly this.',
      );
      expect(
        firstSentence('Backends, buckets, etc. all work. Done.'),
        'Backends, buckets, etc. all work.',
      );
      expect(
        firstSentence('Global vs. regional maps. Pick one.'),
        'Global vs. regional maps.',
      );
    });

    test('a single sentence ending in an abbreviation degrades to whole doc',
        () {
      // No real boundary after the abbreviation → return the whole thing.
      expect(firstSentence('See the docs e.g.'), 'See the docs e.g.');
    });
  });

  group('buildCatalogEntry (integration of the pieces)', () {
    test(
        'maps a resource: strips doc markers, derives summary, sorts '
        'sensitive fields, scans nested types', () {
      final def = _def(
        tfType: 'google_demo_thing',
        attributes: [
          _attr('name'),
          const Attribute(
            name: 'token',
            type: StringType(),
            constraints: Constraints(optional: true, sensitive: true),
          ),
        ],
      );
      const override = WrapperOverride(
        outputDir: 'demo',
        classDocComment: '/// A demo thing.\n///\n/// Long form here.',
        extraSensitiveFields: ['extra_secret'],
      );
      const emitted = '''
final class GoogleDemoThing extends Resource {}

class DemoHelper {}
''';

      final entry = buildCatalogEntry(
        tfType: 'google_demo_thing',
        override: override,
        def: def,
        kind: 'resource',
        emittedSource: emitted,
      );

      expect(entry.tfType, 'google_demo_thing');
      expect(entry.className, 'GoogleDemoThing');
      expect(entry.barrel, 'demo');
      expect(entry.kind, 'resource');
      // classDocComment markers stripped.
      expect(entry.docComment, 'A demo thing.\n\nLong form here.');
      expect(entry.summary, 'A demo thing.');
      expect(entry.constructorParams, ['localName', 'name', 'token']);
      // schema-derived `token` + override `extra_secret`, sorted.
      expect(entry.sensitiveFields, ['extra_secret', 'token']);
      expect(entry.nestedTypes, ['DemoHelper']);
    });

    test('falls back to IR description (marker-free) when no classDocComment',
        () {
      final def = _def(
        tfType: 'google_project',
        attributes: [_attr('project_id')],
        description: 'Retrieve project metadata. Use downstream.',
      );
      const override = WrapperOverride(
        outputDir: 'data',
        kind: WrapperOverrideKind.dataSource,
      );

      final entry = buildCatalogEntry(
        tfType: 'google_project',
        override: override,
        def: def,
        kind: 'dataSource',
        emittedSource: 'final class GoogleProject extends Data {}',
      );

      expect(entry.kind, 'dataSource');
      expect(entry.docComment, 'Retrieve project metadata. Use downstream.');
      expect(entry.summary, 'Retrieve project metadata.');
      expect(entry.sensitiveFields, isEmpty);
      expect(entry.nestedTypes, isEmpty);
    });
  });
}

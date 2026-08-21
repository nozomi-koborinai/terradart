import 'dart:io';

import 'package:terradart_codegen/src/ir/nested_block.dart';
import 'package:terradart_codegen/src/ir/resource_def.dart';
import 'package:terradart_codegen/src/ir/type_def.dart';
import 'package:terradart_codegen/src/parser/schema_parser.dart';
import 'package:test/test.dart';

void main() {
  group('SchemaJsonParser', () {
    final fixture = File(
      'test/fixtures/schema/google_pubsub_topic.schema.json',
    );

    test('parses google_pubsub_topic into ProviderSchemaIR', () {
      final ir =
          const SchemaJsonParser().parseString(fixture.readAsStringSync());
      expect(ir.providerSource, 'hashicorp/google');
      expect(ir.providerName, 'google');
      expect(ir.resources.keys, contains('google_pubsub_topic'));
    });

    test('attribute required/optional/computed flags are populated', () {
      final ir =
          const SchemaJsonParser().parseString(fixture.readAsStringSync());
      final r = ir.resources['google_pubsub_topic']!;
      final attrs = {for (final a in r.root.attributes) a.name: a};
      expect(attrs['name']!.constraints.required, isTrue);
      expect(attrs['project']!.constraints.optional, isTrue);
      expect(attrs['project']!.constraints.computed, isTrue);
      expect(attrs['labels']!.constraints.optional, isTrue);
      expect(attrs['id']!.constraints.computed, isTrue);
    });

    test('nested block schema_settings is parsed with nesting=list/maxItems=1',
        () {
      final ir =
          const SchemaJsonParser().parseString(fixture.readAsStringSync());
      final r = ir.resources['google_pubsub_topic']!;
      final nb = r.root.nestedBlocks.singleWhere(
        (n) => n.name == 'schema_settings',
      );
      expect(nb.nesting, NestingMode.list);
      expect(nb.maxItems, 1);
      final inner = {for (final a in nb.block.attributes) a.name: a};
      expect(inner['schema']!.constraints.required, isTrue);
      expect(inner['encoding']!.constraints.optional, isTrue);
    });

    test('list<string> attribute type is decoded as ListType(StringType)', () {
      final ir =
          const SchemaJsonParser().parseString(fixture.readAsStringSync());
      final mp = ir.resources['google_pubsub_topic']!.root.nestedBlocks
          .singleWhere((n) => n.name == 'message_storage_policy');
      final attr = mp.block.attributes
          .singleWhere((a) => a.name == 'allowed_persistence_regions');
      expect(attr.type, isA<ListType>());
      expect((attr.type as ListType).element, isA<StringType>());
    });
  });

  group('Curated-surface identity heterogeneity (critical-fix #4)', () {
    final fixture = File(
      'test/fixtures/schema/curated_sample.schema.json',
    ).readAsStringSync();
    final ir = const SchemaJsonParser().parseString(fixture);

    test('Cloud Tasks queue requires both name and location', () {
      final r = ir.resources['google_cloud_tasks_queue']!;
      final attrs = {for (final a in r.root.attributes) a.name: a};
      expect(attrs['name']!.constraints.required, isTrue);
      expect(attrs['location']!.constraints.required, isTrue);
    });

    test('Secret Manager secret requires secret_id and a replication block',
        () {
      final r = ir.resources['google_secret_manager_secret']!;
      final attrs = {for (final a in r.root.attributes) a.name: a};
      expect(attrs['secret_id']!.constraints.required, isTrue);
      final repl =
          r.root.nestedBlocks.singleWhere((n) => n.name == 'replication');
      expect(repl.minItems, 1);
      expect(repl.constraints.required, isTrue);
    });
  });

  group('SchemaJsonParser nested_type normalization', () {
    final fixture = File(
      'test/fixtures/schema/framework_nested_type.schema.json',
    );
    ResourceDef widget() => const SchemaJsonParser()
        .parseString(fixture.readAsStringSync())
        .resources['framework_widget']!;

    test('nested_type attributes land in nestedBlocks, not attributes', () {
      final r = widget();
      expect(
        r.root.attributes.map((a) => a.name),
        ['name'],
        reason: 'only the plain cty-typed attribute stays an Attribute',
      );
      expect(
        r.root.nestedBlocks.map((n) => n.name).toSet(),
        {'account', 'settings', 'rules', 'meta', 'legacy_settings'},
      );
    });

    test('required single nested_type: nesting, constraints, minItems', () {
      final account =
          widget().root.nestedBlocks.singleWhere((n) => n.name == 'account');
      expect(account.nesting, NestingMode.single);
      expect(account.constraints.required, isTrue);
      expect(account.minItems, 1);
      expect(account.description, 'Account.');
      final inner = {for (final a in account.block.attributes) a.name: a};
      expect(inner['id']!.constraints.optional, isTrue);
    });

    test('optional single nested_type has no minItems floor', () {
      final settings =
          widget().root.nestedBlocks.singleWhere((n) => n.name == 'settings');
      expect(settings.nesting, NestingMode.single);
      expect(settings.constraints.optional, isTrue);
      expect(settings.minItems, isNull);
    });

    test('list nested_type maps to NestingMode.list', () {
      final rules =
          widget().root.nestedBlocks.singleWhere((n) => n.name == 'rules');
      expect(rules.nesting, NestingMode.list);
      expect(
        rules.block.attributes.single.constraints.required,
        isTrue,
      );
    });

    test('nested_type inside nested_type normalizes recursively', () {
      final settings =
          widget().root.nestedBlocks.singleWhere((n) => n.name == 'settings');
      final inner = settings.block.nestedBlocks.single;
      expect(inner.name, 'inner');
      expect(inner.nesting, NestingMode.single);
      expect(inner.block.attributes.single.name, 'value');
    });

    test('computed-only nested_type carries computed (paramOrder excludes it)',
        () {
      final meta =
          widget().root.nestedBlocks.singleWhere((n) => n.name == 'meta');
      expect(meta.constraints.computed, isTrue);
      expect(meta.constraints.required, isFalse);
    });

    test('nested_type single and block_types single yield equivalent blocks',
        () {
      final blocks = widget().root.nestedBlocks;
      final viaAttr = blocks.singleWhere((n) => n.name == 'settings');
      final viaBlock = blocks.singleWhere((n) => n.name == 'legacy_settings');
      expect(viaAttr.nesting, viaBlock.nesting);
      expect(
        viaAttr.block.attributes.map((a) => a.name),
        contains('flatten'),
      );
      expect(
        viaBlock.block.attributes.map((a) => a.name),
        contains('flatten'),
      );
    });

    test('unknown nested_type nesting_mode fails closed', () {
      const bad = '{"provider_schemas":{"registry.terraform.io/e/f":'
          '{"resource_schemas":{"f_x":{"version":0,"block":{"attributes":'
          '{"a":{"nested_type":{"attributes":{},"nesting_mode":"spiral"},'
          '"optional":true}}}}}}}}';
      expect(
        () => const SchemaJsonParser().parseString(bad),
        throwsFormatException,
      );
    });

    test('attribute with neither type nor nested_type still fails closed', () {
      const bad = '{"provider_schemas":{"registry.terraform.io/e/f":'
          '{"resource_schemas":{"f_x":{"version":0,"block":{"attributes":'
          '{"a":{"optional":true}}}}}}}}';
      expect(
        () => const SchemaJsonParser().parseString(bad),
        throwsFormatException,
      );
    });
  });
}

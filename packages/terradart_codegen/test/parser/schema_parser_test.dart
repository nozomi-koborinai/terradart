import 'dart:io';

import 'package:terradart_codegen/src/ir/nested_block.dart';
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
}

import 'dart:io';

import 'package:terradart_codegen/src/parser/ir_merger.dart';
import 'package:terradart_codegen/src/parser/mm_yaml_parser.dart';
import 'package:terradart_codegen/src/parser/schema_parser.dart';
import 'package:test/test.dart';

void main() {
  group('IrMerger', () {
    final schemaJson = File(
      'test/fixtures/schema/google_pubsub_topic.schema.json',
    ).readAsStringSync();
    final mmYaml = File('test/fixtures/mm/Topic.yaml').readAsStringSync();

    test('forceNew from MM YAML is layered onto schema-json IR', () {
      final base = const SchemaJsonParser()
          .parseString(schemaJson, providerVersion: '5.32.0');
      final overrides = const MmYamlParser().parseString(mmYaml);
      final merged = const IrMerger().merge(
        base: base,
        overrides: {'google_pubsub_topic': overrides},
      );
      final r = merged.resources['google_pubsub_topic']!;
      final attrs = {for (final a in r.root.attributes) a.name: a};
      expect(attrs['name']!.constraints.required, isTrue,
          reason: 'schema-json must keep required:true');
      expect(attrs['name']!.constraints.forceNew, isTrue,
          reason: 'MM YAML immutable maps to forceNew');
      expect(attrs['kms_key_name']!.constraints.forceNew, isTrue);
      expect(attrs['message_retention_duration']!.constraints.regex,
          r'^\d+(\.\d+)?s$');
      expect(attrs['name']!.constraints.minLength, 3);
      expect(attrs['name']!.constraints.maxLength, 255);
    });

    test('nested-block fields (schema_settings.encoding) get enum_values', () {
      final base = const SchemaJsonParser()
          .parseString(schemaJson, providerVersion: '5.32.0');
      final overrides = const MmYamlParser().parseString(mmYaml);
      final merged = const IrMerger().merge(
        base: base,
        overrides: {'google_pubsub_topic': overrides},
      );
      final ss = merged.resources['google_pubsub_topic']!.root.nestedBlocks
          .singleWhere((n) => n.name == 'schema_settings');
      final enc = ss.block.attributes.singleWhere((a) => a.name == 'encoding');
      expect(enc.constraints.enumValues, [
        'ENCODING_UNSPECIFIED',
        'JSON',
        'BINARY',
      ]);
    });

    test('schema_settings nested block inherits forceNew from MM immutable',
        () {
      final base = const SchemaJsonParser()
          .parseString(schemaJson, providerVersion: '5.32.0');
      final overrides = const MmYamlParser().parseString(mmYaml);
      final merged = const IrMerger().merge(
        base: base,
        overrides: {'google_pubsub_topic': overrides},
      );
      final ss = merged.resources['google_pubsub_topic']!.root.nestedBlocks
          .singleWhere((n) => n.name == 'schema_settings');
      expect(ss.constraints.forceNew, isTrue);
    });

    test('absent MM YAML overrides leave the IR untouched', () {
      final base = const SchemaJsonParser()
          .parseString(schemaJson, providerVersion: '5.32.0');
      final merged = const IrMerger().merge(base: base, overrides: const {});
      final r = merged.resources['google_pubsub_topic']!;
      final name = r.root.attributes.singleWhere((a) => a.name == 'name');
      expect(name.constraints.required, isTrue);
      expect(name.constraints.forceNew, isFalse,
          reason:
              'No MM YAML means no immutable hint, schema-json default holds');
    });

    test('schema-json sensitive=true is not erased by an empty MM override',
        () {
      final base = const SchemaJsonParser().parseString('''
{"format_version":"1.0","provider_schemas":{"registry.terraform.io/hashicorp/google":{
  "resource_schemas":{"google_secret_manager_secret_version":{"version":0,"block":{
    "attributes":{
      "secret_data":{"type":"string","required":true,"sensitive":true},
      "secret_data_wo":{"type":"string","optional":true,"sensitive":true,"write_only":true}
    }
  }}}
}}}
''');
      final empty = const MmResourceOverrides(fieldOverrides: {});
      final merged = const IrMerger().merge(
        base: base,
        overrides: {'google_secret_manager_secret_version': empty},
      );
      final attrs = {
        for (final a in merged
            .resources['google_secret_manager_secret_version']!.root.attributes)
          a.name: a,
      };
      expect(attrs['secret_data']!.constraints.sensitive, isTrue);
      expect(attrs['secret_data_wo']!.constraints.sensitive, isTrue);
      expect(attrs['secret_data_wo']!.constraints.writeOnly, isTrue);
    });
  });
}

import 'package:terradart_codegen/src/codegen/abstract_class_emitter.dart';
import 'package:terradart_codegen/src/ir/attribute.dart';
import 'package:terradart_codegen/src/ir/constraints.dart';
import 'package:terradart_codegen/src/ir/nested_block.dart';
import 'package:terradart_codegen/src/ir/resource_def.dart';
import 'package:terradart_codegen/src/ir/type_def.dart';
import 'package:test/test.dart';

void main() {
  group('AbstractClassEmitter — header & one required field', () {
    test('renders @TerraformResource + @Schema + required name field', () {
      final res = const ResourceDef(
        terraformType: 'google_pubsub_topic',
        description:
            'A named resource to which messages are sent by publishers.',
        root: BlockDef(attributes: [
          Attribute(
            name: 'name',
            type: StringType(),
            constraints: Constraints(required: true),
            description: 'Topic name. Immutable after creation.',
          ),
        ]),
      );
      final src = const AbstractClassEmitter().emit(
        res,
        providerSource: 'hashicorp/google',
      );
      expect(
          src,
          contains("@TerraformResource(type: 'google_pubsub_topic', "
              "provider: 'hashicorp/google')"));
      expect(
          src,
          contains(
              "@Schema(description: 'A named resource to which messages are sent by publishers.')"));
      expect(src, contains(r'abstract class $GooglePubsubTopic'));
      expect(
          src,
          contains("@StringField(description: "
              "'Topic name. Immutable after creation.')"));
      expect(src, contains('String get name;'));
      // Sensitive set is always emitted as a top-level const, even when empty.
      expect(
        src,
        contains('const Set<String> googlePubsubTopicSensitive = <String>{};'),
      );
    });
  });

  group('AbstractClassEmitter — optional, ForceNew, Sensitive', () {
    test('optional + forceNew string field gets nullable getter and @ForceNew',
        () {
      final res = const ResourceDef(
        terraformType: 'google_pubsub_topic',
        root: BlockDef(attributes: [
          Attribute(
            name: 'name',
            type: StringType(),
            constraints: Constraints(required: true),
          ),
          Attribute(
            name: 'kms_key_name',
            type: StringType(),
            constraints: Constraints(optional: true, forceNew: true),
            description: 'Fully qualified KMS key resource name.',
          ),
        ]),
      );
      final src = const AbstractClassEmitter().emit(
        res,
        providerSource: 'hashicorp/google',
      );
      expect(src, contains('  @ForceNew()'));
      expect(
          src,
          contains(
              "@StringField(name: 'kms_key_name', description: 'Fully qualified KMS key resource name.')"));
      expect(src, contains('String? get kmsKeyName;'));
    });

    test('sensitive field is annotated and listed in \$sensitive', () {
      final res = const ResourceDef(
        terraformType: 'google_secret_manager_secret_version',
        root: BlockDef(attributes: [
          Attribute(
            name: 'secret_data',
            type: StringType(),
            constraints: Constraints(required: true, sensitive: true),
          ),
        ]),
      );
      final src = const AbstractClassEmitter().emit(
        res,
        providerSource: 'hashicorp/google',
      );
      expect(src, contains('  @Sensitive()'));
      expect(
        src,
        contains(
          "const Set<String> googleSecretManagerSecretVersionSensitive = "
          "<String>{'secret_data'};",
        ),
      );
    });

    test('optional+computed renders as nullable, never required', () {
      final res = const ResourceDef(
        terraformType: 'google_pubsub_topic',
        root: BlockDef(attributes: [
          Attribute(
            name: 'project',
            type: StringType(),
            constraints: Constraints(optional: true, computed: true),
            description: 'GCP project ID.',
          ),
        ]),
      );
      final src = const AbstractClassEmitter().emit(
        res,
        providerSource: 'hashicorp/google',
      );
      expect(src, contains('String? get project;'));
      expect(src, contains('Optional + Computed'));
    });
  });

  group('AbstractClassEmitter — nested block', () {
    test(
        'schema_settings (nesting=list, maxItems=1) emits \$SchemaSettings + nullable single getter',
        () {
      final res = const ResourceDef(
        terraformType: 'google_pubsub_topic',
        root: BlockDef(
          attributes: [],
          nestedBlocks: [
            NestedBlockDef(
              name: 'schema_settings',
              nesting: NestingMode.list,
              maxItems: 1,
              constraints: Constraints(forceNew: true),
              block: BlockDef(attributes: [
                Attribute(
                  name: 'schema',
                  type: StringType(),
                  constraints: Constraints(required: true),
                ),
              ]),
            ),
          ],
        ),
      );
      final src = const AbstractClassEmitter()
          .emit(res, providerSource: 'hashicorp/google');
      expect(src, contains(r'abstract class $SchemaSettings'));
      expect(src, contains('  @ForceNew()'));
      expect(src, contains("  @Field(name: 'schema_settings')"));
      expect(src, contains(r'  $SchemaSettings? get schemaSettings;'));
    });
  });

  group('AbstractClassEmitter — enum-typed field', () {
    test('encoding field with enum_values renders enum + typed getter', () {
      final res = const ResourceDef(
        terraformType: 'google_pubsub_topic',
        root: BlockDef(
          attributes: [],
          nestedBlocks: [
            NestedBlockDef(
              name: 'schema_settings',
              nesting: NestingMode.list,
              maxItems: 1,
              constraints: Constraints(),
              block: BlockDef(attributes: [
                Attribute(
                  name: 'encoding',
                  type: StringType(),
                  constraints: Constraints(
                    optional: true,
                    enumValues: ['ENCODING_UNSPECIFIED', 'JSON', 'BINARY'],
                  ),
                ),
              ]),
            ),
          ],
        ),
      );
      final src = const AbstractClassEmitter()
          .emit(res, providerSource: 'hashicorp/google');
      expect(
          src,
          contains(
              'enum PubsubTopicEncoding { encodingUnspecified, json, binary }'));
      expect(src, contains('PubsubTopicEncoding? get encoding;'));
    });
  });
}

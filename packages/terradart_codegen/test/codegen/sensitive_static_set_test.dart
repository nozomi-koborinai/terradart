import 'package:terradart_codegen/src/codegen/sensitive_set_emitter.dart';
import 'package:terradart_codegen/src/ir/attribute.dart';
import 'package:terradart_codegen/src/ir/constraints.dart';
import 'package:terradart_codegen/src/ir/nested_block.dart';
import 'package:terradart_codegen/src/ir/resource_def.dart';
import 'package:terradart_codegen/src/ir/type_def.dart';
import 'package:test/test.dart';

void main() {
  group('emitSensitiveStaticSet', () {
    test('two sensitive fields produce a sorted snake_case top-level const',
        () {
      final res = const ResourceDef(
        terraformType: 'google_secret_manager_secret_version',
        root: BlockDef(attributes: [
          Attribute(
            name: 'secret_data',
            type: StringType(),
            constraints: Constraints(required: true, sensitive: true),
          ),
          Attribute(
            name: 'secret_data_wo',
            type: StringType(),
            constraints:
                Constraints(optional: true, sensitive: true, writeOnly: true),
          ),
          Attribute(
            name: 'name',
            type: StringType(),
            constraints: Constraints(required: true),
          ),
        ]),
      );
      expect(
        emitSensitiveStaticSet(res),
        equals(
          "/// Sensitive field paths for `google_secret_manager_secret_version`.\n"
          "const Set<String> googleSecretManagerSecretVersionSensitive = "
          "<String>{'secret_data', 'secret_data_wo'};",
        ),
      );
    });

    test('zero sensitive fields produces an empty top-level const', () {
      final res = const ResourceDef(
        terraformType: 'google_pubsub_topic',
        root: BlockDef(attributes: [
          Attribute(
            name: 'name',
            type: StringType(),
            constraints: Constraints(required: true),
          ),
        ]),
      );
      expect(
        emitSensitiveStaticSet(res),
        equals(
          "/// Sensitive field paths for `google_pubsub_topic`.\n"
          "const Set<String> googlePubsubTopicSensitive = <String>{};",
        ),
      );
    });

    test('nested block sensitive fields are surfaced with dotted path', () {
      final res = const ResourceDef(
        terraformType: 'google_pubsub_subscription',
        root: BlockDef(
          attributes: [],
          nestedBlocks: [
            NestedBlockDef(
              name: 'push_config',
              nesting: NestingMode.list,
              constraints: Constraints(),
              block: BlockDef(attributes: [
                Attribute(
                  name: 'oidc_token',
                  type: StringType(),
                  constraints: Constraints(optional: true, sensitive: true),
                ),
              ]),
            ),
          ],
        ),
      );
      expect(
        emitSensitiveStaticSet(res),
        equals(
          "/// Sensitive field paths for `google_pubsub_subscription`.\n"
          "const Set<String> googlePubsubSubscriptionSensitive = "
          "<String>{'push_config.oidc_token'};",
        ),
      );
    });
  });

  group('sensitiveConstName', () {
    test('camelCases the Terraform type and adds `Sensitive` suffix', () {
      expect(sensitiveConstName('google_pubsub_topic'),
          equals('googlePubsubTopicSensitive'));
      expect(sensitiveConstName('google_secret_manager_secret_version'),
          equals('googleSecretManagerSecretVersionSensitive'));
    });
  });
}

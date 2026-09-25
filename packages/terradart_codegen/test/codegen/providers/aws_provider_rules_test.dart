import 'package:terradart_codegen/src/codegen/providers/aws_provider_rules.dart';
import 'package:terradart_codegen/src/codegen/providers/provider_registry.dart';
import 'package:terradart_codegen/src/ir/attribute.dart';
import 'package:terradart_codegen/src/ir/constraints.dart';
import 'package:terradart_codegen/src/ir/nested_block.dart';
import 'package:terradart_codegen/src/ir/resource_def.dart';
import 'package:terradart_codegen/src/ir/type_def.dart';
import 'package:test/test.dart';

void main() {
  ResourceDef resourceWith(List<String> computed) => ResourceDef(
        terraformType: 'aws_sqs_queue',
        root: BlockDef(
          attributes: [
            for (final name in computed)
              Attribute(
                name: name,
                type: const StringType(),
                constraints: const Constraints(computed: true),
              ),
          ],
        ),
      );

  group('AwsProviderRules', () {
    const rules = AwsProviderRules();

    test('universalGetters exposes id and arnRef when present', () {
      expect(rules.universalGetters(resourceWith(['arn', 'id'])), [
        "TfRef<String> get id => TfRef.attribute<String>(this, 'id');",
        "TfRef<String> get arnRef => TfRef.attribute<String>(this, 'arn');",
      ]);
      expect(rules.universalGetters(resourceWith(['id'])), [
        "TfRef<String> get id => TfRef.attribute<String>(this, 'id');",
      ]);
    });
  });

  test('providerRulesById keys match each adapter providerId', () {
    expect(
      {for (final e in providerRulesById.entries) e.key: e.value.providerId},
      {
        'hashicorp/google': 'hashicorp/google',
        'cloudflare/cloudflare': 'cloudflare/cloudflare',
        'hashicorp/aws': 'hashicorp/aws',
      },
    );
  });
}

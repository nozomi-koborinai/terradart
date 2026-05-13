import 'package:terradart_codegen/src/codegen/providers/google_provider_rules.dart';
import 'package:terradart_codegen/src/ir/attribute.dart';
import 'package:terradart_codegen/src/ir/constraints.dart';
import 'package:terradart_codegen/src/ir/nested_block.dart';
import 'package:terradart_codegen/src/ir/resource_def.dart';
import 'package:terradart_codegen/src/ir/type_def.dart';
import 'package:test/test.dart';

void main() {
  group('GoogleProviderRules', () {
    const rules = GoogleProviderRules();

    test('providerId is "hashicorp/google"', () {
      expect(rules.providerId, 'hashicorp/google');
    });

    test(
        'outputDirAliases contains the expected MM-product and segment entries',
        () {
      // Tier-1 MM-product normalizations.
      expect(rules.outputDirAliases['cloudtasks'], 'cloud_tasks');
      expect(rules.outputDirAliases['secretmanager'], 'secret_manager');
      expect(rules.outputDirAliases['cloudscheduler'], 'cloud_scheduler');
      expect(rules.outputDirAliases['resourcemanager'], 'project');
      // Tier-2/3 segment / prefix overrides.
      expect(rules.outputDirAliases['service_account'], 'iam');
      expect(rules.outputDirAliases['project_service'], 'project');
      // Phase 4.5 pilot — cloud_run service alias.
      expect(rules.outputDirAliases['cloudrunv2'], 'cloud_run');
    });

    test('universalGetters returns id + nameRef when both attrs are present',
        () {
      const def = ResourceDef(
        terraformType: 'fake_both_resource',
        root: BlockDef(attributes: [
          Attribute(
            name: 'id',
            type: StringType(),
            constraints: Constraints(computed: true),
          ),
          Attribute(
            name: 'name',
            type: StringType(),
            constraints: Constraints(optional: true),
          ),
        ]),
      );

      final lines = rules.universalGetters(def);
      expect(lines, <String>[
        "TfRef<String> get id => TfRef.attribute<String>(this, 'id');",
        "TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');",
      ]);
    });

    test('universalGetters returns only nameRef when id attr is absent', () {
      const def = ResourceDef(
        terraformType: 'fake_name_only_resource',
        root: BlockDef(attributes: [
          Attribute(
            name: 'name',
            type: StringType(),
            constraints: Constraints(required: true),
          ),
        ]),
      );
      final lines = rules.universalGetters(def);
      expect(lines, <String>[
        "TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');",
      ]);
    });

    test('universalGetters returns only id when name attr is absent', () {
      const def = ResourceDef(
        terraformType: 'fake_no_name_resource',
        root: BlockDef(attributes: [
          Attribute(
            name: 'id',
            type: StringType(),
            constraints: Constraints(computed: true),
          ),
        ]),
      );
      final lines = rules.universalGetters(def);
      expect(lines, <String>[
        "TfRef<String> get id => TfRef.attribute<String>(this, 'id');",
      ]);
    });

    test(
        'universalGetters returns an empty list when neither id nor name is present',
        () {
      const def = ResourceDef(
        terraformType: 'fake_bare_resource',
        root: BlockDef(attributes: [
          Attribute(
            name: 'foo',
            type: StringType(),
            constraints: Constraints(),
          ),
        ]),
      );
      expect(rules.universalGetters(def), isEmpty);
    });
  });
}

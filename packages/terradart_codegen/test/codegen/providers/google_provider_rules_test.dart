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
      // Strategy 1 — MM-product normalizations.
      expect(rules.outputDirAliases['cloudtasks'], 'cloud_tasks');
      expect(rules.outputDirAliases['secretmanager'], 'secret_manager');
      expect(rules.outputDirAliases['cloudscheduler'], 'cloud_scheduler');
      expect(rules.outputDirAliases['resourcemanager'], 'project');
      // Strategy 2 — segment / prefix overrides.
      expect(rules.outputDirAliases['service_account'], 'iam');
      expect(rules.outputDirAliases['project_service'], 'project');
      // Phase 4.5 pilot — cloud_run service alias.
      expect(rules.outputDirAliases['cloudrunv2'], 'cloud_run');
      expect(rules.outputDirAliases['public'], 'public_ca');
      expect(rules.outputDirAliases['publicca'], 'public_ca');
      expect(rules.outputDirAliases['public_ca'], 'public_ca');
      expect(rules.outputDirAliases['storagecontrol'], 'storage_control');
      expect(rules.outputDirAliases['storage_control'], 'storage_control');
      expect(rules.outputDirAliases['data_lineage'], 'dataplex');
      expect(rules.outputDirAliases['datalineage'], 'dataplex');
      expect(rules.outputDirAliases['modelarmor'], 'model_armor');
      expect(rules.outputDirAliases['backup'], 'backup_dr');
      expect(rules.outputDirAliases['backup_dr'], 'backup_dr');
      expect(rules.outputDirAliases['backupdr'], 'backup_dr');
      expect(rules.outputDirAliases['edgecontainer'], 'edgecontainer');
      expect(rules.outputDirAliases['edgenetwork'], 'edgenetwork');
      expect(rules.outputDirAliases['vmwareengine'], 'vmwareengine');
      expect(
          rules.outputDirAliases['hypercomputecluster'], 'hypercomputecluster');
      expect(rules.outputDirAliases['container_aws'], 'container_aws');
      expect(rules.outputDirAliases['container_azure'], 'container_azure');
      expect(
          rules.outputDirAliases['container_attached'], 'container_attached');
      expect(rules.outputDirAliases['pubsub_lite'], 'pubsub_lite');
      expect(rules.outputDirAliases['pubsublite'], 'pubsub_lite');
      expect(rules.outputDirAliases['beyondcorp'], 'beyondcorp');
      expect(rules.outputDirAliases['cloud_ids'], 'cloud_ids');
      expect(rules.outputDirAliases['cloudids'], 'cloud_ids');
      expect(rules.outputDirAliases['blockchain'], 'blockchain');
      expect(rules.outputDirAliases['blockchain_node_engine'], 'blockchain');
      expect(rules.outputDirAliases['blockchainnodeengine'], 'blockchain');
      expect(rules.outputDirAliases['dataflow'], 'dataflow');
      expect(
        rules.outputDirAliases['integration_connectors'],
        'integration_connectors',
      );
      expect(
        rules.outputDirAliases['integrationconnectors'],
        'integration_connectors',
      );
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

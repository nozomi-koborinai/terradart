import 'package:terradart_codegen/src/codegen/providers/google_provider_rules.dart';
import 'package:terradart_codegen/src/codegen/wrap_init/output_dir_resolver.dart';
import 'package:terradart_codegen/src/codegen/wrapper_overrides/wrapper_override.dart';
import 'package:test/test.dart';

void main() {
  group('OutputDirResolver', () {
    final resolver = OutputDirResolver(
      aliases: const GoogleProviderRules().outputDirAliases,
    );

    test('Tier 0: kind=dataSource short-circuits to "data"', () {
      final result = resolver.resolve(
        terraformType: 'google_project',
        mmProduct: 'resourcemanager',
        kind: WrapperOverrideKind.dataSource,
      );
      expect(result, 'data');
    });

    test('Step 1: mmProduct hit (no alias) returns mmProduct verbatim', () {
      final result = resolver.resolve(
        terraformType: 'google_pubsub_topic',
        mmProduct: 'pubsub',
        kind: WrapperOverrideKind.resource,
      );
      expect(result, 'pubsub');
    });

    test('Step 1 + alias: mmProduct=cloudtasks → cloud_tasks', () {
      final result = resolver.resolve(
        terraformType: 'google_cloud_tasks_queue',
        mmProduct: 'cloudtasks',
        kind: WrapperOverrideKind.resource,
      );
      expect(result, 'cloud_tasks');
    });

    test('Step 2: mmProduct=null, terraform type prefix match', () {
      final result = resolver.resolve(
        terraformType: 'google_cloud_tasks_queue_iam_member',
        mmProduct: null,
        kind: WrapperOverrideKind.resource,
      );
      expect(result, 'cloud_tasks');
    });

    test('Step 3: alias override on segment-1 fallback', () {
      final result = resolver.resolve(
        terraformType: 'google_service_account',
        mmProduct: null,
        kind: WrapperOverrideKind.resource,
      );
      expect(result, 'iam');
    });

    test('Step 2: data_loss_prevention → dlp (not data)', () {
      final result = resolver.resolve(
        terraformType: 'google_data_loss_prevention_inspect_template',
        mmProduct: null,
        kind: WrapperOverrideKind.resource,
      );
      expect(result, 'dlp');
    });

    test('Step 2: developer_connect → developer_connect (not developer)', () {
      final result = resolver.resolve(
        terraformType: 'google_developer_connect_account_connector',
        mmProduct: null,
        kind: WrapperOverrideKind.resource,
      );
      expect(result, 'developer_connect');
    });

    test('Step 3: public segment → public_ca', () {
      final result = resolver.resolve(
        terraformType: 'google_public_ca_external_account_key',
        mmProduct: null,
        kind: WrapperOverrideKind.resource,
      );
      expect(result, 'public_ca');
    });

    test('Step 2: os_login → iam (not os_login barrel)', () {
      final result = resolver.resolve(
        terraformType: 'google_os_login_ssh_public_key',
        mmProduct: null,
        kind: WrapperOverrideKind.resource,
      );
      expect(result, 'iam');
    });

    test('Step 2: workload_identity → iam (not workload_identity barrel)', () {
      final result = resolver.resolve(
        terraformType: 'google_workload_identity_service_agent',
        mmProduct: null,
        kind: WrapperOverrideKind.resource,
      );
      expect(result, 'iam');
    });
  });
}

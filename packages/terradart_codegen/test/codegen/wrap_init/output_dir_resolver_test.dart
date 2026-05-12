import 'package:terradart_codegen/src/codegen/wrap_init/output_dir_resolver.dart';
import 'package:terradart_codegen/src/codegen/wrapper_overrides/wrapper_override.dart';
import 'package:test/test.dart';

void main() {
  group('OutputDirResolver', () {
    final resolver = const OutputDirResolver();

    test('Tier 0: kind=dataSource short-circuits to "data"', () {
      final result = resolver.resolve(
        terraformType: 'google_project',
        mmProduct: 'resourcemanager',
        kind: WrapperOverrideKind.dataSource,
      );
      expect(result, 'data');
    });

    test('Tier 1: mmProduct hit (no alias) returns mmProduct verbatim', () {
      final result = resolver.resolve(
        terraformType: 'google_pubsub_topic',
        mmProduct: 'pubsub',
        kind: WrapperOverrideKind.resource,
      );
      expect(result, 'pubsub');
    });

    test('Tier 1 + alias: mmProduct=cloudtasks → cloud_tasks', () {
      final result = resolver.resolve(
        terraformType: 'google_cloud_tasks_queue',
        mmProduct: 'cloudtasks',
        kind: WrapperOverrideKind.resource,
      );
      expect(result, 'cloud_tasks');
    });

    test('Tier 2: mmProduct=null, terraform type prefix match', () {
      final result = resolver.resolve(
        terraformType: 'google_cloud_tasks_queue_iam_member',
        mmProduct: null,
        kind: WrapperOverrideKind.resource,
      );
      expect(result, 'cloud_tasks');
    });

    test('Tier 3: alias override on segment-1 fallback', () {
      // google_service_account → tier-2 prefix-strip yields "service"
      // → alias override maps service_account → iam
      final result = resolver.resolve(
        terraformType: 'google_service_account',
        mmProduct: null,
        kind: WrapperOverrideKind.resource,
      );
      expect(result, 'iam');
    });
  });
}

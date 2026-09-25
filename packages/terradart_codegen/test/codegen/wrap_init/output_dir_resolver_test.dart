import 'package:terradart_codegen/src/codegen/providers/aws_provider_rules.dart';
import 'package:terradart_codegen/src/codegen/providers/cloudflare_provider_rules.dart';
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

  group('OutputDirResolver (cloudflare)', () {
    final resolver = OutputDirResolver(
      aliases: const CloudflareProviderRules().outputDirAliases,
      typePrefix: const CloudflareProviderRules().terraformTypePrefix,
    );

    test('cloudflare_access_rule stays in access, not zero_trust', () {
      expect(
        resolver.resolve(
          terraformType: 'cloudflare_access_rule',
          mmProduct: null,
          kind: WrapperOverrideKind.resource,
        ),
        'access',
      );
    });

    test('cloudflare_zero_trust_access_application folds to zero_trust', () {
      expect(
        resolver.resolve(
          terraformType: 'cloudflare_zero_trust_access_application',
          mmProduct: null,
          kind: WrapperOverrideKind.resource,
        ),
        'zero_trust',
      );
    });

    test('data sources always resolve to data', () {
      expect(
        resolver.resolve(
          terraformType: 'cloudflare_zone',
          mmProduct: null,
          kind: WrapperOverrideKind.dataSource,
        ),
        'data',
      );
    });
  });

  group('OutputDirResolver (aws)', () {
    final resolver = OutputDirResolver(
      aliases: const AwsProviderRules().outputDirAliases,
      typePrefix: const AwsProviderRules().terraformTypePrefix,
    );
    String barrel(String type) => resolver.resolve(
          terraformType: type,
          mmProduct: null,
          kind: WrapperOverrideKind.resource,
        );

    test('EC2 / VPC resource-named types fold into ec2', () {
      expect(
        {
          for (final type in [
            'aws_instance',
            'aws_route_table',
            'aws_subnet',
            'aws_vpc',
            'aws_security_group_rule',
            'aws_launch_template',
            'aws_ec2_transit_gateway',
          ])
            type: barrel(type),
        },
        {
          'aws_instance': 'ec2',
          'aws_route_table': 'ec2',
          'aws_subnet': 'ec2',
          'aws_vpc': 'ec2',
          'aws_security_group_rule': 'ec2',
          'aws_launch_template': 'ec2',
          'aws_ec2_transit_gateway': 'ec2',
        },
      );
    });

    test('service-named types keep their service barrel', () {
      expect(barrel('aws_s3_bucket'), 's3');
      expect(barrel('aws_lambda_function'), 'lambda');
      expect(barrel('aws_route53_record'), 'route53');
      expect(barrel('aws_vpclattice_service'), 'vpclattice');
      expect(barrel('aws_securityhub_account'), 'securityhub');
    });

    test('launch_configuration is Auto Scaling, ALB aliases are ELB', () {
      expect(barrel('aws_launch_configuration'), 'autoscaling');
      expect(barrel('aws_alb_listener'), 'elb');
      expect(barrel('aws_lb'), 'elb');
      expect(barrel('aws_load_balancer_policy'), 'elb');
    });
  });
}

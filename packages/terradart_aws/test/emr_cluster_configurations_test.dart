import 'package:terradart_aws/emr.dart';
import 'package:terradart_aws/iam.dart';
import 'package:terradart_aws/provider.dart';
import 'package:test/test.dart';

void main() {
  test('aws_emr_cluster synthesizes nested instance fleet configurations '
      'into main.tf.json', () {
    final json = _EmrConfigurationsStack().synth().tfJson;
    final cluster =
        ((json['resource'] as Map)['aws_emr_cluster'] as Map)['main']
            as Map<String, dynamic>;
    final fleet = cluster['core_instance_fleet'] as Map<String, dynamic>;
    final configs =
        ((fleet['instance_type_configs'] as List).single
                as Map<String, dynamic>)['configurations']
            as List;
    expect(configs, [
      {
        'classification': 'spark-defaults',
        'properties': {'spark.executor.memory': '2G'},
      },
    ]);
  });
}

final class _EmrConfigurationsStack extends Stack {
  _EmrConfigurationsStack()
    : super(providers: const [AwsProvider(region: 'us-east-1')]) {
    final role = AwsIamRole(
      'role',
      assumeRolePolicy: const .literal(
        '{"Version":"2012-10-17","Statement":[]}',
      ),
    );
    add(role);
    add(
      AwsEmrCluster(
        'main',
        name: const .literal('demo'),
        releaseLabel: const .literal('emr-7.0.0'),
        serviceRole: role.ref,
        coreInstanceFleet: const EmrClusterCoreInstanceFleet(
          instanceTypeConfigs: [
            EmrClusterInstanceTypeConfigs(
              instanceType: .literal('m5.xlarge'),
              configurations: [
                EmrClusterInstanceTypeConfigsConfigurations(
                  classification: .literal('spark-defaults'),
                  properties: .literal({'spark.executor.memory': '2G'}),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

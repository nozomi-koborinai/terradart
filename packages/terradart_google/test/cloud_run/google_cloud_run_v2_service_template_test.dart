import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/cloud_run.dart';
import 'package:test/test.dart';

void main() {
  group('CloudRunV2ServiceTemplate.workloadIdentityConfig', () {
    CloudRunV2ServiceServiceContainer container() =>
        CloudRunV2ServiceServiceContainer(image: TfArg.literal('img'));

    test('encodes a single workload_identity_config block', () {
      final template = CloudRunV2ServiceTemplate(
        containers: [container()],
        workloadIdentityConfig: CloudRunV2ServiceWorkloadIdentityConfig(
          identity: TfArg.literal('spiffe://example'),
          identityCertificateEnabled: TfArg.literal(true),
          identityType: TfArg.literal(
            CloudRunV2ServiceWorkloadIdentityType.workloadIdentity,
          ),
        ),
      );
      expect(template.toArgMap()['workload_identity_config'], [
        {
          'identity': 'spiffe://example',
          'identity_certificate_enabled': true,
          'identity_type': 'IDENTITY_TYPE_WORKLOAD_IDENTITY',
        },
      ]);
    });

    test('is omitted when unset', () {
      final template = CloudRunV2ServiceTemplate(containers: [container()]);
      expect(template.toArgMap(), isNot(contains('workload_identity_config')));
    });
  });
}

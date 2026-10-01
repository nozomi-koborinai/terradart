import 'package:terradart_google/cloud_run.dart';
import 'package:test/test.dart';

void main() {
  group('CloudRunV2ServiceTemplate.workloadIdentityConfig', () {
    final container = CloudRunV2ServiceContainers(image: .literal('img'));

    test('encodes a single workload_identity_config block', () {
      final template = CloudRunV2ServiceTemplate(
        containers: [container],
        workloadIdentityConfig: CloudRunV2ServiceWorkloadIdentityConfig(
          identity: .literal('spiffe://example'),
          identityCertificateEnabled: .literal(true),
          identityType: .workloadIdentity,
        ),
      );
      expect(template.encode()['workload_identity_config'], {
        'identity': 'spiffe://example',
        'identity_certificate_enabled': true,
        'identity_type': 'IDENTITY_TYPE_WORKLOAD_IDENTITY',
      });
    });

    test('is omitted when unset', () {
      final template = CloudRunV2ServiceTemplate(containers: [container]);
      expect(template.encode(), isNot(contains('workload_identity_config')));
    });
  });
}

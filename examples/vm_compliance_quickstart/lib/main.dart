/// VM compliance quickstart — Wave 76 OS Config + Binary Authorization.
///
/// Provisions Binary Authorization policy/attestor/IAM and OS Config policy
/// assignment + patch deployment for a single GCP project.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/binary_authorization.dart';
import 'package:terradart_google/os_config.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';
import 'package:terradart_google/time.dart';

/// Test PGP public key generated for this quickstart (not a production secret).
const _quickstartPgpPublicKey = '''
-----BEGIN PGP PUBLIC KEY BLOCK-----

mDMEakOv5BYJKwYBBAHaRw8BAQdAauWzihMHRUrONnNlO+BQ6tg907r8HUAPio+U
5ZvHKkq0IHRlcnJhZGFydC1xdWlja3N0YXJ0QGV4YW1wbGUuY29tiJkEExYKAEEW
IQRexSnQ1oFgc2Wm01wE8WTDJmzlNgUCakOv5AIbAwUJBaOagAULCQgHAgIiAgYV
CgkICwIEFgIDAQIeBwIXgAAKCRAE8WTDJmzlNoucAQCTYDiFKpZUakmGJBZcoTf9
lBr5JI4wCzfcsXBx74RQbQEAqw42fOVhT8m85PM/+bix3aDzCBCpJZMKpswRMg+i
3QG4OARqQ6/kEgorBgEEAZdVAQUBAQdAp7p0S2D2WqwPAQ3SbogKuwjnNog46mS8
dOolwWJIbygDAQgHiHgEGBYKACAWIQRexSnQ1oFgc2Wm01wE8WTDJmzlNgUCakOv
5AIbDAAKCRAE8WTDJmzlNjWSAP0c1R8dQUPwwB35jXyO7CdJeGDGqKXckD0Bjy0E
Gd1ozQD/ZDN4XrbtjkrBJLbF1H43p+46BNJ2L1d+HW4X7S07vAk=
=JQdo
-----END PGP PUBLIC KEY BLOCK-----
''';

final class VmComplianceStack extends Stack {
  VmComplianceStack({required String projectId})
      : super(
          providers: [
            GoogleProvider(project: projectId, region: 'us-central1'),
            const TimeProvider(),
          ],
        ) {
    const zone = 'us-central1-a';

    final apiDeps = Apis.enable(
      this,
      barrels: [Barrels.osConfig, Barrels.binaryAuthorization],
      propagationDelay: const Duration(seconds: 60),
    );

    add(
      GoogleBinaryAuthorizationPolicy(
        localName: 'project_policy',
        description: TfArg.literal('TerraDart quickstart admission policy'),
        defaultAdmissionRule: TfArg.literal({
          'evaluation_mode': 'ALWAYS_ALLOW',
          'enforcement_mode': 'ENFORCED_BLOCK_AND_AUDIT_LOG',
        }),
        dependsOn: apiDeps,
      ),
    );

    final attestor = add(
      GoogleBinaryAuthorizationAttestor(
        localName: 'ci_attestor',
        name: TfArg.literal('ci-attestor'),
        description: TfArg.literal('CI image signing attestor'),
        attestationAuthorityNote: TfArg.literal({
          'note_reference': 'projects/$projectId/notes/ci-attestor',
          'public_keys': [
            {
              'comment': 'TerraDart quickstart test key',
              'ascii_armored_pgp_public_key': _quickstartPgpPublicKey,
            },
          ],
        }),
        dependsOn: apiDeps,
      ),
    );

    add(
      GoogleBinaryAuthorizationAttestorIamMember(
        localName: 'ci_attestor_viewer',
        attestor: TfArg.ref(attestor.nameRef),
        role: TfArg.literal('roles/binaryauthorization.attestorViewer'),
        member: TfArg.literal(
          'serviceAccount:ci-signer@$projectId.iam.gserviceaccount.com',
        ),
        dependsOn: [ResourceDependency(attestor)],
      ),
    );

    add(
      GoogleOsConfigOsPolicyAssignment(
        localName: 'baseline',
        name: TfArg.literal('baseline-policies'),
        location: TfArg.literal(zone),
        description: TfArg.literal('Validation-mode shell probe for Linux VMs'),
        instanceFilter: TfArg.literal({'all': true}),
        osPolicies: TfArg.literal([
          {
            'id': 'hello-probe',
            'mode': 'VALIDATION',
            'resource_groups': [
              {
                'resources': [
                  {
                    'id': 'hello-script',
                    'exec': {
                      'validate': {
                        'interpreter': 'SHELL',
                        'script': 'echo hello-from-os-config',
                      },
                    },
                  },
                ],
              },
            ],
          },
        ]),
        rollout: TfArg.literal({
          'disruption_budget': {'percent': 100},
          'min_wait_duration': '0s',
        }),
        skipAwaitRollout: TfArg.literal(true),
        dependsOn: apiDeps,
      ),
    );

    add(
      GoogleOsConfigPatchDeployment(
        localName: 'security_patches',
        patchDeploymentId: TfArg.literal('security-patches'),
        description: TfArg.literal('One-time security patch window'),
        instanceFilter: TfArg.literal({'all': true}),
        patchConfig: TfArg.literal({
          'mig_instances_allowed': true,
          'reboot_config': 'DEFAULT',
        }),
        schedule: OsConfigPatchDeploymentOneTimeSchedule(
          executeTime: TfArg.literal('2030-01-01T02:00:00Z'),
        ),
        dependsOn: apiDeps,
      ),
    );
  }
}

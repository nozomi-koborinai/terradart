/// VM compliance quickstart — Wave 76 OS Config + Binary Authorization,
/// plus a leftover OS Config v2 policy orchestrator (STOPPED).
///
/// Provisions Binary Authorization policy/attestor/IAM and OS Config policy
/// assignment + patch deployment + a stored-but-inactive v2 policy
/// orchestrator for a single GCP project.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/binary_authorization.dart';
import 'package:terradart_google/iam.dart';
import 'package:terradart_google/os_config.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';
import 'package:terradart_time/terradart_time.dart';

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
        description: .literal('TerraDart quickstart admission policy'),
        defaultAdmissionRule: BinaryAuthorizationPolicyDefaultAdmissionRule(
          evaluationMode: .literal(
            BinaryAuthorizationPolicyEvaluationMode.alwaysAllow,
          ),
          enforcementMode: .literal(
            BinaryAuthorizationPolicyEnforcementMode.enforcedBlockAndAuditLog,
          ),
        ),
        dependsOn: apiDeps,
      ),
    );

    final attestor = add(
      GoogleBinaryAuthorizationAttestor(
        localName: 'ci_attestor',
        name: .literal('ci-attestor'),
        description: .literal('CI image signing attestor'),
        attestationAuthorityNote:
            BinaryAuthorizationAttestorAttestationAuthorityNote(
              noteReference: .literal('projects/$projectId/notes/ci-attestor'),
              publicKeys: [
                .new(
                  comment: .literal('TerraDart quickstart test key'),
                  asciiArmoredPgpPublicKey: .literal(_quickstartPgpPublicKey),
                ),
              ],
            ),
        dependsOn: apiDeps,
      ),
    );

    // The image-signing service account granted the attestor viewer role.
    // Create it in-stack — a member pointing at a non-existent SA fails apply
    // with "setIamPolicy: service account does not exist".
    final ciSigner = add(
      GoogleServiceAccount(
        localName: 'ci_signer',
        accountId: .literal('ci-signer'),
        displayName: .literal('CI image signer'),
      ),
    );

    add(
      GoogleBinaryAuthorizationAttestorIamMember(
        localName: 'ci_attestor_viewer',
        attestor: .ref(attestor.nameRef),
        role: .literal('roles/viewer'),
        member: .ref(ciSigner.iamMember),
        dependsOn: [ResourceDependency(attestor), ResourceDependency(ciSigner)],
      ),
    );

    add(
      GoogleOsConfigOsPolicyAssignment(
        localName: 'baseline',
        name: .literal('baseline-policies'),
        location: .literal(zone),
        description: .literal('Validation-mode shell probe for Linux VMs'),
        instanceFilter: OsConfigOsPolicyAssignmentInstanceFilter(
          all: .literal(true),
        ),
        osPolicies: [
          OsConfigOsPolicyAssignmentOsPolicies(
            id: .literal('hello-probe'),
            mode: .literal(.validation),
            resourceGroups: [
              .new(
                resources: [
                  .new(
                    id: .literal('hello-script'),
                    exec: .new(
                      validate: .new(
                        interpreter: .literal(.shell),
                        script: .literal('echo hello-from-os-config'),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
        rollout: OsConfigOsPolicyAssignmentRollout(
          disruptionBudget: .new(percent: .literal(100)),
          minWaitDuration: .literal('0s'),
        ),
        skipAwaitRollout: .literal(true),
        dependsOn: apiDeps,
      ),
    );

    add(
      GoogleOsConfigPatchDeployment(
        localName: 'security_patches',
        patchDeploymentId: .literal('security-patches'),
        description: .literal('One-time security patch window'),
        instanceFilter: OsConfigPatchDeploymentInstanceFilter(
          all: .literal(true),
        ),
        patchConfig: OsConfigPatchDeploymentPatchConfig(
          migInstancesAllowed: .literal(true),
          rebootConfig: .literal(.defaultCase),
        ),
        schedule: .oneTimeSchedule(
          .new(executeTime: .literal('2030-01-01T02:00:00Z')),
        ),
        dependsOn: apiDeps,
      ),
    );

    // STOPPED: stored metadata only — the orchestrator will not create
    // zonal OS policy assignments (ACTIVE + UPSERT would fan out).
    add(
      GoogleOsConfigV2PolicyOrchestrator(
        localName: 'stopped',
        policyOrchestratorId: .literal('terradart-po'),
        action: .literal('UPSERT'),
        state: .literal('STOPPED'),
        orchestratedResource: OsConfigV2PolicyOrchestratorOrchestratedResource(
          osPolicyAssignmentV1Payload: .new(
            osPolicies: [
              .new(
                id: .literal('test-os-policy'),
                mode: .literal('VALIDATION'),
                resourceGroups: [
                  .new(
                    resources: [
                      .new(
                        id: .literal('resource-tf'),
                        file: .new(
                          content: .literal('file-content-tf'),
                          path: .literal('file-path-tf-1'),
                          state: .literal('PRESENT'),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
            instanceFilter: .new(
              inventories: [.new(osShortName: .literal('windows-10'))],
            ),
            rollout: .new(
              disruptionBudget: .new(percent: .literal(100)),
              minWaitDuration: .literal('60s'),
            ),
          ),
        ),
        deletionPolicy: .literal('DELETE'),
        dependsOn: apiDeps,
      ),
    );
  }
}

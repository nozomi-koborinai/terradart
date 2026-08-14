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
        defaultAdmissionRule: BinaryAuthorizationPolicyDefaultAdmissionRule(
          evaluationMode: TfArg.literal(
            BinaryAuthorizationPolicyDefaultAdmissionRuleEvaluationMode
                .alwaysAllow,
          ),
          enforcementMode: TfArg.literal(
            BinaryAuthorizationPolicyDefaultAdmissionRuleEnforcementMode
                .enforcedBlockAndAuditLog,
          ),
        ),
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

    // The image-signing service account granted the attestor viewer role.
    // Create it in-stack — a member pointing at a non-existent SA fails apply
    // with "setIamPolicy: service account does not exist".
    final ciSigner = add(
      GoogleServiceAccount(
        localName: 'ci_signer',
        accountId: TfArg.literal('ci-signer'),
        displayName: TfArg.literal('CI image signer'),
      ),
    );

    add(
      GoogleBinaryAuthorizationAttestorIamMember(
        localName: 'ci_attestor_viewer',
        attestor: TfArg.ref(attestor.nameRef),
        role: TfArg.literal('roles/viewer'),
        member: TfArg.ref(ciSigner.iamMember),
        dependsOn: [
          ResourceDependency(attestor),
          ResourceDependency(ciSigner),
        ],
      ),
    );

    add(
      GoogleOsConfigOsPolicyAssignment(
        localName: 'baseline',
        name: TfArg.literal('baseline-policies'),
        location: TfArg.literal(zone),
        description: TfArg.literal('Validation-mode shell probe for Linux VMs'),
        instanceFilter: OsConfigOsPolicyAssignmentInstanceFilter(
          all: TfArg.literal(true),
        ),
        osPolicies: [
          OsConfigOsPolicyAssignmentOsPolicies(
            id: TfArg.literal('hello-probe'),
            mode: TfArg.literal(
              OsConfigOsPolicyAssignmentOsPoliciesMode.validation,
            ),
            resourceGroups: [
              OsConfigOsPolicyAssignmentOsPoliciesResourceGroups(
                // `resources` stays an opaque literal — deliberately excluded
                // from typed derivation (see the override's
                // `nestedTypeExcludes`); the field is still required +
                // repeated, matching the real schema.
                resources: TfArg.literal([
                  {
                    'id': 'hello-script',
                    'exec': {
                      'validate': {
                        'interpreter': 'SHELL',
                        'script': 'echo hello-from-os-config',
                      },
                    },
                  },
                ]),
              ),
            ],
          ),
        ],
        rollout: OsConfigOsPolicyAssignmentRollout(
          disruptionBudget: OsConfigOsPolicyAssignmentRolloutDisruptionBudget(
            percent: TfArg.literal(100),
          ),
          minWaitDuration: TfArg.literal('0s'),
        ),
        skipAwaitRollout: TfArg.literal(true),
        dependsOn: apiDeps,
      ),
    );

    add(
      GoogleOsConfigPatchDeployment(
        localName: 'security_patches',
        patchDeploymentId: TfArg.literal('security-patches'),
        description: TfArg.literal('One-time security patch window'),
        instanceFilter: OsConfigPatchDeploymentInstanceFilter(
          all: TfArg.literal(true),
        ),
        patchConfig: OsConfigPatchDeploymentPatchConfig(
          migInstancesAllowed: TfArg.literal(true),
          rebootConfig: TfArg.literal(
            OsConfigPatchDeploymentPatchConfigRebootConfig.defaultCase,
          ),
        ),
        schedule: OsConfigPatchDeploymentOneTimeSchedule(
          executeTime: TfArg.literal('2030-01-01T02:00:00Z'),
        ),
        dependsOn: apiDeps,
      ),
    );

    // STOPPED: stored metadata only — the orchestrator will not create
    // zonal OS policy assignments (ACTIVE + UPSERT would fan out).
    add(
      GoogleOsConfigV2PolicyOrchestrator(
        localName: 'stopped',
        policyOrchestratorId: TfArg.literal('terradart-po'),
        action: TfArg.literal('UPSERT'),
        state: TfArg.literal('STOPPED'),
        orchestratedResource: OsConfigV2PolicyOrchestratorOrchestratedResource(
          osPolicyAssignmentV1Payload:
              OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1Payload(
            osPolicies: [
              OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicies(
                id: TfArg.literal('test-os-policy'),
                mode: TfArg.literal('VALIDATION'),
                resourceGroups: [
                  OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroups(
                    resources: TfArg.literal([
                      {
                        'id': 'resource-tf',
                        'file': {
                          'content': 'file-content-tf',
                          'path': 'file-path-tf-1',
                          'state': 'PRESENT',
                        },
                      },
                    ]),
                  ),
                ],
              ),
            ],
            instanceFilter:
                OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadInstanceFilter(
              inventories: [
                OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadInstanceFilterInventories(
                  osShortName: TfArg.literal('windows-10'),
                ),
              ],
            ),
            rollout:
                OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadRollout(
              disruptionBudget:
                  OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadRolloutDisruptionBudget(
                percent: TfArg.literal(100),
              ),
              minWaitDuration: TfArg.literal('60s'),
            ),
          ),
        ),
        deletionPolicy: TfArg.literal('DELETE'),
        dependsOn: apiDeps,
      ),
    );
  }
}

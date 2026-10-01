/// Access Context Manager quickstart — VPC Service Controls core chain.
///
/// Provisions an organization-scoped access policy, a geo access level, a
/// service perimeter restricting Storage, a dedicated dry-run perimeter
/// with an additive spec resource (placeholder project number), a
/// dedicated access level with an additive condition (not attached to
/// the Storage perimeter), a cross-org authorized-orgs descriptor
/// (placeholder org numbers), apply-excluded leftover attachments
/// (bulk levels/perimeters, live resource, ingress/egress, GCP user
/// access binding), and a policy IAM member. The policy `parent` reads
/// `ops_organization_id` (Terraform variable — apply needs a real
/// organization id). The dry-run attachment does not change live
/// `status` evaluation.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/access_context_manager.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';
import 'package:terradart_time/terradart_time.dart';

final class AccessControlsStack extends Stack {
  AccessControlsStack({required String projectId})
    : super(
        providers: [
          GoogleProvider(project: projectId, region: 'us-central1'),
          const TimeProvider(),
        ],
      ) {
    // Declared here so the TfArg.variable references below resolve;
    // the values themselves arrive at `terraform apply -var` time.
    addVariable('ops_organization_id', const TfVariable(type: 'string'));

    final apiDeps = Apis.enable(
      this,
      barrels: [Barrels.accessContextManager],
      propagationDelay: const Duration(seconds: 60),
    );

    final policy = add(
      GoogleAccessContextManagerAccessPolicy(
        localName: 'org_policy',
        parent: TfArg.expression('organizations/\${var.ops_organization_id}'),
        title: .literal('terradart-quickstart-policy'),
        dependsOn: apiDeps,
      ),
    );

    final usOnly = add(
      GoogleAccessContextManagerAccessLevel(
        localName: 'us_only',
        name: .literal('us_only'),
        parent: .ref(policy.name),
        title: .literal('US-only access'),
        definition: .basic(
          AccessContextManagerAccessLevelBasic(
            conditions: [
              AccessContextManagerAccessLevelConditions(
                regions: .literal(['US']),
              ),
            ],
          ),
        ),
        dependsOn: [ResourceDependency(policy)],
      ),
    );

    add(
      GoogleAccessContextManagerServicePerimeter(
        localName: 'storage_perimeter',
        name: .literal('storage_perimeter'),
        parent: .ref(policy.name),
        title: .literal('Restrict Storage to US-only clients'),
        status: AccessContextManagerServicePerimeterStatus(
          resources: .literal(['projects/$projectId']),
          restrictedServices: .literal(['storage.googleapis.com']),
          accessLevels: .literal([usOnly.nameRef.interpolation]),
        ),
        dependsOn: [ResourceDependency(policy), ResourceDependency(usOnly)],
      ),
    );

    // Dedicated dry-run perimeter. Not the live Storage perimeter, so
    // the additive spec resource does not change status evaluation.
    // Hashicorp: ignore_changes on spec.resources so the two resources
    // do not fight.
    final dryRun = add(
      GoogleAccessContextManagerServicePerimeter(
        localName: 'storage_dry_run',
        name: .literal('storage_dry_run'),
        parent: .ref(policy.name),
        title: .literal('Storage dry-run perimeter'),
        useExplicitDryRunSpec: .literal(true),
        spec: AccessContextManagerServicePerimeterSpec(
          restrictedServices: .literal(['storage.googleapis.com']),
        ),
        lifecycle: const LifecycleOptions(
          ignoreChanges: [
            'spec[0].resources',
            'spec[0].ingress_policies',
            'spec[0].egress_policies',
          ],
        ),
        dependsOn: [ResourceDependency(policy)],
      ),
    );

    add(
      GoogleAccessContextManagerServicePerimeterDryRunResource(
        localName: 'dry_run_project',
        perimeterName: dryRun.ref,
        resource: .literal('projects/987654321'),
        deletionPolicy: .literal('DELETE'),
        dependsOn: [ResourceDependency(dryRun)],
      ),
    );

    // Dedicated access level for the additive condition. Not attached
    // to the Storage perimeter, so the condition does not change
    // perimeter evaluation. Hashicorp: ignore_changes on inline
    // conditions so the two resources do not fight.
    final chromeos = add(
      GoogleAccessContextManagerAccessLevel(
        localName: 'chromeos_no_lock',
        name: .literal('chromeos_no_lock'),
        parent: .ref(policy.name),
        title: .literal('chromeos_no_lock'),
        definition: .basic(
          AccessContextManagerAccessLevelBasic(
            conditions: [
              AccessContextManagerAccessLevelConditions(
                regions: .literal(['US']),
              ),
            ],
          ),
        ),
        lifecycle: const LifecycleOptions(
          ignoreChanges: ['basic[0].conditions'],
        ),
        dependsOn: [ResourceDependency(policy)],
      ),
    );

    add(
      GoogleAccessContextManagerAccessLevelCondition(
        localName: 'chromeos_condition',
        accessLevel: chromeos.ref,
        ipSubnetworks: .literal(['192.0.4.0/24']),
        members: .literal(['user:test@google.com', 'user:test2@google.com']),
        negate: .literal(false),
        devicePolicy: AccessContextManagerAccessLevelConditionDevicePolicy(
          requireScreenLock: .literal(false),
          requireAdminApproval: .literal(false),
          requireCorpOwned: .literal(true),
          osConstraints: [
            AccessContextManagerAccessLevelConditionOsConstraints(
              osType: .literal(
                AccessContextManagerAccessLevelConditionOsType.desktopChromeOs,
              ),
            ),
          ],
        ),
        regions: .literal(['IT', 'US']),
        deletionPolicy: .literal('DELETE'),
        dependsOn: [ResourceDependency(chromeos)],
      ),
    );

    add(
      GoogleAccessContextManagerAccessPolicyIamMember(
        localName: 'policy_viewer',
        accessPolicy: policy.ref,
        role: .literal('roles/accesscontextmanager.policyViewer'),
        member: .group('security-admins@example.com'),
        dependsOn: [ResourceDependency(policy)],
      ),
    );

    // Cross-org trust metadata only. Placeholder org numbers — creating
    // this does not evaluate traffic or grant live access.
    add(
      GoogleAccessContextManagerAuthorizedOrgsDesc(
        localName: 'demo_orgs',
        parent: .literal('accessPolicies/${policy.name.interpolation}'),
        name: .literal(
          'accessPolicies/${policy.name.interpolation}'
          '/authorizedOrgsDescs/terradart_desc',
        ),
        orgs: .literal(['organizations/12345']),
        authorizationType: .literal(.trust),
        assetType: .literal(.credentialStrength),
        authorizationDirection: .literal(.to),
        deletionPolicy: .literal('DELETE'),
        dependsOn: [ResourceDependency(policy)],
      ),
    );

    // Coverage-only factories. Bulk replace + attachments use
    // placeholders; see the README's "Before you apply" section.
    add(
      GoogleAccessContextManagerAccessLevels(
        localName: 'bulk_levels',
        parent: .ref(policy.name),
        accessLevels: [
          AccessContextManagerAccessLevels(
            name: .literal(
              'accessPolicies/${policy.name.interpolation}'
              '/accessLevels/bulk_eu',
            ),
            title: .literal('bulk_eu'),
            basic: AccessContextManagerAccessLevelsBasic(
              conditions: [
                AccessContextManagerAccessLevelsConditions(
                  regions: .literal(['DE']),
                ),
              ],
            ),
          ),
        ],
        dependsOn: [ResourceDependency(policy)],
      ),
    );

    add(
      GoogleAccessContextManagerServicePerimeters(
        localName: 'bulk_perimeters',
        parent: .ref(policy.name),
        servicePerimeters: [
          AccessContextManagerServicePerimeters(
            name: .literal(
              'accessPolicies/${policy.name.interpolation}'
              '/servicePerimeters/bulk_storage',
            ),
            title: .literal('bulk_storage'),
          ),
        ],
        dependsOn: [ResourceDependency(policy)],
      ),
    );

    final attach = add(
      GoogleAccessContextManagerServicePerimeter(
        localName: 'attach_perimeter',
        name: .literal('attach_perimeter'),
        parent: .ref(policy.name),
        title: .literal('Attachment perimeter'),
        status: AccessContextManagerServicePerimeterStatus(
          restrictedServices: .literal(['storage.googleapis.com']),
        ),
        lifecycle: const LifecycleOptions(
          ignoreChanges: [
            'status[0].resources',
            'status[0].ingress_policies',
            'status[0].egress_policies',
          ],
        ),
        dependsOn: [ResourceDependency(policy)],
      ),
    );

    add(
      GoogleAccessContextManagerServicePerimeterResource(
        localName: 'live_project',
        perimeterName: attach.ref,
        resource: .literal('projects/987654322'),
        deletionPolicy: .literal('DELETE'),
        dependsOn: [ResourceDependency(attach)],
      ),
    );

    add(
      GoogleAccessContextManagerServicePerimeterIngressPolicy(
        localName: 'attach_ingress',
        perimeter: attach.ref,
        title: .literal('allow identities'),
        ingressFrom:
            AccessContextManagerServicePerimeterIngressPolicyIngressFrom(
              identityType: .literal(
                AccessContextManagerServicePerimeterIngressPolicyIdentityType
                    .anyIdentity,
              ),
            ),
        dependsOn: [ResourceDependency(attach)],
      ),
    );

    add(
      GoogleAccessContextManagerServicePerimeterEgressPolicy(
        localName: 'attach_egress',
        perimeter: attach.ref,
        title: .literal('allow egress'),
        egressFrom: AccessContextManagerServicePerimeterEgressPolicyEgressFrom(
          identityType: .literal(
            AccessContextManagerServicePerimeterEgressPolicyIdentityType
                .anyIdentity,
          ),
        ),
        dependsOn: [ResourceDependency(attach)],
      ),
    );

    add(
      GoogleAccessContextManagerServicePerimeterDryRunIngressPolicy(
        localName: 'dry_run_ingress',
        perimeter: dryRun.ref,
        title: .literal('dry-run ingress'),
        ingressFrom:
            AccessContextManagerServicePerimeterDryRunIngressPolicyIngressFrom(
              identityType: .literal(
                AccessContextManagerServicePerimeterDryRunIngressPolicyIdentityType
                    .anyIdentity,
              ),
            ),
        dependsOn: [ResourceDependency(dryRun)],
      ),
    );

    add(
      GoogleAccessContextManagerServicePerimeterDryRunEgressPolicy(
        localName: 'dry_run_egress',
        perimeter: dryRun.ref,
        title: .literal('dry-run egress'),
        egressFrom:
            AccessContextManagerServicePerimeterDryRunEgressPolicyEgressFrom(
              identityType: .literal(
                AccessContextManagerServicePerimeterDryRunEgressPolicyIdentityType
                    .anyIdentity,
              ),
            ),
        dependsOn: [ResourceDependency(dryRun)],
      ),
    );

    add(
      GoogleAccessContextManagerIngressPolicy(
        localName: 'legacy_ingress',
        ingressPolicyName: .literal(
          '${attach.nameRef.interpolation}/ingressPolicies/legacy',
        ),
        resource: .literal('projects/987654323'),
        deletionPolicy: .literal('DELETE'),
        dependsOn: [ResourceDependency(attach)],
      ),
    );

    add(
      GoogleAccessContextManagerEgressPolicy(
        localName: 'legacy_egress',
        egressPolicyName: .literal(
          '${attach.nameRef.interpolation}/egressPolicies/legacy',
        ),
        resource: .literal('projects/987654323'),
        deletionPolicy: .literal('DELETE'),
        dependsOn: [ResourceDependency(attach)],
      ),
    );

    add(
      GoogleAccessContextManagerGcpUserAccessBinding(
        localName: 'group_binding',
        organizationId: TfArg.expression('\${var.ops_organization_id}'),
        subject: .groupKey(.literal('00abcde12345678')),
        accessLevels: .literal([usOnly.nameRef.interpolation]),
        deletionPolicy: .literal('DELETE'),
        dependsOn: [ResourceDependency(usOnly)],
      ),
    );
  }
}

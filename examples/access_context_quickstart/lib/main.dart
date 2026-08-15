/// Access Context Manager quickstart — VPC Service Controls core chain.
///
/// Provisions an organization-scoped access policy, a geo access level, a
/// service perimeter restricting Storage, a dedicated access level with an
/// additive condition (not attached to the perimeter), a cross-org
/// authorized-orgs descriptor (placeholder org numbers), and a policy IAM
/// member. The policy `parent` reads `ops_organization_id` (Terraform
/// variable — apply needs a real organization id). The additive condition
/// does not change the Storage perimeter.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/access_context_manager.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';
import 'package:terradart_google/time.dart';

final class AccessControlsStack extends Stack {
  AccessControlsStack({required String projectId})
      : super(
          providers: [
            GoogleProvider(project: projectId, region: 'us-central1'),
            const TimeProvider(),
          ],
        ) {
    final apiDeps = Apis.enable(
      this,
      barrels: [Barrels.accessContextManager],
      propagationDelay: const Duration(seconds: 60),
    );

    final policy = add(
      GoogleAccessContextManagerAccessPolicy(
        localName: 'org_policy',
        parent: TfArg.literal('organizations/\${var.ops_organization_id}'),
        title: TfArg.literal('terradart-quickstart-policy'),
        dependsOn: apiDeps,
      ),
    );

    final usOnly = add(
      GoogleAccessContextManagerAccessLevel(
        localName: 'us_only',
        name: TfArg.literal('us_only'),
        parent: TfArg.ref(policy.name),
        title: TfArg.literal('US-only access'),
        basic: AccessContextManagerAccessLevelBasic(
          conditions: [
            AccessContextManagerAccessLevelBasicConditions(
              regions: TfArg.literal(['US']),
            ),
          ],
        ),
        dependsOn: [ResourceDependency(policy)],
      ),
    );

    add(
      GoogleAccessContextManagerServicePerimeter(
        localName: 'storage_perimeter',
        name: TfArg.literal('storage_perimeter'),
        parent: TfArg.ref(policy.name),
        title: TfArg.literal('Restrict Storage to US-only clients'),
        status: AccessContextManagerServicePerimeterStatus(
          resources: TfArg.literal(['projects/$projectId']),
          restrictedServices: TfArg.literal(['storage.googleapis.com']),
          accessLevels: TfArg.literal([usOnly.nameRef.interpolation]),
        ),
        dependsOn: [
          ResourceDependency(policy),
          ResourceDependency(usOnly),
        ],
      ),
    );

    // Dedicated access level for the additive condition. Not attached
    // to the Storage perimeter, so the condition does not change
    // perimeter evaluation. Hashicorp: ignore_changes on inline
    // conditions so the two resources do not fight.
    final chromeos = add(
      GoogleAccessContextManagerAccessLevel(
        localName: 'chromeos_no_lock',
        name: TfArg.literal('chromeos_no_lock'),
        parent: TfArg.ref(policy.name),
        title: TfArg.literal('chromeos_no_lock'),
        basic: AccessContextManagerAccessLevelBasic(
          conditions: [
            AccessContextManagerAccessLevelBasicConditions(
              regions: TfArg.literal(['US']),
            ),
          ],
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
        accessLevel: TfArg.ref(chromeos.nameRef),
        ipSubnetworks: TfArg.literal(['192.0.4.0/24']),
        members: TfArg.literal([
          'user:test@google.com',
          'user:test2@google.com',
        ]),
        negate: TfArg.literal(false),
        devicePolicy: AccessContextManagerAccessLevelConditionDevicePolicy(
          requireScreenLock: TfArg.literal(false),
          requireAdminApproval: TfArg.literal(false),
          requireCorpOwned: TfArg.literal(true),
          osConstraints: [
            AccessContextManagerAccessLevelConditionDevicePolicyOsConstraints(
              osType: TfArg.literal(
                AccessContextManagerAccessLevelConditionDevicePolicyOsConstraintsOsType
                    .desktopChromeOs,
              ),
            ),
          ],
        ),
        regions: TfArg.literal(['IT', 'US']),
        deletionPolicy: TfArg.literal('DELETE'),
        dependsOn: [ResourceDependency(chromeos)],
      ),
    );

    add(
      GoogleAccessContextManagerAccessPolicyIamMember(
        localName: 'policy_viewer',
        name: TfArg.ref(policy.name),
        role: TfArg.literal('roles/accesscontextmanager.policyViewer'),
        member: TfArg.literal('group:security-admins@example.com'),
        dependsOn: [ResourceDependency(policy)],
      ),
    );

    // Cross-org trust metadata only. Placeholder org numbers — creating
    // this does not evaluate traffic or grant live access.
    add(
      GoogleAccessContextManagerAuthorizedOrgsDesc(
        localName: 'demo_orgs',
        parent: TfArg.literal(
          'accessPolicies/${policy.name.interpolation}',
        ),
        name: TfArg.literal(
          'accessPolicies/${policy.name.interpolation}'
          '/authorizedOrgsDescs/terradart_desc',
        ),
        orgs: TfArg.literal(['organizations/12345']),
        authorizationType: TfArg.literal(
          AccessContextManagerAuthorizedOrgsDescAuthorizationType.trust,
        ),
        assetType: TfArg.literal(
          AccessContextManagerAuthorizedOrgsDescAssetType.credentialStrength,
        ),
        authorizationDirection: TfArg.literal(
          AccessContextManagerAuthorizedOrgsDescAuthorizationDirection.to,
        ),
        deletionPolicy: TfArg.literal('DELETE'),
        dependsOn: [ResourceDependency(policy)],
      ),
    );
  }
}

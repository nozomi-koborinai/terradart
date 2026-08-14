/// Access Context Manager quickstart — VPC Service Controls core chain.
///
/// Provisions an organization-scoped access policy, a geo access level, a
/// service perimeter restricting Storage, a cross-org authorized-orgs
/// descriptor (placeholder org numbers), and a policy IAM member. The
/// policy `parent` reads `ops_organization_id` (Terraform variable —
/// apply needs a real organization id). Creating the descriptor does
/// not evaluate traffic.
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

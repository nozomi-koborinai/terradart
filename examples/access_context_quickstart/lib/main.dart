/// Access Context Manager quickstart — VPC Service Controls core chain.
///
/// Provisions an organization-scoped access policy, a geo access level, a
/// service perimeter restricting Storage, and a policy IAM member. The policy
/// `parent` reads `ops_organization_id` (Terraform variable — apply needs a
/// real organization id).
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
  }
}

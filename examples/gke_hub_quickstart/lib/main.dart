/// GKE Hub fleet quickstart -- an end-to-end terradart example.
///
/// Defines a `FleetStack` that enables the GKE Hub API and provisions fleet
/// team-management scaffolding **without any cluster**:
/// - a fleet scope (`terradart-scope`),
/// - a fleet namespace (`terradart-team`) inside that scope,
/// - a fleet-wide scope RBAC role binding (`VIEW` for a demo principal),
/// - a rollout sequence that stages upgrades across the project's fleet, and
/// - an additive IAM grant on the scope for a team-reader service account.
///
/// Scope, namespace, and rollout sequence are free fleet-management resources
/// (the project's default fleet is auto-created), so the stack creates and
/// destroys cleanly in a single project.
///
/// Exports the scope id as a typed Dart constant via `Stack.addConstant`.
/// Run `bin/infra.dart` to synth into `tf-out/`.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/container.dart';
import 'package:terradart_google/iam.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';

/// GKE Hub Stack: a fleet scope + namespace (no cluster).
final class FleetStack extends Stack {
  FleetStack({required String projectId})
    : super(
        providers: [GoogleProvider(project: projectId, region: 'us-central1')],
        appExports: AppExports('lib/generated/fleet_stack.app.dart'),
      ) {
    final apiGkeHub = add(
      GoogleProjectService(
        'api_gkehub',
        service: .literal('gkehub.googleapis.com'),
        disableOnDestroy: .literal(false),
      ),
    );

    final scope = add(
      GoogleGkeHubScope(
        'team_scope',
        scopeId: .literal('terradart-scope'),
        dependsOn: [apiGkeHub],
      ),
    );

    add(
      GoogleGkeHubNamespace(
        'team_namespace',
        scopeNamespaceId: .literal('terradart-team'),
        scopeId: scope.ref,
        scope: scope.ref,
        dependsOn: [scope],
      ),
    );

    // Fleet-wide Kubernetes RBAC on the scope. The `.user` principal is a K8s
    // name (not a GCP IAM member), so a demo email is enough — the official
    // provider sample uses the same pattern. `VIEW` is the least-privilege
    // predefined role; custom roles need rbacrolebindingactuation.
    add(
      GoogleGkeHubScopeRbacRoleBinding(
        'team_view',
        scopeId: scope.ref,
        scopeRbacRoleBindingId: .literal('terradart-scope-rbac'),
        principal: .user(.literal('terradart-fleet-rbac@example.com')),
        role: .predefinedRole(.view),
        dependsOn: [scope],
      ),
    );

    add(
      GoogleGkeHubRolloutSequence(
        'upgrade_sequence',
        rolloutSequenceId: .literal('terradart-rollout'),
        stages: [
          GkeHubRolloutSequenceStages(
            fleetProjects: .literal(['projects/$projectId']),
            // The API requires a soak duration per stage even though the
            // schema marks it optional ("rollout sequence stage must have
            // a soak duration").
            soakDuration: .literal('60s'),
          ),
        ],
        displayName: .literal('TerraDart upgrade sequence'),
        dependsOn: [apiGkeHub],
      ),
    );

    // Resource-scoped `setIamPolicy` validates that the member exists, so the
    // grantee is an in-stack service account rather than a fabricated group.
    final teamReader = add(
      GoogleServiceAccount(
        'team_reader',
        accountId: .literal('terradart-team-reader'),
        displayName: .literal('Fleet scope reader'),
      ),
    );

    add(
      GoogleGkeHubScopeIamMember(
        'team_scope_viewer',
        scope: scope.ref,
        role: .literal('roles/viewer'),
        member: teamReader.principal,
        dependsOn: [scope, teamReader],
      ),
    );

    // Literal scope id -- emitted as a Dart constant at synth time.
    addConstant('fleetScopeId', .ref(scope.scopeId));

    // Full scope resource name -- Terraform output only (computed).
    addOutput('fleet_scope_name', scope.id);
  }
}

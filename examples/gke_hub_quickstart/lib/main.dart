/// GKE Hub fleet quickstart -- an end-to-end terradart example.
///
/// Defines a `FleetStack` that enables the GKE Hub API and provisions fleet
/// team-management scaffolding **without any cluster**:
/// - a fleet scope (`terradart-scope`),
/// - a fleet namespace (`terradart-team`) inside that scope,
/// - a rollout sequence that stages upgrades across the project's fleet, and
/// - the Multi-Cluster Service Discovery hub feature (no membership needed).
///
/// Scope, namespace, rollout sequence, and MCS Discovery are free
/// fleet-management resources (the project's default fleet is auto-created),
/// so the stack creates and destroys cleanly in a single project.
///
/// Exports the scope id as a typed Dart constant via `Stack.addExport`.
/// Run `bin/infra.dart` to synth into `tf-out/`.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/container.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';

/// GKE Hub Stack: a fleet scope + namespace (no cluster).
final class FleetStack extends Stack {
  FleetStack({required String projectId})
      : super(
          providers: [
            GoogleProvider(project: projectId, region: 'us-central1'),
          ],
        ) {
    final apiGkeHub = add(
      GoogleProjectService(
        localName: 'api_gkehub',
        service: TfArg.literal('gkehub.googleapis.com'),
        disableOnDestroy: TfArg.literal(false),
      ),
    );

    add(
      GoogleGkeHubFeature(
        localName: 'mcsd',
        name: TfArg.literal('multiclusterservicediscovery'),
        location: TfArg.literal('global'),
        dependsOn: [ResourceDependency(apiGkeHub)],
      ),
    );

    final scope = add(
      GoogleGkeHubScope(
        localName: 'team_scope',
        scopeId: TfArg.literal('terradart-scope'),
        dependsOn: [ResourceDependency(apiGkeHub)],
      ),
    );

    add(
      GoogleGkeHubNamespace(
        localName: 'team_namespace',
        scopeNamespaceId: TfArg.literal('terradart-team'),
        scopeId: TfArg.literal('terradart-scope'),
        scope: TfArg.ref(scope.id),
        dependsOn: [ResourceDependency(scope)],
      ),
    );

    add(
      GoogleGkeHubRolloutSequence(
        localName: 'upgrade_sequence',
        rolloutSequenceId: TfArg.literal('terradart-rollout'),
        stages: TfArg.literal([
          {
            'fleet_projects': ['projects/$projectId'],
            // The API requires a soak duration per stage even though the
            // schema marks it optional ("rollout sequence stage must have
            // a soak duration").
            'soak_duration': '60s',
          },
        ]),
        displayName: TfArg.literal('TerraDart upgrade sequence'),
        dependsOn: [ResourceDependency(apiGkeHub)],
      ),
    );

    // Literal scope id -- emitted as a Dart constant at synth time.
    addExport('FLEET_SCOPE_ID', StringExport('terradart-scope'));

    // Full scope resource name -- Terraform output only (computed).
    addExport(
      'FLEET_SCOPE_NAME',
      ResourceIdExport(scope.id, emitTerraformOutput: true),
    );

    setAppExportsOutputPath('lib/generated/fleet_stack.app.dart');
  }
}

/// GKE quickstart — Wave 8 + 9 + 10 end-to-end example.
///
/// Provisions:
/// - API enablement via [Apis.required] (Compute, GKE, GKE Hub, GKE Backup);
/// - a custom-mode VPC + regional subnet;
/// - a regional GKE cluster (Backup for GKE agent enabled, default node
///   pool removed);
/// - a dedicated node pool on that cluster;
/// - the project default GKE Hub fleet + membership;
/// - backup/restore channels, backup + restore plans, and plan IAM members.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/compute.dart';
import 'package:terradart_google/container.dart';
import 'package:terradart_google/gke_backup.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';

final class GkeQuickstartStack extends Stack {
  GkeQuickstartStack({required String projectId})
      : super(
          providers: [
            GoogleProvider(project: projectId, region: 'asia-northeast1'),
          ],
        ) {
    const region = 'asia-northeast1';
    const clusterName = 'main-gke';

    final apisByEndpoint = <String, GoogleProjectService>{};
    for (final api in Apis.required(
      barrels: [Barrels.compute, Barrels.container, Barrels.gkeBackup],
    )) {
      final added = add(api);
      apisByEndpoint[added.argMap['service']!.toTfJson() as String] = added;
    }
    final apiCompute = apisByEndpoint['compute.googleapis.com']!;
    final apiContainer = apisByEndpoint['container.googleapis.com']!;
    final apiGkeHub = apisByEndpoint['gkehub.googleapis.com']!;
    final apiGkeBackup = apisByEndpoint['gkebackup.googleapis.com']!;

    final vpc = add(
      GoogleComputeNetwork(
        localName: 'main',
        name: TfArg.literal('gke-vpc'),
        autoCreateSubnetworks: TfArg.literal(false),
        routingMode: TfArg.literal(RoutingMode.regional),
        dependsOn: [ResourceDependency(apiCompute)],
      ),
    );

    final subnet = add(
      GoogleComputeSubnetwork(
        localName: 'gke',
        name: TfArg.literal('gke-subnet'),
        region: TfArg.literal(region),
        network: TfArg.ref(vpc.id),
        ipCidrRange: TfArg.literal('10.20.0.0/20'),
      ),
    );

    final cluster = add(
      GoogleContainerCluster(
        localName: 'main',
        name: TfArg.literal(clusterName),
        location: TfArg.literal(region),
        initialNodeCount: TfArg.literal(1),
        removeDefaultNodePool: TfArg.literal(true),
        network: TfArg.ref(vpc.nameRef),
        subnetwork: TfArg.ref(subnet.nameRef),
        // Backup for GKE (Wave 10) requires the agent addon on the cluster.
        addonsConfig: TfArg.literal({
          'gke_backup_agent_config': {
            'enabled': TfArg.literal(true),
          },
        }),
        dependsOn: [
          ResourceDependency(apiContainer),
          ResourceDependency(subnet),
        ],
      ),
    );

    add(
      GoogleContainerNodePool(
        localName: 'primary',
        name: TfArg.literal('primary-pool'),
        location: TfArg.literal(region),
        cluster: TfArg.ref(cluster.nameRef),
        nodeCount: TfArg.literal(1),
        dependsOn: [ResourceDependency(cluster)],
      ),
    );

    final fleet = add(
      GoogleGkeHubFleet(
        localName: 'default',
        displayName: TfArg.literal('Quickstart fleet'),
        dependsOn: [ResourceDependency(apiGkeHub)],
      ),
    );

    add(
      GoogleGkeHubMembership(
        localName: 'main',
        membershipId: TfArg.literal('main-cluster'),
        endpoint: TfArg.literal({
          'gke_cluster': {
            'resource_link': TfArg.ref(cluster.id),
          },
        }),
        authority: TfArg.literal({
          'issuer': TfArg.literal(
            'https://container.googleapis.com/v1/projects/$projectId/locations/$region/clusters/$clusterName',
          ),
        }),
        dependsOn: [
          ResourceDependency(fleet),
          ResourceDependency(cluster),
        ],
      ),
    );

    // ---- Wave 10: GKE Backup ------------------------------------------------

    add(
      GoogleGkeBackupBackupChannel(
        localName: 'default',
        name: TfArg.literal('default-backup-channel'),
        location: TfArg.literal(region),
        // The API requires the `projects/{project}` form, not a bare ID.
        destinationProject: TfArg.literal('projects/$projectId'),
        dependsOn: [ResourceDependency(apiGkeBackup)],
      ),
    );

    add(
      GoogleGkeBackupRestoreChannel(
        localName: 'default',
        name: TfArg.literal('default-restore-channel'),
        location: TfArg.literal(region),
        destinationProject: TfArg.literal('projects/$projectId'),
        dependsOn: [ResourceDependency(apiGkeBackup)],
      ),
    );

    final backupPlan = add(
      GoogleGkeBackupBackupPlan(
        localName: 'main',
        name: TfArg.literal('main-backup-plan'),
        location: TfArg.literal(region),
        cluster: TfArg.ref(cluster.id),
        backupSchedule: GkeBackupBackupPlanBackupSchedule(
          cronSchedule: TfArg.literal('0 3 * * *'),
        ),
        retentionPolicy: TfArg.literal({
          'backup_retain_days': TfArg.literal(7),
        }),
        dependsOn: [
          ResourceDependency(apiGkeBackup),
          ResourceDependency(cluster),
        ],
      ),
    );

    final restorePlan = add(
      GoogleGkeBackupRestorePlan(
        localName: 'main',
        name: TfArg.literal('main-restore-plan'),
        location: TfArg.literal(region),
        backupPlan: TfArg.ref(backupPlan.nameRef),
        cluster: TfArg.ref(cluster.id),
        restoreConfig: GkeBackupRestorePlanRestoreConfig(
          allNamespaces: TfArg.literal(true),
        ),
        dependsOn: [
          ResourceDependency(apiGkeBackup),
          ResourceDependency(backupPlan),
          ResourceDependency(cluster),
        ],
      ),
    );

    add(
      GoogleGkeBackupBackupPlanIamMember(
        localName: 'viewer',
        name: TfArg.ref(backupPlan.nameRef),
        location: TfArg.literal(region),
        role: TfArg.literal('roles/gkebackup.viewer'),
        member: TfArg.literal('group:platform-admins@example.com'),
      ),
    );

    add(
      GoogleGkeBackupRestorePlanIamMember(
        localName: 'restorer',
        name: TfArg.ref(restorePlan.nameRef),
        location: TfArg.literal(region),
        role: TfArg.literal('roles/gkebackup.restoreOperator'),
        member: TfArg.literal('group:platform-admins@example.com'),
      ),
    );
  }
}

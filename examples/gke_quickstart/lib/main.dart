/// GKE quickstart — Wave 8 + 9 + 10 end-to-end example.
///
/// Provisions:
/// - API enablement for Compute, GKE, GKE Hub, and GKE Backup;
/// - a custom-mode VPC + regional subnet;
/// - a regional GKE cluster with the default node pool removed;
/// - a dedicated node pool on that cluster;
/// - the project default GKE Hub fleet + membership;
/// - backup/restore channels, backup + restore plans, and a plan IAM member.
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

    final apiCompute = add(
      GoogleProjectService(
        localName: 'api_compute',
        service: TfArg.literal('compute.googleapis.com'),
        disableOnDestroy: TfArg.literal(false),
      ),
    );

    final apiContainer = add(
      GoogleProjectService(
        localName: 'api_container',
        service: TfArg.literal('container.googleapis.com'),
        disableOnDestroy: TfArg.literal(false),
      ),
    );

    final apiGkeHub = add(
      GoogleProjectService(
        localName: 'api_gkehub',
        service: TfArg.literal('gkehub.googleapis.com'),
        disableOnDestroy: TfArg.literal(false),
      ),
    );

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

    final apiGkeBackup = add(
      GoogleProjectService(
        localName: 'api_gkebackup',
        service: TfArg.literal('gkebackup.googleapis.com'),
        disableOnDestroy: TfArg.literal(false),
      ),
    );

    add(
      GoogleGkeBackupBackupChannel(
        localName: 'default',
        name: TfArg.literal('default-backup-channel'),
        location: TfArg.literal(region),
        destinationProject: TfArg.literal(projectId),
        dependsOn: [ResourceDependency(apiGkeBackup)],
      ),
    );

    add(
      GoogleGkeBackupRestoreChannel(
        localName: 'default',
        name: TfArg.literal('default-restore-channel'),
        location: TfArg.literal(region),
        destinationProject: TfArg.literal(projectId),
        dependsOn: [ResourceDependency(apiGkeBackup)],
      ),
    );

    final backupPlan = add(
      GoogleGkeBackupBackupPlan(
        localName: 'main',
        name: TfArg.literal('main-backup-plan'),
        location: TfArg.literal(region),
        cluster: TfArg.ref(cluster.id),
        backupSchedule: TfArg.literal({
          'cron_schedule': TfArg.literal('0 3 * * *'),
        }),
        retentionPolicy: TfArg.literal({
          'backup_retain_days': TfArg.literal(7),
        }),
        dependsOn: [ResourceDependency(cluster)],
      ),
    );

    final restorePlan = add(
      GoogleGkeBackupRestorePlan(
        localName: 'main',
        name: TfArg.literal('main-restore-plan'),
        location: TfArg.literal(region),
        backupPlan: TfArg.ref(backupPlan.nameRef),
        cluster: TfArg.ref(cluster.id),
        restoreConfig: TfArg.literal({
          'all_namespaces': true,
        }),
        dependsOn: [
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

    add(
      GoogleGkeBackupBackupPlanIamBinding(
        localName: 'admin',
        name: TfArg.ref(backupPlan.nameRef),
        location: TfArg.literal(region),
        role: TfArg.literal('roles/gkebackup.admin'),
        members: TfArg.literal([
          'group:platform-admins@example.com',
        ]),
      ),
    );

    add(
      GoogleGkeBackupRestorePlanIamBinding(
        localName: 'admin',
        name: TfArg.ref(restorePlan.nameRef),
        location: TfArg.literal(region),
        role: TfArg.literal('roles/gkebackup.admin'),
        members: TfArg.literal([
          'group:platform-admins@example.com',
        ]),
      ),
    );
  }
}

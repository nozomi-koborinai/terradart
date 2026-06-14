/// GKE quickstart — Wave 8 + 9 + 10 end-to-end example.
///
/// Provisions:
/// - API enablement via [Apis.required] (Compute, GKE, GKE Hub, GKE Backup);
/// - a custom-mode VPC + regional subnet;
/// - a regional GKE cluster (Backup for GKE agent enabled, default node
///   pool removed);
/// - a dedicated node pool on that cluster;
/// - a GKE Hub membership enrolling the cluster in the project's
///   auto-created default fleet;
/// - a backup plan (+ schedule) and a restore plan, each with a
///   resource-scoped IAM binding to a dedicated service account.
///
/// Backup/restore *channels* are intentionally omitted: they connect a
/// source project to a *different* destination project, so they cannot
/// apply in a single standalone project (the API rejects source==dest).
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/compute.dart';
import 'package:terradart_google/container.dart';
import 'package:terradart_google/gke_backup.dart';
import 'package:terradart_google/iam.dart';
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
        // GKE clusters default `deletion_protection = true`, which makes
        // `terraform destroy` refuse to delete the cluster. This is a
        // short-lived smoke example, so opt out to keep teardown clean.
        deletionProtection: TfArg.literal(false),
        // The GKE Hub membership below requires the cluster to have Workload
        // Identity enabled; the workload pool is always `<project>.svc.id.goog`.
        workloadIdentityConfig: TfArg.literal({
          'workload_pool': TfArg.literal('$projectId.svc.id.goog'),
        }),
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

    // Every project has exactly one fleet, and it is auto-created on first
    // use of GKE Hub — creating `google_gke_hub_fleet` for the default fleet
    // fails with "Resource '.../fleets/default' already exists" (409). So we
    // skip the fleet resource and enroll the cluster directly; the membership
    // registers against the auto-created default fleet.
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
          ResourceDependency(apiGkeHub),
          ResourceDependency(cluster),
        ],
      ),
    );

    // ---- Wave 10: GKE Backup ------------------------------------------------

    // A dedicated service account is the IAM grantee for the backup/restore
    // plans below. Resource-scoped `setIamPolicy` validates that the member
    // exists, so binding a fabricated group (e.g. group:...@example.com)
    // fails with "Invalid argument"; an in-stack SA is a real principal.
    final backupOperator = add(
      GoogleServiceAccount(
        localName: 'backup_operator',
        accountId: TfArg.literal('gke-backup-operator'),
        displayName: TfArg.literal('GKE Backup operator'),
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
        // GKE Backup requires the plan to declare a backup scope; without one
        // the API rejects creation with INVALID_BACKUP_SCOPE. Back up every
        // namespace (plus secrets + volume data) — the canonical basic scope.
        backupConfig: TfArg.literal({
          'all_namespaces': TfArg.literal(true),
          'include_secrets': TfArg.literal(true),
          'include_volume_data': TfArg.literal(true),
        }),
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
        // The API requires the full backup-plan resource name
        // (`projects/.../locations/.../backupPlans/...`); the bare `name`
        // attribute is rejected with INVALID_FIELD. `id` is that full path.
        backupPlan: TfArg.ref(backupPlan.id),
        cluster: TfArg.ref(cluster.id),
        // Selecting namespaced resources (here: every namespace) requires the
        // restore mode for those resources to be set, otherwise the API
        // rejects creation with MISSING_NAMESPACED_RESOURCE_RESTORE_MODE.
        restoreConfig: GkeBackupRestorePlanRestoreConfig(
          allNamespaces: TfArg.literal(true),
          namespacedResourceRestoreMode:
              GkeBackupRestorePlanNamespacedResourceRestoreMode
                  .deleteAndRestore,
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
        member: TfArg.ref(backupOperator.iamMember),
        dependsOn: [ResourceDependency(backupOperator)],
      ),
    );

    add(
      GoogleGkeBackupRestorePlanIamMember(
        localName: 'restorer',
        name: TfArg.ref(restorePlan.nameRef),
        location: TfArg.literal(region),
        role: TfArg.literal('roles/gkebackup.restoreOperator'),
        member: TfArg.ref(backupOperator.iamMember),
        dependsOn: [ResourceDependency(backupOperator)],
      ),
    );
  }
}

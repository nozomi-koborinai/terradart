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
        'main',
        name: .literal('gke-vpc'),
        autoCreateSubnetworks: .literal(false),
        routingMode: .regional,
        dependsOn: [apiCompute],
      ),
    );

    final subnet = add(
      GoogleComputeSubnetwork(
        'gke',
        name: .literal('gke-subnet'),
        region: .literal(region),
        network: vpc.ref,
        ipCidrRange: .literal('10.20.0.0/20'),
      ),
    );

    final cluster = add(
      GoogleContainerCluster(
        'main',
        name: .literal(clusterName),
        location: .literal(region),
        initialNodeCount: .literal(1),
        removeDefaultNodePool: .literal(true),
        network: vpc.ref,
        subnetwork: subnet.ref,
        // GKE clusters default `deletion_protection = true`, which makes
        // `terraform destroy` refuse to delete the cluster. This is a
        // short-lived smoke example, so opt out to keep teardown clean.
        deletionProtection: .literal(false),
        // The GKE Hub membership below requires the cluster to have Workload
        // Identity enabled; the workload pool is always `<project>.svc.id.goog`.
        workloadIdentityConfig: ContainerClusterWorkloadIdentityConfig(
          workloadPool: .literal('$projectId.svc.id.goog'),
        ),
        // Backup for GKE (Wave 10) requires the agent addon on the cluster.
        addonsConfig: ContainerClusterAddonsConfig(
          gkeBackupAgentConfig: .new(enabled: .literal(true)),
        ),
        dependsOn: [apiContainer, subnet],
      ),
    );

    final primaryPool = add(
      GoogleContainerNodePool(
        'primary',
        name: .literal('primary-pool'),
        location: .literal(region),
        cluster: cluster.ref,
        nodeCount: .literal(1),
        dependsOn: [cluster],
      ),
    );

    // Every project has exactly one fleet, and it is auto-created on first
    // use of GKE Hub — creating `google_gke_hub_fleet` for the default fleet
    // fails with "Resource '.../fleets/default' already exists" (409). So we
    // skip the fleet resource and enroll the cluster directly; the membership
    // registers against the auto-created default fleet.
    final membership = add(
      GoogleGkeHubMembership(
        'main',
        membershipId: .literal('main-cluster'),
        endpoint: GkeHubMembershipEndpoint(
          gkeCluster: .new(resourceLink: cluster.ref),
        ),
        authority: GkeHubMembershipAuthority(
          issuer: .literal(
            'https://container.googleapis.com/v1/projects/$projectId/locations/$region/clusters/$clusterName',
          ),
        ),
        dependsOn: [
          apiGkeHub,
          cluster,
          // Wait for the node pool so the cluster isn't mid-operation when the
          // membership registers ("cluster is currently running another
          // operation").
          primaryPool,
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
        'backup_operator',
        accountId: .literal('gke-backup-operator'),
        displayName: .literal('GKE Backup operator'),
      ),
    );

    add(
      GoogleGkeHubMembershipIamMember(
        'membership_viewer',
        membership: .literal('main-cluster'),
        role: .literal('roles/viewer'),
        member: backupOperator.principal,
        dependsOn: [membership, backupOperator],
      ),
    );

    final backupPlan = add(
      GoogleGkeBackupBackupPlan(
        'main',
        name: .literal('main-backup-plan'),
        location: .literal(region),
        cluster: cluster.ref,
        backupSchedule: GkeBackupBackupPlanBackupSchedule(
          cronSchedule: .literal('0 3 * * *'),
        ),
        // GKE Backup requires the plan to declare a backup scope; without one
        // the API rejects creation with INVALID_BACKUP_SCOPE. Back up every
        // namespace (plus secrets + volume data) — the canonical basic scope.
        backupConfig: GkeBackupBackupPlanBackupConfig(
          scope: .allNamespaces(.literal(true)),
          includeSecrets: .literal(true),
          includeVolumeData: .literal(true),
        ),
        retentionPolicy: GkeBackupBackupPlanRetentionPolicy(
          backupRetainDays: .literal(7),
        ),
        dependsOn: [apiGkeBackup, cluster],
      ),
    );

    add(
      GoogleGkeBackupRestorePlan(
        'main',
        name: .literal('main-restore-plan'),
        location: .literal(region),
        // The API requires the full backup-plan resource name
        // (`projects/.../locations/.../backupPlans/...`); the bare `name`
        // attribute is rejected with INVALID_FIELD. `id` is that full path.
        backupPlan: backupPlan.ref,
        cluster: cluster.ref,
        // Selecting namespaced resources (here: every namespace) requires the
        // restore mode for those resources to be set, otherwise the API
        // rejects creation with MISSING_NAMESPACED_RESOURCE_RESTORE_MODE.
        restoreConfig: GkeBackupRestorePlanRestoreConfig(
          namespaces: .allNamespaces(.literal(true)),
          namespacedResourceRestoreMode: .deleteAndRestore,
          // Required whenever namespaced resources are selected; this demo has
          // no persistent volumes to restore.
          volumeDataRestorePolicy: .noVolumeDataRestoration,
        ),
        dependsOn: [apiGkeBackup, backupPlan, cluster],
      ),
    );

    add(
      GoogleGkeBackupBackupPlanIamMember(
        'viewer',
        backupPlan: backupPlan.ref,
        role: .literal('roles/gkebackup.viewer'),
        member: backupOperator.principal,
        dependsOn: [backupOperator],
      ),
    );

    // Restore-plan IAM is omitted: the backup-plan IAM above already
    // demonstrates GKE Backup resource-level IAM, and the restore-plan binding
    // is tracked in tool/example_debt.yaml (its role kept hitting "Invalid
    // argument" at the restore-plan resource scope).
  }
}

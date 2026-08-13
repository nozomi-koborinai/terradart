/// Workload Identity Federation trust-domain quickstart.
///
/// Creates a `TRUST_DOMAIN` pool plus a namespace and managed identity.
/// Federation-only pools cannot host namespaces — [mode] must be
/// [WorkloadIdentityPoolMode.trustDomain].
///
/// Real apply is skipped for `terradart-validate`
/// ([tool/apply_smoke_skip.yaml]): WIF pool / namespace / managed-identity
/// IDs are soft-deleted for ~30 days and Terraform create does not undelete,
/// so a fixed-id re-apply after destroy 409s. Distinct from skip-listed
/// `iam_quickstart` (that stack uses pool id `github-actions`, which collides
/// with apply-smoke CI auth).
///
/// Run `bin/infra.dart` to synth into `tf-out/`.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/iam.dart';
import 'package:terradart_google/provider.dart';

/// WIF trust-domain stack: pool + namespace + managed identity.
final class WifTrustDomainStack extends Stack {
  WifTrustDomainStack({required String projectId})
      : super(
          providers: [
            GoogleProvider(project: projectId, region: 'us-central1'),
          ],
        ) {
    const poolId = 'terradart-trust';
    const namespaceId = 'terradart-apps';
    const identityId = 'terradart-runner';

    final pool = add(
      GoogleIamWorkloadIdentityPool(
        localName: 'trust',
        workloadIdentityPoolId: TfArg.literal(poolId),
        displayName: TfArg.literal('TerraDart trust-domain pool'),
        description: TfArg.literal(
          'Smoke pool for namespace + managed identity factories.',
        ),
        mode: TfArg.literal(WorkloadIdentityPoolMode.trustDomain),
      ),
    );

    final namespace = add(
      GoogleIamWorkloadIdentityPoolNamespace(
        localName: 'apps',
        workloadIdentityPoolId: TfArg.literal(poolId),
        workloadIdentityPoolNamespaceId: TfArg.literal(namespaceId),
        description: TfArg.literal('TerraDart apps namespace'),
        dependsOn: [ResourceDependency(pool)],
      ),
    );

    add(
      GoogleIamWorkloadIdentityPoolManagedIdentity(
        localName: 'runner',
        workloadIdentityPoolId: TfArg.literal(poolId),
        workloadIdentityPoolNamespaceId: TfArg.literal(namespaceId),
        workloadIdentityPoolManagedIdentityId: TfArg.literal(identityId),
        description: TfArg.literal('TerraDart runner managed identity'),
        dependsOn: [ResourceDependency(namespace)],
      ),
    );
  }
}

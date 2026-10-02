/// Workload Identity Federation trust-domain quickstart.
///
/// Creates a `TRUST_DOMAIN` pool plus a namespace and managed identity.
/// Federation-only pools cannot host namespaces — [mode] must be
/// [WorkloadIdentityPoolMode.trustDomain].
///
/// Applying twice is gated: WIF pool / namespace / managed-identity ids are
/// soft-deleted for ~30 days and Terraform create does not undelete, so a
/// fixed-id re-apply after destroy 409s (see the README's "Before you
/// apply"). The pool id is distinct from `iam_quickstart`'s
/// (`github-actions`).
///
/// Run `bin/infra.dart` to synth into `tf-out/`.
library;

import 'package:terradart_google/iam.dart';
import 'package:terradart_google/provider.dart';

/// WIF trust-domain stack: pool + namespace + managed identity.
final class WifTrustDomainStack extends Stack {
  WifTrustDomainStack({required String projectId})
    : super(
        providers: [GoogleProvider(project: projectId, region: 'us-central1')],
      ) {
    const poolId = 'terradart-trust';
    const namespaceId = 'terradart-apps';
    const identityId = 'terradart-runner';

    final pool = add(
      GoogleIamWorkloadIdentityPool(
        'trust',
        workloadIdentityPoolId: .literal(poolId),
        displayName: .literal('TerraDart trust-domain pool'),
        description: .literal(
          'Smoke pool for namespace + managed identity factories.',
        ),
        mode: .trustDomain,
      ),
    );

    final namespace = add(
      GoogleIamWorkloadIdentityPoolNamespace(
        'apps',
        workloadIdentityPoolId: .literal(poolId),
        workloadIdentityPoolNamespaceId: .literal(namespaceId),
        description: .literal('TerraDart apps namespace'),
        dependsOn: [pool],
      ),
    );

    add(
      GoogleIamWorkloadIdentityPoolManagedIdentity(
        'runner',
        workloadIdentityPoolId: .literal(poolId),
        workloadIdentityPoolNamespaceId: .literal(namespaceId),
        workloadIdentityPoolManagedIdentityId: .literal(identityId),
        description: .literal('TerraDart runner managed identity'),
        dependsOn: [namespace],
      ),
    );
  }
}

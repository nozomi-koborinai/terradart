// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_iam_workload_identity_pool`.
const Set<String> _googleIamWorkloadIdentityPoolSensitive = <String>{};

/// Operating mode for a workload identity pool.
///
/// **Immutable after creation** — changing this on an existing pool will
/// be accepted at `terraform plan` time but rejected by the API at apply
/// time with `Error 400: Attempted to update an immutable field.`.
///
/// - [federationOnly] (default): pool federates external identities into
///   GCP via OIDC / SAML / AWS. No identity-format constraints; no
///   namespace / provider resources beyond the pool itself.
/// - [trustDomain]: pool issues identities to GCP workloads. Subjects
///   must follow `ns/<namespace>/sa/<workload>` format. Providers cannot
///   be created inside a trust-domain pool.
/// - [systemTrustDomain]: pool managed entirely by Google Cloud services
///   (GKE, Compute Engine managed identity). Users cannot create
///   providers or namespaces inside it.
enum WorkloadIdentityPoolMode implements TerraformEnum {
  federationOnly('FEDERATION_ONLY'),
  trustDomain('TRUST_DOMAIN'),
  systemTrustDomain('SYSTEM_TRUST_DOMAIN');

  const WorkloadIdentityPoolMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `attestation_rules` block of
/// `google_iam_workload_identity_pool` (derived from provider schema).
@immutable
final class IamWorkloadIdentityPoolAttestationRules {
  const IamWorkloadIdentityPoolAttestationRules({
    required this.googleCloudResource,
  });

  final TfArg<String> googleCloudResource;

  Map<String, Object?> encode() => {
    'google_cloud_resource': googleCloudResource.toTfJson(),
  };
}

/// Typed helper for the `inline_certificate_issuance_config` block of
/// `google_iam_workload_identity_pool` (derived from provider schema).
@immutable
final class IamWorkloadIdentityPoolInlineCertificateIssuanceConfig {
  const IamWorkloadIdentityPoolInlineCertificateIssuanceConfig({
    required this.ca,
    this.keyAlgorithm,
    this.lifetime,
    this.rotationWindowPercentage,
  });

  final IamWorkloadIdentityPoolInlineCertificateIssuanceConfigCa ca;

  final TfArg<
    IamWorkloadIdentityPoolInlineCertificateIssuanceConfigKeyAlgorithm
  >?
  keyAlgorithm;

  final TfArg<String>? lifetime;

  final TfArg<num>? rotationWindowPercentage;

  Map<String, Object?> encode() => {
    ...ca.encode(),
    'key_algorithm': ?keyAlgorithm?.toTfJson(),
    'lifetime': ?lifetime?.toTfJson(),
    'rotation_window_percentage': ?rotationWindowPercentage?.toTfJson(),
  };
}

/// Exactly one of `ca_pools`, `use_default_shared_ca` on the `inline_certificate_issuance_config` block of `google_iam_workload_identity_pool`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.caPools(...)`.
sealed class IamWorkloadIdentityPoolInlineCertificateIssuanceConfigCa {
  const IamWorkloadIdentityPoolInlineCertificateIssuanceConfigCa();

  /// Sets `ca_pools`.
  const factory IamWorkloadIdentityPoolInlineCertificateIssuanceConfigCa.caPools(
    TfArg<Map<String, String>> caPools,
  ) = IamWorkloadIdentityPoolInlineCertificateIssuanceConfigCaPools;

  /// Sets `use_default_shared_ca`.
  const factory IamWorkloadIdentityPoolInlineCertificateIssuanceConfigCa.useDefaultSharedCa(
    TfArg<bool> useDefaultSharedCa,
  ) = IamWorkloadIdentityPoolInlineCertificateIssuanceConfigCaUseDefaultSharedCa;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [IamWorkloadIdentityPoolInlineCertificateIssuanceConfigCa.caPools] choice: sets `ca_pools`.
final class IamWorkloadIdentityPoolInlineCertificateIssuanceConfigCaPools
    extends IamWorkloadIdentityPoolInlineCertificateIssuanceConfigCa {
  const IamWorkloadIdentityPoolInlineCertificateIssuanceConfigCaPools(
    this.caPools,
  );

  final TfArg<Map<String, String>> caPools;

  @override
  String get blockKey => 'ca_pools';

  @override
  Map<String, Object?> encode() => {'ca_pools': caPools.toTfJson()};
}

/// The [IamWorkloadIdentityPoolInlineCertificateIssuanceConfigCa.useDefaultSharedCa] choice: sets `use_default_shared_ca`.
final class IamWorkloadIdentityPoolInlineCertificateIssuanceConfigCaUseDefaultSharedCa
    extends IamWorkloadIdentityPoolInlineCertificateIssuanceConfigCa {
  const IamWorkloadIdentityPoolInlineCertificateIssuanceConfigCaUseDefaultSharedCa(
    this.useDefaultSharedCa,
  );

  final TfArg<bool> useDefaultSharedCa;

  @override
  String get blockKey => 'use_default_shared_ca';

  @override
  Map<String, Object?> encode() => {
    'use_default_shared_ca': useDefaultSharedCa.toTfJson(),
  };
}

/// `key_algorithm` — derived from the provider schema description.
enum IamWorkloadIdentityPoolInlineCertificateIssuanceConfigKeyAlgorithm
    implements TerraformEnum {
  rsa2048('RSA_2048'),
  rsa3072('RSA_3072'),
  rsa4096('RSA_4096'),
  ecdsaP256('ECDSA_P256'),
  ecdsaP384('ECDSA_P384');

  const IamWorkloadIdentityPoolInlineCertificateIssuanceConfigKeyAlgorithm(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `inline_trust_config` block of
/// `google_iam_workload_identity_pool` (derived from provider schema).
@immutable
final class IamWorkloadIdentityPoolInlineTrustConfig {
  const IamWorkloadIdentityPoolInlineTrustConfig({this.additionalTrustBundles});

  final List<IamWorkloadIdentityPoolInlineTrustConfigAdditionalTrustBundles>?
  additionalTrustBundles;

  Map<String, Object?> encode() => {
    if (additionalTrustBundles != null)
      'additional_trust_bundles': [
        for (final e in additionalTrustBundles!) e.encode(),
      ],
  };
}

/// Typed helper for the `inline_trust_config.additional_trust_bundles` block of
/// `google_iam_workload_identity_pool` (derived from provider schema).
@immutable
final class IamWorkloadIdentityPoolInlineTrustConfigAdditionalTrustBundles {
  const IamWorkloadIdentityPoolInlineTrustConfigAdditionalTrustBundles({
    this.trustDefaultSharedCa,
    required this.trustDomain,
    required this.trustAnchors,
  });

  final TfArg<bool>? trustDefaultSharedCa;

  final TfArg<String> trustDomain;

  final List<
    IamWorkloadIdentityPoolInlineTrustConfigAdditionalTrustBundlesTrustAnchors
  >
  trustAnchors;

  Map<String, Object?> encode() => {
    'trust_default_shared_ca': ?trustDefaultSharedCa?.toTfJson(),
    'trust_domain': trustDomain.toTfJson(),
    'trust_anchors': [for (final e in trustAnchors) e.encode()],
  };
}

/// Typed helper for the `inline_trust_config.additional_trust_bundles.trust_anchors` block of
/// `google_iam_workload_identity_pool` (derived from provider schema).
@immutable
final class IamWorkloadIdentityPoolInlineTrustConfigAdditionalTrustBundlesTrustAnchors {
  const IamWorkloadIdentityPoolInlineTrustConfigAdditionalTrustBundlesTrustAnchors({
    required this.pemCertificate,
  });

  final TfArg<String> pemCertificate;

  Map<String, Object?> encode() => {
    'pem_certificate': pemCertificate.toTfJson(),
  };
}

/// Factory wrapper for `google_iam_workload_identity_pool`.
///
/// Represents a collection of external workload identities. You can define IAM
/// policies to grant these identities access to Google Cloud resources.
///
/// This wrapper covers the pool resource itself. Pair with
/// [GoogleIamWorkloadIdentityPoolProvider] to configure the OIDC / AWS /
/// SAML / X.509 trust binding that actually federates external identities
/// (e.g. GitHub Actions) onto GCP service accounts without long-lived
/// JSON keys.
///
/// Required identity:
/// - [localName]: Terraform local name (the address segment after
///   `google_iam_workload_identity_pool.`).
/// - `workloadIdentityPoolId`: user-facing pool ID. Must be 4-32 chars,
///   `[a-z0-9-]`. The prefix `gcp-` is reserved by Google and is rejected.
///   Forms the final segment of the pool's resource name (e.g.
///   `projects/{n}/locations/global/workloadIdentityPools/{poolId}`).
///   Immutable after creation.
///
/// Example (CI/CD federation for GitHub Actions):
/// ```dart
/// final ciPool = GoogleIamWorkloadIdentityPool(
///   localName: 'ci',
///   workloadIdentityPoolId: TfArg.literal('github-actions'),
///   displayName: TfArg.literal('GitHub Actions CI/CD'),
///   description: TfArg.literal(
///     'WIF pool for the deploy pipeline; provider configured separately.',
///   ),
/// );
/// ```
///
/// Composition pattern: extends `Resource`
/// for runtime behavior.
final class GoogleIamWorkloadIdentityPool extends Resource {
  static const String tfType = 'google_iam_workload_identity_pool';

  GoogleIamWorkloadIdentityPool({
    required super.localName,
    required TfArg<String> workloadIdentityPoolId,
    TfArg<String>? displayName,
    TfArg<String>? description,
    TfArg<bool>? disabled,
    TfArg<WorkloadIdentityPoolMode>? mode,
    TfArg<String>? project,
    List<IamWorkloadIdentityPoolAttestationRules>? attestationRules,
    IamWorkloadIdentityPoolInlineCertificateIssuanceConfig?
    inlineCertificateIssuanceConfig,
    IamWorkloadIdentityPoolInlineTrustConfig? inlineTrustConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'workload_identity_pool_id': workloadIdentityPoolId,
           'display_name': ?displayName,
           'description': ?description,
           'disabled': ?disabled,
           'mode': ?mode,
           'project': ?project,
           if (attestationRules != null)
             'attestation_rules': TfArg.literal([
               for (final e in attestationRules) e.encode(),
             ]),
           if (inlineCertificateIssuanceConfig != null)
             'inline_certificate_issuance_config': TfArg.literal(
               inlineCertificateIssuanceConfig.encode(),
             ),
           if (inlineTrustConfig != null)
             'inline_trust_config': TfArg.literal(inlineTrustConfig.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleIamWorkloadIdentityPoolSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleIamWorkloadIdentityPool>`.
  RefTo<GoogleIamWorkloadIdentityPool> get ref => RefTo.of(this);

  /// Reference to `id` attribute (full path
  /// `projects/{project}/locations/global/workloadIdentityPools/{poolId}`).
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `name` attribute — same shape as [id] but uses the
  /// project number (not the project ID) and is what downstream
  /// `google_iam_workload_identity_pool_provider` resources expect as
  /// their `workload_identity_pool_id` reference.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `state` attribute — lifecycle state of the pool
  /// (`ACTIVE` or `DELETED`). Soft-deleted pools are permanently
  /// removed after ~30 days.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');
}

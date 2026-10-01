// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/google_iam_workload_identity_pool.dart'
    show GoogleIamWorkloadIdentityPool;

/// Sensitive field paths for `google_iam_workload_identity_pool_managed_identity`.
const Set<String> _googleIamWorkloadIdentityPoolManagedIdentitySensitive =
    <String>{};

/// Typed helper for the `attestation_rules` block of
/// `google_iam_workload_identity_pool_managed_identity` (derived from provider schema).
@immutable
final class IamWorkloadIdentityPoolManagedIdentityAttestationRules {
  const IamWorkloadIdentityPoolManagedIdentityAttestationRules({
    required this.googleCloudResource,
  });

  final TfArg<String> googleCloudResource;

  Map<String, Object?> encode() => {
    'google_cloud_resource': googleCloudResource.toTfJson(),
  };
}

/// Factory wrapper for `google_iam_workload_identity_pool_managed_identity`.
///
/// Represents a managed identity for a workload identity pool namespace.
///
/// Workload Identity Federation **managed identity** — a named identity
/// under a [GoogleIamWorkloadIdentityPoolNamespace] in a trust-domain
/// pool. Optional `attestationRules` are structured maps (resource
/// names of Compute / GKE workloads allowed to receive this identity).
///
/// **Cost:** gcp-cost: no Cloud Billing Catalog SKU for IAM Workload
/// Identity Federation managed identities after list_services /
/// list_skus. billing-behavior: identity metadata is free config;
/// creating one does not issue tokens or attach compute.
///
/// Example:
/// ```dart
/// GoogleIamWorkloadIdentityPoolManagedIdentity(
///   'runner',
///   workloadIdentityPoolId: .literal('terradart-trust'),
///   workloadIdentityPoolNamespaceId: TfArg.literal('terradart-apps'),
///   workloadIdentityPoolManagedIdentityId:
///       TfArg.literal('terradart-runner'),
/// );
/// ```
final class GoogleIamWorkloadIdentityPoolManagedIdentity extends Resource {
  static const String tfType =
      'google_iam_workload_identity_pool_managed_identity';

  GoogleIamWorkloadIdentityPoolManagedIdentity(
    super.localName, {
    required RefTo<GoogleIamWorkloadIdentityPool> workloadIdentityPoolId,
    required TfArg<String> workloadIdentityPoolNamespaceId,
    required TfArg<String> workloadIdentityPoolManagedIdentityId,
    TfArg<String>? description,
    TfArg<bool>? disabled,
    List<IamWorkloadIdentityPoolManagedIdentityAttestationRules>?
    attestationRules,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'workload_identity_pool_id': workloadIdentityPoolId.encodeAs(
             'workload_identity_pool_id',
           ),
           'workload_identity_pool_namespace_id':
               workloadIdentityPoolNamespaceId,
           'workload_identity_pool_managed_identity_id':
               workloadIdentityPoolManagedIdentityId,
           'description': ?description,
           'disabled': ?disabled,
           if (attestationRules != null)
             'attestation_rules': TfArg.literal([
               for (final e in attestationRules) e.encode(),
             ]),
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleIamWorkloadIdentityPoolManagedIdentitySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleIamWorkloadIdentityPoolManagedIdentity>`.
  RefTo<GoogleIamWorkloadIdentityPoolManagedIdentity> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `disabled` attribute.
  TfRef<bool> get disabled => TfRef.attribute<bool>(this, 'disabled');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `workload_identity_pool_id` attribute.
  TfRef<String> get workloadIdentityPoolId =>
      TfRef.attribute<String>(this, 'workload_identity_pool_id');

  /// Reference to `workload_identity_pool_managed_identity_id` attribute.
  TfRef<String> get workloadIdentityPoolManagedIdentityId =>
      TfRef.attribute<String>(
        this,
        'workload_identity_pool_managed_identity_id',
      );

  /// Reference to `workload_identity_pool_namespace_id` attribute.
  TfRef<String> get workloadIdentityPoolNamespaceId =>
      TfRef.attribute<String>(this, 'workload_identity_pool_namespace_id');
}

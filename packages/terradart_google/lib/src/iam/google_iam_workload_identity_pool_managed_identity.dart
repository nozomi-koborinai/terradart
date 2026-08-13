// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_iam_workload_identity_pool_managed_identity`.
const Set<String> _googleIamWorkloadIdentityPoolManagedIdentitySensitive =
    <String>{};

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
///   localName: 'runner',
///   workloadIdentityPoolId: TfArg.literal('terradart-trust'),
///   workloadIdentityPoolNamespaceId: TfArg.literal('terradart-apps'),
///   workloadIdentityPoolManagedIdentityId:
///       TfArg.literal('terradart-runner'),
/// );
/// ```
final class GoogleIamWorkloadIdentityPoolManagedIdentity extends Resource {
  static const String tfType =
      'google_iam_workload_identity_pool_managed_identity';

  GoogleIamWorkloadIdentityPoolManagedIdentity({
    required super.localName,
    required TfArg<String> workloadIdentityPoolId,
    required TfArg<String> workloadIdentityPoolNamespaceId,
    required TfArg<String> workloadIdentityPoolManagedIdentityId,
    TfArg<String>? description,
    TfArg<bool>? disabled,
    TfArg<List<Map<String, dynamic>>>? attestationRules,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'workload_identity_pool_id': workloadIdentityPoolId,
           'workload_identity_pool_namespace_id':
               workloadIdentityPoolNamespaceId,
           'workload_identity_pool_managed_identity_id':
               workloadIdentityPoolManagedIdentityId,
           if (description != null) 'description': description,
           if (disabled != null) 'disabled': disabled,
           if (attestationRules != null) 'attestation_rules': attestationRules,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleIamWorkloadIdentityPoolManagedIdentitySensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');
}

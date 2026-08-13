// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_iam_workload_identity_pool_namespace`.
const Set<String> _googleIamWorkloadIdentityPoolNamespaceSensitive = <String>{};

/// Factory wrapper for `google_iam_workload_identity_pool_namespace`.
///
/// Represents a namespace for a workload identity pool. Namespaces are used to
/// segment identities within the pool.
///
/// Workload Identity Federation **namespace** — segments identities
/// inside a [GoogleIamWorkloadIdentityPool] that uses
/// [WorkloadIdentityPoolMode.trustDomain]. Federation-only pools cannot
/// host namespaces.
///
/// **Cost:** gcp-cost: no Cloud Billing Catalog SKU for IAM Workload
/// Identity Federation namespaces after list_services / list_skus.
/// billing-behavior: namespace metadata is free identity config;
/// creating one does not issue tokens or attach compute.
///
/// Example:
/// ```dart
/// GoogleIamWorkloadIdentityPoolNamespace(
///   localName: 'apps',
///   workloadIdentityPoolId: TfArg.literal('terradart-trust'),
///   workloadIdentityPoolNamespaceId: TfArg.literal('terradart-apps'),
/// );
/// ```
final class GoogleIamWorkloadIdentityPoolNamespace extends Resource {
  static const String tfType = 'google_iam_workload_identity_pool_namespace';

  GoogleIamWorkloadIdentityPoolNamespace({
    required super.localName,
    required TfArg<String> workloadIdentityPoolId,
    required TfArg<String> workloadIdentityPoolNamespaceId,
    TfArg<String>? description,
    TfArg<bool>? disabled,
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
           if (description != null) 'description': description,
           if (disabled != null) 'disabled': disabled,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleIamWorkloadIdentityPoolNamespaceSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `owner_service` attribute.
  TfRef<List<Map<String, Object?>>> get ownerService =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'owner_service');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');
}

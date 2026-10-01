// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_storage_pool.dart'
    show GoogleComputeStoragePool;

/// Sensitive field paths for `google_compute_storage_pool_iam_policy`.
const Set<String> _googleComputeStoragePoolIamPolicySensitive = <String>{};

/// Factory wrapper for `google_compute_storage_pool_iam_policy`.
///
/// Authoritative IAM policy for a Compute Engine storage pool.
///
/// `policy_data` replaces the entire IAM policy, overwriting grants made
/// outside Terraform. Prefer [GoogleComputeStoragePoolIamMember] for single-principal grants.
final class GoogleComputeStoragePoolIamPolicy extends Resource {
  static const String tfType = 'google_compute_storage_pool_iam_policy';

  GoogleComputeStoragePoolIamPolicy({
    required super.localName,
    required RefTo<GoogleComputeStoragePool> storagePool,
    required TfArg<String> policyData,
    TfArg<String>? zone,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': storagePool.encodeAs('name'),
           'policy_data': policyData,
           'zone': ?(zone ?? storagePool.alsoAs('zone')),
           'project': ?(project ?? storagePool.alsoAs('project')),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleComputeStoragePoolIamPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeStoragePoolIamPolicy>`.
  RefTo<GoogleComputeStoragePoolIamPolicy> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyDataRef =>
      TfRef.attribute<String>(this, 'policy_data');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `zone` attribute.
  TfRef<String> get zoneRef => TfRef.attribute<String>(this, 'zone');
}

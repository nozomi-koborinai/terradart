// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_cloud_identity_group_transitive_memberships`.
const Set<String> _googleCloudIdentityGroupTransitiveMembershipsSensitive =
    <String>{};

/// Factory wrapper for `google_cloud_identity_group_transitive_memberships`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleCloudIdentityGroupTransitiveMemberships extends Data {
  static const String tfType =
      'google_cloud_identity_group_transitive_memberships';

  DataGoogleCloudIdentityGroupTransitiveMemberships({
    required super.localName,
    required TfArg<String> group,
  }) : super(terraformType: tfType, argMap: {'group': group});

  @override
  Set<String> get sensitiveFields =>
      _googleCloudIdentityGroupTransitiveMembershipsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `memberships` attribute.
  TfRef<List<Map<String, Object?>>> get memberships =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'memberships');
}

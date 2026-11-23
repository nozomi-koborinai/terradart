// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../identity/google_cloud_identity_policy.dart';

/// Sensitive field paths for `google_cloud_identity_policy`.
const Set<String> _googleCloudIdentityPolicySensitive = <String>{};

/// Factory wrapper for `google_cloud_identity_policy`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleCloudIdentityPolicy extends Data {
  static const String tfType = 'google_cloud_identity_policy';

  DataGoogleCloudIdentityPolicy(
    super.localName, {
    required TfArg<String> name,
    super.provider,
    super.timeouts,
  }) : super(terraformType: tfType, argMap: {'name': name});

  @override
  Set<String> get sensitiveFields => _googleCloudIdentityPolicySensitive;

  /// A reference to the `google_cloud_identity_policy` this data source reads, for
  /// arguments typed `RefTo<GoogleCloudIdentityPolicy>`.
  RefTo<GoogleCloudIdentityPolicy> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `customer` attribute.
  TfRef<String> get customer => TfRef.attribute<String>(this, 'customer');

  /// Reference to `policy_query` attribute.
  TfRef<List<Map<String, Object?>>> get policyQuery =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'policy_query');

  /// Reference to `setting` attribute.
  TfRef<String> get setting => TfRef.attribute<String>(this, 'setting');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');
}

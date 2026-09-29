// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_cloud_identity_policy`.
const Set<String> _googleCloudIdentityPolicySensitive = <String>{};

/// Typed helper for the `policy_query` block of
/// `google_cloud_identity_policy` (derived from provider schema).
@immutable
final class CloudIdentityPolicyPolicyQuery {
  const CloudIdentityPolicyPolicyQuery({
    this.group,
    required this.orgUnit,
    this.query,
  });

  final TfArg<String>? group;

  final TfArg<String> orgUnit;

  final TfArg<String>? query;

  Map<String, Object?> encode() => {
    if (group != null) 'group': group!.toTfJson(),
    'org_unit': orgUnit.toTfJson(),
    if (query != null) 'query': query!.toTfJson(),
  };
}

/// Typed helper for the `setting` block of
/// `google_cloud_identity_policy` (derived from provider schema).
@immutable
final class CloudIdentityPolicySetting {
  const CloudIdentityPolicySetting({
    required this.type,
    required this.valueJson,
  });

  final TfArg<String> type;

  final TfArg<String> valueJson;

  Map<String, Object?> encode() => {
    'type': type.toTfJson(),
    'value_json': valueJson.toTfJson(),
  };
}

/// Factory wrapper for `google_cloud_identity_policy`.
///
/// A Cloud Identity Policy binds a Setting to a PolicyQuery for a Google
/// Workspace / Cloud Identity customer.
final class GoogleCloudIdentityPolicy extends Resource {
  static const String tfType = 'google_cloud_identity_policy';

  GoogleCloudIdentityPolicy({
    required super.localName,
    required TfArg<String> customer,
    TfArg<String>? deletionPolicy,
    required CloudIdentityPolicyPolicyQuery policyQuery,
    required CloudIdentityPolicySetting setting,
    super.lifecycle,
    super.dependsOn,
    String? provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         provider: provider ?? 'google-beta',
         argMap: {
           'customer': customer,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           'policy_query': TfArg.literal(policyQuery.encode()),
           'setting': TfArg.literal(setting.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleCloudIdentityPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleCloudIdentityPolicy>`.
  RefTo<GoogleCloudIdentityPolicy> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}

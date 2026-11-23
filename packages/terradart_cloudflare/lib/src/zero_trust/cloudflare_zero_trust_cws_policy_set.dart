// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_zero_trust_cws_policy_set`.
const Set<String> _cloudflareZeroTrustCwsPolicySetSensitive = <String>{};

/// Typed helper for the `policies` block of
/// `cloudflare_zero_trust_cws_policy_set` (derived from provider schema).
@immutable
final class ZeroTrustCwsPolicySetPolicies {
  const ZeroTrustCwsPolicySetPolicies({this.enforce, required this.policyId});

  final TfArg<bool>? enforce;

  final TfArg<String> policyId;

  @internal
  Map<String, Object?> encode() => {
    'enforce': ?enforce?.toTfJson(),
    'policy_id': policyId.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_zero_trust_cws_policy_set`.
final class CloudflareZeroTrustCwsPolicySet extends Resource {
  static const String tfType = 'cloudflare_zero_trust_cws_policy_set';

  CloudflareZeroTrustCwsPolicySet(
    super.localName, {
    required RefTo<CloudflareAccount> accountId,
    TfArg<String>? description,
    TfArg<List<String>>? excludeWorkloadIds,
    TfArg<List<String>>? includeWorkloadIds,
    required TfArg<String> name,
    TfArg<Map<String, String>>? tags,
    required List<ZeroTrustCwsPolicySetPolicies> policies,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'description': ?description,
           'exclude_workload_ids': ?excludeWorkloadIds,
           'include_workload_ids': ?includeWorkloadIds,
           'name': name,
           'tags': ?tags,
           'policies': TfArg.literal([for (final e in policies) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareZeroTrustCwsPolicySetSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareZeroTrustCwsPolicySet>`.
  RefTo<CloudflareZeroTrustCwsPolicySet> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `exclude_workload_ids` attribute.
  TfRef<List<String>> get excludeWorkloadIds =>
      TfRef.attribute<List<String>>(this, 'exclude_workload_ids');

  /// Reference to `include_workload_ids` attribute.
  TfRef<List<String>> get includeWorkloadIds =>
      TfRef.attribute<List<String>>(this, 'include_workload_ids');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}

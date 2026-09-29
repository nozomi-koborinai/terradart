// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../zero_trust/cloudflare_zero_trust_casb_policy.dart';

/// Sensitive field paths for `cloudflare_zero_trust_casb_policy`.
const Set<String> _cloudflareZeroTrustCasbPolicySensitive = <String>{};

/// Factory wrapper for `cloudflare_zero_trust_casb_policy`.
///
/// Accepted Permissions
///
/// - `Zero Trust Read` - `Zero Trust Write`
final class DataCloudflareZeroTrustCasbPolicy extends Data {
  static const String tfType = 'cloudflare_zero_trust_casb_policy';

  DataCloudflareZeroTrustCasbPolicy({
    required super.localName,
    required TfArg<String> accountId,
    required TfArg<String> policyId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'account_id': accountId, 'policy_id': policyId},
       );

  @override
  Set<String> get sensitiveFields => _cloudflareZeroTrustCasbPolicySensitive;

  /// A reference to the `cloudflare_zero_trust_casb_policy` this data source reads, for
  /// arguments typed `RefTo<CloudflareZeroTrustCasbPolicy>`.
  RefTo<CloudflareZeroTrustCasbPolicy> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `applies_to_all_integrations` attribute.
  TfRef<bool> get appliesToAllIntegrations =>
      TfRef.attribute<bool>(this, 'applies_to_all_integrations');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `disabled_at` attribute.
  TfRef<String> get disabledAt => TfRef.attribute<String>(this, 'disabled_at');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `finding_type_id` attribute.
  TfRef<String> get findingTypeId =>
      TfRef.attribute<String>(this, 'finding_type_id');

  /// Reference to `integration_ids` attribute.
  TfRef<List<String>> get integrationIds =>
      TfRef.attribute<List<String>>(this, 'integration_ids');

  /// Reference to `last_triggered_at` attribute.
  TfRef<String> get lastTriggeredAt =>
      TfRef.attribute<String>(this, 'last_triggered_at');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');
}

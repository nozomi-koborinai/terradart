// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_zero_trust_casb_policy`.
const Set<String> _cloudflareZeroTrustCasbPolicySensitive = <String>{};

/// Typed helper for the `actions` block of
/// `cloudflare_zero_trust_casb_policy` (derived from provider schema).
@immutable
final class ZeroTrustCasbPolicyActions {
  const ZeroTrustCasbPolicyActions({
    this.remediationTypes,
    this.webhookConfigs,
  });

  final List<ZeroTrustCasbPolicyRemediationTypes>? remediationTypes;

  final List<ZeroTrustCasbPolicyWebhookConfigs>? webhookConfigs;

  Map<String, Object?> encode() => {
    if (remediationTypes != null)
      'remediation_types': [for (final e in remediationTypes!) e.encode()],
    if (webhookConfigs != null)
      'webhook_configs': [for (final e in webhookConfigs!) e.encode()],
  };
}

/// Typed helper for the `actions.remediation_types` block of
/// `cloudflare_zero_trust_casb_policy` (derived from provider schema).
@immutable
final class ZeroTrustCasbPolicyRemediationTypes {
  const ZeroTrustCasbPolicyRemediationTypes({required this.remediationTypeId});

  final TfArg<String> remediationTypeId;

  Map<String, Object?> encode() => {
    'remediation_type_id': remediationTypeId.toTfJson(),
  };
}

/// Typed helper for the `actions.webhook_configs` block of
/// `cloudflare_zero_trust_casb_policy` (derived from provider schema).
@immutable
final class ZeroTrustCasbPolicyWebhookConfigs {
  const ZeroTrustCasbPolicyWebhookConfigs({required this.webhookConfigId});

  final TfArg<String> webhookConfigId;

  Map<String, Object?> encode() => {
    'webhook_config_id': webhookConfigId.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_zero_trust_casb_policy`.
///
/// Accepted Permissions
///
/// - `Zero Trust Read` - `Zero Trust Write`
///
/// CASB policy: runs [ZeroTrustCasbPolicyActions] (webhooks and at most
/// one remediation) when a finding of `findingTypeId` is raised.
///
/// Set `appliesToAllIntegrations: .literal(true)`, or `false` together
/// with `integrationIds` — the provider requires the list when the flag
/// is false.
final class CloudflareZeroTrustCasbPolicy extends Resource {
  static const String tfType = 'cloudflare_zero_trust_casb_policy';

  CloudflareZeroTrustCasbPolicy(
    super.localName, {
    required RefTo<CloudflareAccount> accountId,
    required TfArg<String> displayName,
    required TfArg<String> findingTypeId,
    required TfArg<bool> enabled,
    required TfArg<bool> appliesToAllIntegrations,
    TfArg<List<String>>? integrationIds,
    required ZeroTrustCasbPolicyActions actions,
    TfArg<String>? description,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'display_name': displayName,
           'finding_type_id': findingTypeId,
           'enabled': enabled,
           'applies_to_all_integrations': appliesToAllIntegrations,
           'integration_ids': ?integrationIds,
           'actions': TfArg.literal(actions.encode()),
           'description': ?description,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareZeroTrustCasbPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareZeroTrustCasbPolicy>`.
  RefTo<CloudflareZeroTrustCasbPolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `disabled_at` attribute.
  TfRef<String> get disabledAt => TfRef.attribute<String>(this, 'disabled_at');

  /// Reference to `last_triggered_at` attribute.
  TfRef<String> get lastTriggeredAt =>
      TfRef.attribute<String>(this, 'last_triggered_at');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `applies_to_all_integrations` attribute.
  TfRef<bool> get appliesToAllIntegrations =>
      TfRef.attribute<bool>(this, 'applies_to_all_integrations');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

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
}

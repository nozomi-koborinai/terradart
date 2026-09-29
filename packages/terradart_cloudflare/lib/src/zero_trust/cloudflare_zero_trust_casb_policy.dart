// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

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

  final List<ZeroTrustCasbPolicyActionsRemediationTypes>? remediationTypes;

  final List<ZeroTrustCasbPolicyActionsWebhookConfigs>? webhookConfigs;

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
final class ZeroTrustCasbPolicyActionsRemediationTypes {
  const ZeroTrustCasbPolicyActionsRemediationTypes({
    required this.remediationTypeId,
  });

  final TfArg<String> remediationTypeId;

  Map<String, Object?> encode() => {
    'remediation_type_id': remediationTypeId.toTfJson(),
  };
}

/// Typed helper for the `actions.webhook_configs` block of
/// `cloudflare_zero_trust_casb_policy` (derived from provider schema).
@immutable
final class ZeroTrustCasbPolicyActionsWebhookConfigs {
  const ZeroTrustCasbPolicyActionsWebhookConfigs({
    required this.webhookConfigId,
  });

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
final class CloudflareZeroTrustCasbPolicy extends Resource {
  static const String tfType = 'cloudflare_zero_trust_casb_policy';

  CloudflareZeroTrustCasbPolicy({
    required super.localName,
    required TfArg<String> accountId,
    required TfArg<bool> appliesToAllIntegrations,
    TfArg<String>? description,
    required TfArg<String> displayName,
    required TfArg<bool> enabled,
    required TfArg<String> findingTypeId,
    TfArg<List<String>>? integrationIds,
    required ZeroTrustCasbPolicyActions actions,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           'applies_to_all_integrations': appliesToAllIntegrations,
           if (description != null) 'description': description,
           'display_name': displayName,
           'enabled': enabled,
           'finding_type_id': findingTypeId,
           if (integrationIds != null) 'integration_ids': integrationIds,
           'actions': TfArg.literal(actions.encode()),
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
}

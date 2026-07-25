// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_apigee_addons_config`.
const Set<String> _googleApigeeAddonsConfigSensitive = <String>{};

/// Typed helper for the `addons_config` block of
/// `google_apigee_addons_config` (derived from provider schema).
@immutable
final class ApigeeAddonsConfigAddonsConfig {
  const ApigeeAddonsConfigAddonsConfig({
    this.advancedApiOpsConfig,
    this.apiSecurityConfig,
    this.connectorsPlatformConfig,
    this.integrationConfig,
    this.monetizationConfig,
  });

  final ApigeeAddonsConfigAddonsConfigAdvancedApiOpsConfig?
  advancedApiOpsConfig;

  final ApigeeAddonsConfigAddonsConfigApiSecurityConfig? apiSecurityConfig;

  final ApigeeAddonsConfigAddonsConfigConnectorsPlatformConfig?
  connectorsPlatformConfig;

  final ApigeeAddonsConfigAddonsConfigIntegrationConfig? integrationConfig;

  final ApigeeAddonsConfigAddonsConfigMonetizationConfig? monetizationConfig;

  Map<String, Object?> encode() => {
    if (advancedApiOpsConfig != null)
      'advanced_api_ops_config': advancedApiOpsConfig!.encode(),
    if (apiSecurityConfig != null)
      'api_security_config': apiSecurityConfig!.encode(),
    if (connectorsPlatformConfig != null)
      'connectors_platform_config': connectorsPlatformConfig!.encode(),
    if (integrationConfig != null)
      'integration_config': integrationConfig!.encode(),
    if (monetizationConfig != null)
      'monetization_config': monetizationConfig!.encode(),
  };
}

/// Typed helper for the `addons_config.advanced_api_ops_config` block of
/// `google_apigee_addons_config` (derived from provider schema).
@immutable
final class ApigeeAddonsConfigAddonsConfigAdvancedApiOpsConfig {
  const ApigeeAddonsConfigAddonsConfigAdvancedApiOpsConfig({this.enabled});

  final TfArg<bool>? enabled;

  Map<String, Object?> encode() => {
    if (enabled != null) 'enabled': enabled!.toTfJson(),
  };
}

/// Typed helper for the `addons_config.api_security_config` block of
/// `google_apigee_addons_config` (derived from provider schema).
@immutable
final class ApigeeAddonsConfigAddonsConfigApiSecurityConfig {
  const ApigeeAddonsConfigAddonsConfigApiSecurityConfig({this.enabled});

  final TfArg<bool>? enabled;

  Map<String, Object?> encode() => {
    if (enabled != null) 'enabled': enabled!.toTfJson(),
  };
}

/// Typed helper for the `addons_config.connectors_platform_config` block of
/// `google_apigee_addons_config` (derived from provider schema).
@immutable
final class ApigeeAddonsConfigAddonsConfigConnectorsPlatformConfig {
  const ApigeeAddonsConfigAddonsConfigConnectorsPlatformConfig({this.enabled});

  final TfArg<bool>? enabled;

  Map<String, Object?> encode() => {
    if (enabled != null) 'enabled': enabled!.toTfJson(),
  };
}

/// Typed helper for the `addons_config.integration_config` block of
/// `google_apigee_addons_config` (derived from provider schema).
@immutable
final class ApigeeAddonsConfigAddonsConfigIntegrationConfig {
  const ApigeeAddonsConfigAddonsConfigIntegrationConfig({this.enabled});

  final TfArg<bool>? enabled;

  Map<String, Object?> encode() => {
    if (enabled != null) 'enabled': enabled!.toTfJson(),
  };
}

/// Typed helper for the `addons_config.monetization_config` block of
/// `google_apigee_addons_config` (derived from provider schema).
@immutable
final class ApigeeAddonsConfigAddonsConfigMonetizationConfig {
  const ApigeeAddonsConfigAddonsConfigMonetizationConfig({this.enabled});

  final TfArg<bool>? enabled;

  Map<String, Object?> encode() => {
    if (enabled != null) 'enabled': enabled!.toTfJson(),
  };
}

/// Factory wrapper for `google_apigee_addons_config`.
///
/// Configures the add-ons for the Apigee organization. The existing add-on
/// configuration will be fully replaced.
///
/// Apigee **organization add-ons config** (API Security, Advanced API
/// Ops, Monetization, Connectors, Integration).
///
/// **Cost:** gcp-cost: no org-addons SKU under Apigee `1C2D-8C78-EC58`
/// beyond gateway/environment usage on never_apply parents.
/// billing-behavior: feature toggles on a never_apply
/// [GoogleApigeeOrganization]. Deferred with the org Wave.
/// **Never** wire into apply-smoke.
final class GoogleApigeeAddonsConfig extends Resource {
  static const String tfType = 'google_apigee_addons_config';

  GoogleApigeeAddonsConfig({
    required super.localName,
    required TfArg<String> org,
    ApigeeAddonsConfigAddonsConfig? addonsConfig,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'org': org,
           if (addonsConfig != null)
             'addons_config': TfArg.literal(addonsConfig.encode()),
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleApigeeAddonsConfigSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');
}

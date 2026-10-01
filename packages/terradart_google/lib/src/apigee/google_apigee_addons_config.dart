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
final class ApigeeAddonsConfig {
  const ApigeeAddonsConfig({
    this.advancedApiOpsConfig,
    this.apiSecurityConfig,
    this.connectorsPlatformConfig,
    this.integrationConfig,
    this.monetizationConfig,
  });

  final ApigeeAddonsConfigAdvancedApiOpsConfig? advancedApiOpsConfig;

  final ApigeeAddonsConfigApiSecurityConfig? apiSecurityConfig;

  final ApigeeAddonsConfigConnectorsPlatformConfig? connectorsPlatformConfig;

  final ApigeeAddonsConfigIntegrationConfig? integrationConfig;

  final ApigeeAddonsConfigMonetizationConfig? monetizationConfig;

  @internal
  Map<String, Object?> encode() => {
    'advanced_api_ops_config': ?advancedApiOpsConfig?.encode(),
    'api_security_config': ?apiSecurityConfig?.encode(),
    'connectors_platform_config': ?connectorsPlatformConfig?.encode(),
    'integration_config': ?integrationConfig?.encode(),
    'monetization_config': ?monetizationConfig?.encode(),
  };
}

/// Typed helper for the `addons_config.advanced_api_ops_config` block of
/// `google_apigee_addons_config` (derived from provider schema).
@immutable
final class ApigeeAddonsConfigAdvancedApiOpsConfig {
  const ApigeeAddonsConfigAdvancedApiOpsConfig({this.enabled});

  final TfArg<bool>? enabled;

  @internal
  Map<String, Object?> encode() => {'enabled': ?enabled?.toTfJson()};
}

/// Typed helper for the `addons_config.api_security_config` block of
/// `google_apigee_addons_config` (derived from provider schema).
@immutable
final class ApigeeAddonsConfigApiSecurityConfig {
  const ApigeeAddonsConfigApiSecurityConfig({this.enabled});

  final TfArg<bool>? enabled;

  @internal
  Map<String, Object?> encode() => {'enabled': ?enabled?.toTfJson()};
}

/// Typed helper for the `addons_config.connectors_platform_config` block of
/// `google_apigee_addons_config` (derived from provider schema).
@immutable
final class ApigeeAddonsConfigConnectorsPlatformConfig {
  const ApigeeAddonsConfigConnectorsPlatformConfig({this.enabled});

  final TfArg<bool>? enabled;

  @internal
  Map<String, Object?> encode() => {'enabled': ?enabled?.toTfJson()};
}

/// Typed helper for the `addons_config.integration_config` block of
/// `google_apigee_addons_config` (derived from provider schema).
@immutable
final class ApigeeAddonsConfigIntegrationConfig {
  const ApigeeAddonsConfigIntegrationConfig({this.enabled});

  final TfArg<bool>? enabled;

  @internal
  Map<String, Object?> encode() => {'enabled': ?enabled?.toTfJson()};
}

/// Typed helper for the `addons_config.monetization_config` block of
/// `google_apigee_addons_config` (derived from provider schema).
@immutable
final class ApigeeAddonsConfigMonetizationConfig {
  const ApigeeAddonsConfigMonetizationConfig({this.enabled});

  final TfArg<bool>? enabled;

  @internal
  Map<String, Object?> encode() => {'enabled': ?enabled?.toTfJson()};
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

  GoogleApigeeAddonsConfig(
    super.localName, {
    required TfArg<String> org,
    ApigeeAddonsConfig? addonsConfig,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'org': org,
           if (addonsConfig != null)
             'addons_config': TfArg.literal(addonsConfig.encode()),
           'deletion_policy': ?deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleApigeeAddonsConfigSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleApigeeAddonsConfig>`.
  RefTo<GoogleApigeeAddonsConfig> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `org` attribute.
  TfRef<String> get org => TfRef.attribute<String>(this, 'org');
}

// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_identity_platform_config`.
const Set<String> _googleIdentityPlatformConfigSensitive = <String>{
  'client.api_key',
};

/// Typed helper for the `blocking_functions` block of
/// `google_identity_platform_config` (derived from provider schema).
@immutable
final class IdentityPlatformConfigBlockingFunctions {
  const IdentityPlatformConfigBlockingFunctions({
    this.forwardInboundCredentials,
    required this.triggers,
  });

  final IdentityPlatformConfigBlockingFunctionsForwardInboundCredentials?
  forwardInboundCredentials;

  final List<IdentityPlatformConfigBlockingFunctionsTriggers> triggers;

  Map<String, Object?> encode() => {
    'forward_inbound_credentials': ?forwardInboundCredentials?.encode(),
    'triggers': [for (final e in triggers) e.encode()],
  };
}

/// Typed helper for the `blocking_functions.forward_inbound_credentials` block of
/// `google_identity_platform_config` (derived from provider schema).
@immutable
final class IdentityPlatformConfigBlockingFunctionsForwardInboundCredentials {
  const IdentityPlatformConfigBlockingFunctionsForwardInboundCredentials({
    this.accessToken,
    this.idToken,
    this.refreshToken,
  });

  final TfArg<bool>? accessToken;

  final TfArg<bool>? idToken;

  final TfArg<bool>? refreshToken;

  Map<String, Object?> encode() => {
    'access_token': ?accessToken?.toTfJson(),
    'id_token': ?idToken?.toTfJson(),
    'refresh_token': ?refreshToken?.toTfJson(),
  };
}

/// Typed helper for the `blocking_functions.triggers` block of
/// `google_identity_platform_config` (derived from provider schema).
@immutable
final class IdentityPlatformConfigBlockingFunctionsTriggers {
  const IdentityPlatformConfigBlockingFunctionsTriggers({
    required this.eventType,
    required this.functionUri,
  });

  final TfArg<String> eventType;

  final TfArg<String> functionUri;

  Map<String, Object?> encode() => {
    'event_type': eventType.toTfJson(),
    'function_uri': functionUri.toTfJson(),
  };
}

/// Typed helper for the `client` block of
/// `google_identity_platform_config` (derived from provider schema).
@immutable
final class IdentityPlatformConfigClient {
  const IdentityPlatformConfigClient({this.permissions});

  final IdentityPlatformConfigClientPermissions? permissions;

  Map<String, Object?> encode() => {'permissions': ?permissions?.encode()};
}

/// Typed helper for the `client.permissions` block of
/// `google_identity_platform_config` (derived from provider schema).
@immutable
final class IdentityPlatformConfigClientPermissions {
  const IdentityPlatformConfigClientPermissions({
    this.disabledUserDeletion,
    this.disabledUserSignup,
  });

  final TfArg<bool>? disabledUserDeletion;

  final TfArg<bool>? disabledUserSignup;

  Map<String, Object?> encode() => {
    'disabled_user_deletion': ?disabledUserDeletion?.toTfJson(),
    'disabled_user_signup': ?disabledUserSignup?.toTfJson(),
  };
}

/// Typed helper for the `mfa` block of
/// `google_identity_platform_config` (derived from provider schema).
@immutable
final class IdentityPlatformConfigMfa {
  const IdentityPlatformConfigMfa({
    this.enabledProviders,
    this.state,
    this.providerConfigs,
  });

  final TfArg<List<String>>? enabledProviders;

  final TfArg<IdentityPlatformConfigMfaState>? state;

  final List<IdentityPlatformConfigMfaProviderConfigs>? providerConfigs;

  Map<String, Object?> encode() => {
    'enabled_providers': ?enabledProviders?.toTfJson(),
    'state': ?state?.toTfJson(),
    if (providerConfigs != null)
      'provider_configs': [for (final e in providerConfigs!) e.encode()],
  };
}

/// `state` — derived from the provider schema description.
enum IdentityPlatformConfigMfaState implements TerraformEnum {
  disabled('DISABLED'),
  enabled('ENABLED'),
  mandatory('MANDATORY');

  const IdentityPlatformConfigMfaState(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `mfa.provider_configs` block of
/// `google_identity_platform_config` (derived from provider schema).
@immutable
final class IdentityPlatformConfigMfaProviderConfigs {
  const IdentityPlatformConfigMfaProviderConfigs({
    this.state,
    this.totpProviderConfig,
  });

  final TfArg<IdentityPlatformConfigMfaProviderConfigsState>? state;

  final IdentityPlatformConfigMfaProviderConfigsTotpProviderConfig?
  totpProviderConfig;

  Map<String, Object?> encode() => {
    'state': ?state?.toTfJson(),
    'totp_provider_config': ?totpProviderConfig?.encode(),
  };
}

/// `state` — derived from the provider schema description.
enum IdentityPlatformConfigMfaProviderConfigsState implements TerraformEnum {
  disabled('DISABLED'),
  enabled('ENABLED'),
  mandatory('MANDATORY');

  const IdentityPlatformConfigMfaProviderConfigsState(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `mfa.provider_configs.totp_provider_config` block of
/// `google_identity_platform_config` (derived from provider schema).
@immutable
final class IdentityPlatformConfigMfaProviderConfigsTotpProviderConfig {
  const IdentityPlatformConfigMfaProviderConfigsTotpProviderConfig({
    this.adjacentIntervals,
  });

  final TfArg<num>? adjacentIntervals;

  Map<String, Object?> encode() => {
    'adjacent_intervals': ?adjacentIntervals?.toTfJson(),
  };
}

/// Typed helper for the `monitoring` block of
/// `google_identity_platform_config` (derived from provider schema).
@immutable
final class IdentityPlatformConfigMonitoring {
  const IdentityPlatformConfigMonitoring({this.requestLogging});

  final IdentityPlatformConfigMonitoringRequestLogging? requestLogging;

  Map<String, Object?> encode() => {
    'request_logging': ?requestLogging?.encode(),
  };
}

/// Typed helper for the `monitoring.request_logging` block of
/// `google_identity_platform_config` (derived from provider schema).
@immutable
final class IdentityPlatformConfigMonitoringRequestLogging {
  const IdentityPlatformConfigMonitoringRequestLogging({this.enabled});

  final TfArg<bool>? enabled;

  Map<String, Object?> encode() => {'enabled': ?enabled?.toTfJson()};
}

/// Typed helper for the `multi_tenant` block of
/// `google_identity_platform_config` (derived from provider schema).
@immutable
final class IdentityPlatformConfigMultiTenant {
  const IdentityPlatformConfigMultiTenant({
    this.allowTenants,
    this.defaultTenantLocation,
  });

  final TfArg<bool>? allowTenants;

  final TfArg<String>? defaultTenantLocation;

  Map<String, Object?> encode() => {
    'allow_tenants': ?allowTenants?.toTfJson(),
    'default_tenant_location': ?defaultTenantLocation?.toTfJson(),
  };
}

/// Typed helper for the `quota` block of
/// `google_identity_platform_config` (derived from provider schema).
@immutable
final class IdentityPlatformConfigQuota {
  const IdentityPlatformConfigQuota({this.signUpQuotaConfig});

  final IdentityPlatformConfigQuotaSignUpQuotaConfig? signUpQuotaConfig;

  Map<String, Object?> encode() => {
    'sign_up_quota_config': ?signUpQuotaConfig?.encode(),
  };
}

/// Typed helper for the `quota.sign_up_quota_config` block of
/// `google_identity_platform_config` (derived from provider schema).
@immutable
final class IdentityPlatformConfigQuotaSignUpQuotaConfig {
  const IdentityPlatformConfigQuotaSignUpQuotaConfig({
    this.quota,
    this.quotaDuration,
    this.startTime,
  });

  final TfArg<num>? quota;

  final TfArg<String>? quotaDuration;

  final TfArg<String>? startTime;

  Map<String, Object?> encode() => {
    'quota': ?quota?.toTfJson(),
    'quota_duration': ?quotaDuration?.toTfJson(),
    'start_time': ?startTime?.toTfJson(),
  };
}

/// Typed helper for the `sign_in` block of
/// `google_identity_platform_config` (derived from provider schema).
@immutable
final class IdentityPlatformConfigSignIn {
  const IdentityPlatformConfigSignIn({
    this.allowDuplicateEmails,
    this.anonymous,
    this.email,
    this.phoneNumber,
  });

  final TfArg<bool>? allowDuplicateEmails;

  final IdentityPlatformConfigSignInAnonymous? anonymous;

  final IdentityPlatformConfigSignInEmail? email;

  final IdentityPlatformConfigSignInPhoneNumber? phoneNumber;

  Map<String, Object?> encode() => {
    'allow_duplicate_emails': ?allowDuplicateEmails?.toTfJson(),
    'anonymous': ?anonymous?.encode(),
    'email': ?email?.encode(),
    'phone_number': ?phoneNumber?.encode(),
  };
}

/// Typed helper for the `sign_in.anonymous` block of
/// `google_identity_platform_config` (derived from provider schema).
@immutable
final class IdentityPlatformConfigSignInAnonymous {
  const IdentityPlatformConfigSignInAnonymous({required this.enabled});

  final TfArg<bool> enabled;

  Map<String, Object?> encode() => {'enabled': enabled.toTfJson()};
}

/// Typed helper for the `sign_in.email` block of
/// `google_identity_platform_config` (derived from provider schema).
@immutable
final class IdentityPlatformConfigSignInEmail {
  const IdentityPlatformConfigSignInEmail({
    required this.enabled,
    this.passwordRequired,
  });

  final TfArg<bool> enabled;

  final TfArg<bool>? passwordRequired;

  Map<String, Object?> encode() => {
    'enabled': enabled.toTfJson(),
    'password_required': ?passwordRequired?.toTfJson(),
  };
}

/// Typed helper for the `sign_in.phone_number` block of
/// `google_identity_platform_config` (derived from provider schema).
@immutable
final class IdentityPlatformConfigSignInPhoneNumber {
  const IdentityPlatformConfigSignInPhoneNumber({
    required this.enabled,
    this.testPhoneNumbers,
  });

  final TfArg<bool> enabled;

  final TfArg<Map<String, String>>? testPhoneNumbers;

  Map<String, Object?> encode() => {
    'enabled': enabled.toTfJson(),
    'test_phone_numbers': ?testPhoneNumbers?.toTfJson(),
  };
}

/// Exactly one of `allow_by_default`, `allowlist_only` on the `sms_region_config` block of `google_identity_platform_config`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.allowByDefault(...)`.
sealed class IdentityPlatformConfigSmsRegionConfig {
  const IdentityPlatformConfigSmsRegionConfig();

  /// Sets `allow_by_default`.
  const factory IdentityPlatformConfigSmsRegionConfig.allowByDefault(
    IdentityPlatformConfigSmsRegionConfigAllowByDefault allowByDefault,
  ) = IdentityPlatformConfigSmsRegionConfigAllowByDefaultChoice;

  /// Sets `allowlist_only`.
  const factory IdentityPlatformConfigSmsRegionConfig.allowlistOnly(
    IdentityPlatformConfigSmsRegionConfigAllowlistOnly allowlistOnly,
  ) = IdentityPlatformConfigSmsRegionConfigAllowlistOnlyChoice;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [IdentityPlatformConfigSmsRegionConfig.allowByDefault] choice: sets `allow_by_default`.
final class IdentityPlatformConfigSmsRegionConfigAllowByDefaultChoice
    extends IdentityPlatformConfigSmsRegionConfig {
  const IdentityPlatformConfigSmsRegionConfigAllowByDefaultChoice(
    this.allowByDefault,
  );

  final IdentityPlatformConfigSmsRegionConfigAllowByDefault allowByDefault;

  @override
  String get blockKey => 'allow_by_default';

  @override
  Map<String, Object?> encode() => {
    'allow_by_default': allowByDefault.encode(),
  };
}

/// The [IdentityPlatformConfigSmsRegionConfig.allowlistOnly] choice: sets `allowlist_only`.
final class IdentityPlatformConfigSmsRegionConfigAllowlistOnlyChoice
    extends IdentityPlatformConfigSmsRegionConfig {
  const IdentityPlatformConfigSmsRegionConfigAllowlistOnlyChoice(
    this.allowlistOnly,
  );

  final IdentityPlatformConfigSmsRegionConfigAllowlistOnly allowlistOnly;

  @override
  String get blockKey => 'allowlist_only';

  @override
  Map<String, Object?> encode() => {'allowlist_only': allowlistOnly.encode()};
}

/// Typed helper for the `sms_region_config.allow_by_default` block of
/// `google_identity_platform_config` (derived from provider schema).
@immutable
final class IdentityPlatformConfigSmsRegionConfigAllowByDefault {
  const IdentityPlatformConfigSmsRegionConfigAllowByDefault({
    this.disallowedRegions,
  });

  final TfArg<List<String>>? disallowedRegions;

  Map<String, Object?> encode() => {
    'disallowed_regions': ?disallowedRegions?.toTfJson(),
  };
}

/// Typed helper for the `sms_region_config.allowlist_only` block of
/// `google_identity_platform_config` (derived from provider schema).
@immutable
final class IdentityPlatformConfigSmsRegionConfigAllowlistOnly {
  const IdentityPlatformConfigSmsRegionConfigAllowlistOnly({
    this.allowedRegions,
  });

  final TfArg<List<String>>? allowedRegions;

  Map<String, Object?> encode() => {
    'allowed_regions': ?allowedRegions?.toTfJson(),
  };
}

/// Factory wrapper for `google_identity_platform_config`.
///
/// Identity Platform configuration for a Cloud project. Identity Platform is an
/// end-to-end authentication system for third-party users to access apps and
/// services.
///
/// This entity is created only once during intialization and cannot be deleted,
/// individual Identity Providers may be disabled instead. This resource may
/// only be created in billing-enabled projects.
///
/// Identity Platform project config — Auth settings for the GCP project.
///
/// Enable `identitytoolkit.googleapis.com` before apply. Nested blocks
/// (`sign_in`, `mfa`, `sms_region_config`, …) are omitted from this thin
/// surface; extend the override when a Wave needs typed Auth settings.
final class GoogleIdentityPlatformConfig extends Resource {
  static const String tfType = 'google_identity_platform_config';

  GoogleIdentityPlatformConfig({
    required super.localName,
    TfArg<List<String>>? authorizedDomains,
    TfArg<bool>? autodeleteAnonymousUsers,
    TfArg<String>? project,
    IdentityPlatformConfigBlockingFunctions? blockingFunctions,
    IdentityPlatformConfigClient? client,
    IdentityPlatformConfigMfa? mfa,
    IdentityPlatformConfigMonitoring? monitoring,
    IdentityPlatformConfigMultiTenant? multiTenant,
    IdentityPlatformConfigQuota? quota,
    IdentityPlatformConfigSignIn? signIn,
    IdentityPlatformConfigSmsRegionConfig? smsRegionConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'authorized_domains': ?authorizedDomains,
           'autodelete_anonymous_users': ?autodeleteAnonymousUsers,
           'project': ?project,
           if (blockingFunctions != null)
             'blocking_functions': TfArg.literal(blockingFunctions.encode()),
           if (client != null) 'client': TfArg.literal(client.encode()),
           if (mfa != null) 'mfa': TfArg.literal(mfa.encode()),
           if (monitoring != null)
             'monitoring': TfArg.literal(monitoring.encode()),
           if (multiTenant != null)
             'multi_tenant': TfArg.literal(multiTenant.encode()),
           if (quota != null) 'quota': TfArg.literal(quota.encode()),
           if (signIn != null) 'sign_in': TfArg.literal(signIn.encode()),
           if (smsRegionConfig != null)
             'sms_region_config': TfArg.literal(smsRegionConfig.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleIdentityPlatformConfigSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleIdentityPlatformConfig>`.
  RefTo<GoogleIdentityPlatformConfig> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}

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

  final IdentityPlatformConfigForwardInboundCredentials?
  forwardInboundCredentials;

  final List<IdentityPlatformConfigTriggers> triggers;

  @internal
  Map<String, Object?> encode() => {
    'forward_inbound_credentials': ?forwardInboundCredentials?.encode(),
    'triggers': [for (final e in triggers) e.encode()],
  };
}

/// Typed helper for the `blocking_functions.forward_inbound_credentials` block of
/// `google_identity_platform_config` (derived from provider schema).
@immutable
final class IdentityPlatformConfigForwardInboundCredentials {
  const IdentityPlatformConfigForwardInboundCredentials({
    this.accessToken,
    this.idToken,
    this.refreshToken,
  });

  final TfArg<bool>? accessToken;

  final TfArg<bool>? idToken;

  final TfArg<bool>? refreshToken;

  @internal
  Map<String, Object?> encode() => {
    'access_token': ?accessToken?.toTfJson(),
    'id_token': ?idToken?.toTfJson(),
    'refresh_token': ?refreshToken?.toTfJson(),
  };
}

/// Typed helper for the `blocking_functions.triggers` block of
/// `google_identity_platform_config` (derived from provider schema).
@immutable
final class IdentityPlatformConfigTriggers {
  const IdentityPlatformConfigTriggers({
    required this.eventType,
    required this.functionUri,
  });

  final TfArg<String> eventType;

  final TfArg<String> functionUri;

  @internal
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

  final IdentityPlatformConfigPermissions? permissions;

  @internal
  Map<String, Object?> encode() => {'permissions': ?permissions?.encode()};
}

/// Typed helper for the `client.permissions` block of
/// `google_identity_platform_config` (derived from provider schema).
@immutable
final class IdentityPlatformConfigPermissions {
  const IdentityPlatformConfigPermissions({
    this.disabledUserDeletion,
    this.disabledUserSignup,
  });

  final TfArg<bool>? disabledUserDeletion;

  final TfArg<bool>? disabledUserSignup;

  @internal
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

  final IdentityPlatformConfigState? state;

  final List<IdentityPlatformConfigProviderConfigs>? providerConfigs;

  @internal
  Map<String, Object?> encode() => {
    'enabled_providers': ?enabledProviders?.toTfJson(),
    'state': ?state?.toTfJson(),
    if (providerConfigs != null)
      'provider_configs': [for (final e in providerConfigs!) e.encode()],
  };
}

/// `state` — derived from the provider schema description.
extension type const IdentityPlatformConfigState._(TfArg<String> _)
    implements TfArg<String> {
  IdentityPlatformConfigState.variable(String name)
    : this._(TfArg.variable(name));
  IdentityPlatformConfigState.expression(String template)
    : this._(TfArg.expression(template));
  const IdentityPlatformConfigState.arg(TfArg<String> arg) : this._(arg);

  static const disabled = IdentityPlatformConfigState._(
    TfArgLiteral('DISABLED'),
  );
  static const enabled = IdentityPlatformConfigState._(TfArgLiteral('ENABLED'));
  static const mandatory = IdentityPlatformConfigState._(
    TfArgLiteral('MANDATORY'),
  );

  static const List<IdentityPlatformConfigState> values = [
    disabled,
    enabled,
    mandatory,
  ];
}

/// Typed helper for the `mfa.provider_configs` block of
/// `google_identity_platform_config` (derived from provider schema).
@immutable
final class IdentityPlatformConfigProviderConfigs {
  const IdentityPlatformConfigProviderConfigs({
    this.state,
    this.totpProviderConfig,
  });

  final IdentityPlatformConfigState? state;

  final IdentityPlatformConfigTotpProviderConfig? totpProviderConfig;

  @internal
  Map<String, Object?> encode() => {
    'state': ?state?.toTfJson(),
    'totp_provider_config': ?totpProviderConfig?.encode(),
  };
}

/// Typed helper for the `mfa.provider_configs.totp_provider_config` block of
/// `google_identity_platform_config` (derived from provider schema).
@immutable
final class IdentityPlatformConfigTotpProviderConfig {
  const IdentityPlatformConfigTotpProviderConfig({this.adjacentIntervals});

  final TfArg<num>? adjacentIntervals;

  @internal
  Map<String, Object?> encode() => {
    'adjacent_intervals': ?adjacentIntervals?.toTfJson(),
  };
}

/// Typed helper for the `monitoring` block of
/// `google_identity_platform_config` (derived from provider schema).
@immutable
final class IdentityPlatformConfigMonitoring {
  const IdentityPlatformConfigMonitoring({this.requestLogging});

  final IdentityPlatformConfigRequestLogging? requestLogging;

  @internal
  Map<String, Object?> encode() => {
    'request_logging': ?requestLogging?.encode(),
  };
}

/// Typed helper for the `monitoring.request_logging` block of
/// `google_identity_platform_config` (derived from provider schema).
@immutable
final class IdentityPlatformConfigRequestLogging {
  const IdentityPlatformConfigRequestLogging({this.enabled});

  final TfArg<bool>? enabled;

  @internal
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

  @internal
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

  final IdentityPlatformConfigSignUpQuotaConfig? signUpQuotaConfig;

  @internal
  Map<String, Object?> encode() => {
    'sign_up_quota_config': ?signUpQuotaConfig?.encode(),
  };
}

/// Typed helper for the `quota.sign_up_quota_config` block of
/// `google_identity_platform_config` (derived from provider schema).
@immutable
final class IdentityPlatformConfigSignUpQuotaConfig {
  const IdentityPlatformConfigSignUpQuotaConfig({
    this.quota,
    this.quotaDuration,
    this.startTime,
  });

  final TfArg<num>? quota;

  final TfArg<String>? quotaDuration;

  final TfArg<String>? startTime;

  @internal
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

  final IdentityPlatformConfigAnonymous? anonymous;

  final IdentityPlatformConfigEmail? email;

  final IdentityPlatformConfigPhoneNumber? phoneNumber;

  @internal
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
final class IdentityPlatformConfigAnonymous {
  const IdentityPlatformConfigAnonymous({required this.enabled});

  final TfArg<bool> enabled;

  @internal
  Map<String, Object?> encode() => {'enabled': enabled.toTfJson()};
}

/// Typed helper for the `sign_in.email` block of
/// `google_identity_platform_config` (derived from provider schema).
@immutable
final class IdentityPlatformConfigEmail {
  const IdentityPlatformConfigEmail({
    required this.enabled,
    this.passwordRequired,
  });

  final TfArg<bool> enabled;

  final TfArg<bool>? passwordRequired;

  @internal
  Map<String, Object?> encode() => {
    'enabled': enabled.toTfJson(),
    'password_required': ?passwordRequired?.toTfJson(),
  };
}

/// Typed helper for the `sign_in.phone_number` block of
/// `google_identity_platform_config` (derived from provider schema).
@immutable
final class IdentityPlatformConfigPhoneNumber {
  const IdentityPlatformConfigPhoneNumber({
    required this.enabled,
    this.testPhoneNumbers,
  });

  final TfArg<bool> enabled;

  final TfArg<Map<String, String>>? testPhoneNumbers;

  @internal
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
    IdentityPlatformConfigAllowByDefault allowByDefault,
  ) = IdentityPlatformConfigSmsRegionConfigAllowByDefault;

  /// Sets `allowlist_only`.
  const factory IdentityPlatformConfigSmsRegionConfig.allowlistOnly(
    IdentityPlatformConfigAllowlistOnly allowlistOnly,
  ) = IdentityPlatformConfigSmsRegionConfigAllowlistOnly;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [IdentityPlatformConfigSmsRegionConfig.allowByDefault] choice: sets `allow_by_default`.
final class IdentityPlatformConfigSmsRegionConfigAllowByDefault
    extends IdentityPlatformConfigSmsRegionConfig {
  const IdentityPlatformConfigSmsRegionConfigAllowByDefault(
    this.allowByDefault,
  );

  final IdentityPlatformConfigAllowByDefault allowByDefault;

  @internal
  @override
  String get blockKey => 'allow_by_default';

  @internal
  @override
  Map<String, Object?> encode() => {
    'allow_by_default': allowByDefault.encode(),
  };
}

/// The [IdentityPlatformConfigSmsRegionConfig.allowlistOnly] choice: sets `allowlist_only`.
final class IdentityPlatformConfigSmsRegionConfigAllowlistOnly
    extends IdentityPlatformConfigSmsRegionConfig {
  const IdentityPlatformConfigSmsRegionConfigAllowlistOnly(this.allowlistOnly);

  final IdentityPlatformConfigAllowlistOnly allowlistOnly;

  @internal
  @override
  String get blockKey => 'allowlist_only';

  @internal
  @override
  Map<String, Object?> encode() => {'allowlist_only': allowlistOnly.encode()};
}

/// Typed helper for the `sms_region_config.allow_by_default` block of
/// `google_identity_platform_config` (derived from provider schema).
@immutable
final class IdentityPlatformConfigAllowByDefault {
  const IdentityPlatformConfigAllowByDefault({this.disallowedRegions});

  final TfArg<List<String>>? disallowedRegions;

  @internal
  Map<String, Object?> encode() => {
    'disallowed_regions': ?disallowedRegions?.toTfJson(),
  };
}

/// Typed helper for the `sms_region_config.allowlist_only` block of
/// `google_identity_platform_config` (derived from provider schema).
@immutable
final class IdentityPlatformConfigAllowlistOnly {
  const IdentityPlatformConfigAllowlistOnly({this.allowedRegions});

  final TfArg<List<String>>? allowedRegions;

  @internal
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

  GoogleIdentityPlatformConfig(
    super.localName, {
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
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `authorized_domains` attribute.
  TfRef<List<String>> get authorizedDomains =>
      TfRef.attribute<List<String>>(this, 'authorized_domains');

  /// Reference to `autodelete_anonymous_users` attribute.
  TfRef<bool> get autodeleteAnonymousUsers =>
      TfRef.attribute<bool>(this, 'autodelete_anonymous_users');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}

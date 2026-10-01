// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_iap_settings`.
const Set<String> _googleIapSettingsSensitive = <String>{
  'access_settings.oauth_settings.client_secret',
  'access_settings.workforce_identity_settings.oauth2.client_secret',
};

/// Typed helper for the `access_settings` block of
/// `google_iap_settings` (derived from provider schema).
@immutable
final class IapSettingsAccessSettings {
  const IapSettingsAccessSettings({
    this.identitySources,
    this.allowedDomainsSettings,
    this.corsSettings,
    this.gcipSettings,
    this.oauthSettings,
    this.reauthSettings,
    this.workforceIdentitySettings,
  });

  final TfArg<List<String>>? identitySources;

  final IapSettingsAllowedDomainsSettings? allowedDomainsSettings;

  final IapSettingsCorsSettings? corsSettings;

  final IapSettingsGcipSettings? gcipSettings;

  final IapSettingsOauthSettings? oauthSettings;

  final IapSettingsReauthSettings? reauthSettings;

  final IapSettingsWorkforceIdentitySettings? workforceIdentitySettings;

  Map<String, Object?> encode() => {
    'identity_sources': ?identitySources?.toTfJson(),
    'allowed_domains_settings': ?allowedDomainsSettings?.encode(),
    'cors_settings': ?corsSettings?.encode(),
    'gcip_settings': ?gcipSettings?.encode(),
    'oauth_settings': ?oauthSettings?.encode(),
    'reauth_settings': ?reauthSettings?.encode(),
    'workforce_identity_settings': ?workforceIdentitySettings?.encode(),
  };
}

/// Typed helper for the `access_settings.allowed_domains_settings` block of
/// `google_iap_settings` (derived from provider schema).
@immutable
final class IapSettingsAllowedDomainsSettings {
  const IapSettingsAllowedDomainsSettings({this.domains, this.enable});

  final TfArg<List<String>>? domains;

  final TfArg<bool>? enable;

  Map<String, Object?> encode() => {
    'domains': ?domains?.toTfJson(),
    'enable': ?enable?.toTfJson(),
  };
}

/// Typed helper for the `access_settings.cors_settings` block of
/// `google_iap_settings` (derived from provider schema).
@immutable
final class IapSettingsCorsSettings {
  const IapSettingsCorsSettings({this.allowHttpOptions});

  final TfArg<bool>? allowHttpOptions;

  Map<String, Object?> encode() => {
    'allow_http_options': ?allowHttpOptions?.toTfJson(),
  };
}

/// Typed helper for the `access_settings.gcip_settings` block of
/// `google_iap_settings` (derived from provider schema).
@immutable
final class IapSettingsGcipSettings {
  const IapSettingsGcipSettings({this.loginPageUri, this.tenantIds});

  final TfArg<String>? loginPageUri;

  final TfArg<List<String>>? tenantIds;

  Map<String, Object?> encode() => {
    'login_page_uri': ?loginPageUri?.toTfJson(),
    'tenant_ids': ?tenantIds?.toTfJson(),
  };
}

/// Typed helper for the `access_settings.oauth_settings` block of
/// `google_iap_settings` (derived from provider schema).
@immutable
final class IapSettingsOauthSettings {
  const IapSettingsOauthSettings({
    this.clientId,
    this.clientSecret,
    this.loginHint,
    this.programmaticClients,
  });

  final TfArg<String>? clientId;

  final TfArg<String>? clientSecret;

  final TfArg<String>? loginHint;

  final TfArg<List<String>>? programmaticClients;

  Map<String, Object?> encode() => {
    'client_id': ?clientId?.toTfJson(),
    'client_secret': ?clientSecret?.toTfJson(),
    'login_hint': ?loginHint?.toTfJson(),
    'programmatic_clients': ?programmaticClients?.toTfJson(),
  };
}

/// Typed helper for the `access_settings.reauth_settings` block of
/// `google_iap_settings` (derived from provider schema).
@immutable
final class IapSettingsReauthSettings {
  const IapSettingsReauthSettings({
    required this.maxAge,
    required this.method,
    required this.policyType,
  });

  final TfArg<String> maxAge;

  final TfArg<IapSettingsMethod> method;

  final TfArg<IapSettingsPolicyType> policyType;

  Map<String, Object?> encode() => {
    'max_age': maxAge.toTfJson(),
    'method': method.toTfJson(),
    'policy_type': policyType.toTfJson(),
  };
}

/// `method` — derived from the provider schema description.
enum IapSettingsMethod implements TerraformEnum {
  login('LOGIN'),
  secureKey('SECURE_KEY'),
  enrolledSecondFactors('ENROLLED_SECOND_FACTORS');

  const IapSettingsMethod(this.terraformValue);
  @override
  final String terraformValue;
}

/// `policy_type` — derived from the provider schema description.
enum IapSettingsPolicyType implements TerraformEnum {
  minimum('MINIMUM'),
  defaultCase('DEFAULT');

  const IapSettingsPolicyType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `access_settings.workforce_identity_settings` block of
/// `google_iap_settings` (derived from provider schema).
@immutable
final class IapSettingsWorkforceIdentitySettings {
  const IapSettingsWorkforceIdentitySettings({
    this.workforcePools,
    this.oauth2,
  });

  final TfArg<List<String>>? workforcePools;

  final IapSettingsOauth2? oauth2;

  Map<String, Object?> encode() => {
    'workforce_pools': ?workforcePools?.toTfJson(),
    'oauth2': ?oauth2?.encode(),
  };
}

/// Typed helper for the `access_settings.workforce_identity_settings.oauth2` block of
/// `google_iap_settings` (derived from provider schema).
@immutable
final class IapSettingsOauth2 {
  const IapSettingsOauth2({this.clientId, this.clientSecret});

  final TfArg<String>? clientId;

  final TfArg<String>? clientSecret;

  Map<String, Object?> encode() => {
    'client_id': ?clientId?.toTfJson(),
    'client_secret': ?clientSecret?.toTfJson(),
  };
}

/// Typed helper for the `application_settings` block of
/// `google_iap_settings` (derived from provider schema).
@immutable
final class IapSettingsApplicationSettings {
  const IapSettingsApplicationSettings({
    this.cookieDomain,
    this.accessDeniedPageSettings,
    this.attributePropagationSettings,
    this.csmSettings,
  });

  final TfArg<String>? cookieDomain;

  final IapSettingsAccessDeniedPageSettings? accessDeniedPageSettings;

  final IapSettingsAttributePropagationSettings? attributePropagationSettings;

  final IapSettingsCsmSettings? csmSettings;

  Map<String, Object?> encode() => {
    'cookie_domain': ?cookieDomain?.toTfJson(),
    'access_denied_page_settings': ?accessDeniedPageSettings?.encode(),
    'attribute_propagation_settings': ?attributePropagationSettings?.encode(),
    'csm_settings': ?csmSettings?.encode(),
  };
}

/// Typed helper for the `application_settings.access_denied_page_settings` block of
/// `google_iap_settings` (derived from provider schema).
@immutable
final class IapSettingsAccessDeniedPageSettings {
  const IapSettingsAccessDeniedPageSettings({
    this.accessDeniedPageUri,
    this.generateTroubleshootingUri,
    this.remediationTokenGenerationEnabled,
  });

  final TfArg<String>? accessDeniedPageUri;

  final TfArg<bool>? generateTroubleshootingUri;

  final TfArg<bool>? remediationTokenGenerationEnabled;

  Map<String, Object?> encode() => {
    'access_denied_page_uri': ?accessDeniedPageUri?.toTfJson(),
    'generate_troubleshooting_uri': ?generateTroubleshootingUri?.toTfJson(),
    'remediation_token_generation_enabled': ?remediationTokenGenerationEnabled
        ?.toTfJson(),
  };
}

/// Typed helper for the `application_settings.attribute_propagation_settings` block of
/// `google_iap_settings` (derived from provider schema).
@immutable
final class IapSettingsAttributePropagationSettings {
  const IapSettingsAttributePropagationSettings({
    this.enable,
    this.expression,
    this.outputCredentials,
  });

  final TfArg<bool>? enable;

  final TfArg<String>? expression;

  final List<TfArg<IapSettingsOutputCredentials>>? outputCredentials;

  Map<String, Object?> encode() => {
    'enable': ?enable?.toTfJson(),
    'expression': ?expression?.toTfJson(),
    if (outputCredentials != null)
      'output_credentials': [for (final e in outputCredentials!) e.toTfJson()],
  };
}

/// `output_credentials` — derived from the provider schema description.
enum IapSettingsOutputCredentials implements TerraformEnum {
  header('HEADER'),
  jwt('JWT'),
  rctoken('RCTOKEN');

  const IapSettingsOutputCredentials(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `application_settings.csm_settings` block of
/// `google_iap_settings` (derived from provider schema).
@immutable
final class IapSettingsCsmSettings {
  const IapSettingsCsmSettings({this.rctokenAud});

  final TfArg<String>? rctokenAud;

  Map<String, Object?> encode() => {'rctoken_aud': ?rctokenAud?.toTfJson()};
}

/// Factory wrapper for `google_iap_settings`.
///
/// IAP settings - manage IAP settings
///
/// IAP **settings** — project- or resource-scoped Identity-Aware Proxy
/// access and application configuration.
///
/// Manages IAP settings metadata (CORS, OAuth, reauth, cookie domain, custom
/// access-denied page, and related blocks). Creating settings alone does not
/// enable IAP on a backend or bill Chrome Enterprise Premium; Cloud IAP for
/// GCP-hosted targets is free per Google Cloud pricing.
///
/// Enable `iap.googleapis.com` via [GoogleProjectService] before apply.
/// [name] is the IAP resource path (e.g. `projects/<project>/iap_web`).
/// Omit nested [accessSettings] / [applicationSettings] for name-only
/// project-level settings.
///
/// Example:
/// ```dart
/// GoogleIapSettings(
///   'web',
///   name: TfArg.literal('projects/my-proj/iap_web'),
/// );
/// ```
final class GoogleIapSettings extends Resource {
  static const String tfType = 'google_iap_settings';

  GoogleIapSettings(
    super.localName, {
    required TfArg<String> name,
    IapSettingsAccessSettings? accessSettings,
    IapSettingsApplicationSettings? applicationSettings,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           if (accessSettings != null)
             'access_settings': TfArg.literal(accessSettings.encode()),
           if (applicationSettings != null)
             'application_settings': TfArg.literal(
               applicationSettings.encode(),
             ),
           'deletion_policy': ?deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleIapSettingsSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleIapSettings>`.
  RefTo<GoogleIapSettings> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');
}

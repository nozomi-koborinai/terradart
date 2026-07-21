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

  final TfArg<List<Object?>>? identitySources;

  final IapSettingsAccessSettingsAllowedDomainsSettings? allowedDomainsSettings;

  final IapSettingsAccessSettingsCorsSettings? corsSettings;

  final IapSettingsAccessSettingsGcipSettings? gcipSettings;

  final IapSettingsAccessSettingsOauthSettings? oauthSettings;

  final IapSettingsAccessSettingsReauthSettings? reauthSettings;

  final IapSettingsAccessSettingsWorkforceIdentitySettings?
  workforceIdentitySettings;

  Map<String, Object?> encode() => {
    if (identitySources != null)
      'identity_sources': identitySources!.toTfJson(),
    if (allowedDomainsSettings != null)
      'allowed_domains_settings': allowedDomainsSettings!.encode(),
    if (corsSettings != null) 'cors_settings': corsSettings!.encode(),
    if (gcipSettings != null) 'gcip_settings': gcipSettings!.encode(),
    if (oauthSettings != null) 'oauth_settings': oauthSettings!.encode(),
    if (reauthSettings != null) 'reauth_settings': reauthSettings!.encode(),
    if (workforceIdentitySettings != null)
      'workforce_identity_settings': workforceIdentitySettings!.encode(),
  };
}

/// Typed helper for the `access_settings.allowed_domains_settings` block of
/// `google_iap_settings` (derived from provider schema).
@immutable
final class IapSettingsAccessSettingsAllowedDomainsSettings {
  const IapSettingsAccessSettingsAllowedDomainsSettings({
    this.domains,
    this.enable,
  });

  final TfArg<List<Object?>>? domains;

  final TfArg<bool>? enable;

  Map<String, Object?> encode() => {
    if (domains != null) 'domains': domains!.toTfJson(),
    if (enable != null) 'enable': enable!.toTfJson(),
  };
}

/// Typed helper for the `access_settings.cors_settings` block of
/// `google_iap_settings` (derived from provider schema).
@immutable
final class IapSettingsAccessSettingsCorsSettings {
  const IapSettingsAccessSettingsCorsSettings({this.allowHttpOptions});

  final TfArg<bool>? allowHttpOptions;

  Map<String, Object?> encode() => {
    if (allowHttpOptions != null)
      'allow_http_options': allowHttpOptions!.toTfJson(),
  };
}

/// Typed helper for the `access_settings.gcip_settings` block of
/// `google_iap_settings` (derived from provider schema).
@immutable
final class IapSettingsAccessSettingsGcipSettings {
  const IapSettingsAccessSettingsGcipSettings({
    this.loginPageUri,
    this.tenantIds,
  });

  final TfArg<String>? loginPageUri;

  final TfArg<List<Object?>>? tenantIds;

  Map<String, Object?> encode() => {
    if (loginPageUri != null) 'login_page_uri': loginPageUri!.toTfJson(),
    if (tenantIds != null) 'tenant_ids': tenantIds!.toTfJson(),
  };
}

/// Typed helper for the `access_settings.oauth_settings` block of
/// `google_iap_settings` (derived from provider schema).
@immutable
final class IapSettingsAccessSettingsOauthSettings {
  const IapSettingsAccessSettingsOauthSettings({
    this.clientId,
    this.clientSecret,
    this.loginHint,
    this.programmaticClients,
  });

  final TfArg<String>? clientId;

  final TfArg<String>? clientSecret;

  final TfArg<String>? loginHint;

  final TfArg<List<Object?>>? programmaticClients;

  Map<String, Object?> encode() => {
    if (clientId != null) 'client_id': clientId!.toTfJson(),
    if (clientSecret != null) 'client_secret': clientSecret!.toTfJson(),
    if (loginHint != null) 'login_hint': loginHint!.toTfJson(),
    if (programmaticClients != null)
      'programmatic_clients': programmaticClients!.toTfJson(),
  };
}

/// Typed helper for the `access_settings.reauth_settings` block of
/// `google_iap_settings` (derived from provider schema).
@immutable
final class IapSettingsAccessSettingsReauthSettings {
  const IapSettingsAccessSettingsReauthSettings({
    required this.maxAge,
    required this.method,
    required this.policyType,
  });

  final TfArg<String> maxAge;

  final TfArg<IapSettingsAccessSettingsReauthSettingsMethod> method;

  final TfArg<IapSettingsAccessSettingsReauthSettingsPolicyType> policyType;

  Map<String, Object?> encode() => {
    'max_age': maxAge.toTfJson(),
    'method': method.toTfJson(),
    'policy_type': policyType.toTfJson(),
  };
}

/// `method` — derived from the provider schema description.
enum IapSettingsAccessSettingsReauthSettingsMethod implements TerraformEnum {
  login('LOGIN'),
  secureKey('SECURE_KEY'),
  enrolledSecondFactors('ENROLLED_SECOND_FACTORS');

  const IapSettingsAccessSettingsReauthSettingsMethod(this.terraformValue);
  @override
  final String terraformValue;
}

/// `policy_type` — derived from the provider schema description.
enum IapSettingsAccessSettingsReauthSettingsPolicyType
    implements TerraformEnum {
  minimum('MINIMUM'),
  defaultCase('DEFAULT');

  const IapSettingsAccessSettingsReauthSettingsPolicyType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `access_settings.workforce_identity_settings` block of
/// `google_iap_settings` (derived from provider schema).
@immutable
final class IapSettingsAccessSettingsWorkforceIdentitySettings {
  const IapSettingsAccessSettingsWorkforceIdentitySettings({
    this.workforcePools,
    this.oauth2,
  });

  final TfArg<List<Object?>>? workforcePools;

  final IapSettingsAccessSettingsWorkforceIdentitySettingsOauth2? oauth2;

  Map<String, Object?> encode() => {
    if (workforcePools != null) 'workforce_pools': workforcePools!.toTfJson(),
    if (oauth2 != null) 'oauth2': oauth2!.encode(),
  };
}

/// Typed helper for the `access_settings.workforce_identity_settings.oauth2` block of
/// `google_iap_settings` (derived from provider schema).
@immutable
final class IapSettingsAccessSettingsWorkforceIdentitySettingsOauth2 {
  const IapSettingsAccessSettingsWorkforceIdentitySettingsOauth2({
    this.clientId,
    this.clientSecret,
  });

  final TfArg<String>? clientId;

  final TfArg<String>? clientSecret;

  Map<String, Object?> encode() => {
    if (clientId != null) 'client_id': clientId!.toTfJson(),
    if (clientSecret != null) 'client_secret': clientSecret!.toTfJson(),
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

  final IapSettingsApplicationSettingsAccessDeniedPageSettings?
  accessDeniedPageSettings;

  final IapSettingsApplicationSettingsAttributePropagationSettings?
  attributePropagationSettings;

  final IapSettingsApplicationSettingsCsmSettings? csmSettings;

  Map<String, Object?> encode() => {
    if (cookieDomain != null) 'cookie_domain': cookieDomain!.toTfJson(),
    if (accessDeniedPageSettings != null)
      'access_denied_page_settings': accessDeniedPageSettings!.encode(),
    if (attributePropagationSettings != null)
      'attribute_propagation_settings': attributePropagationSettings!.encode(),
    if (csmSettings != null) 'csm_settings': csmSettings!.encode(),
  };
}

/// Typed helper for the `application_settings.access_denied_page_settings` block of
/// `google_iap_settings` (derived from provider schema).
@immutable
final class IapSettingsApplicationSettingsAccessDeniedPageSettings {
  const IapSettingsApplicationSettingsAccessDeniedPageSettings({
    this.accessDeniedPageUri,
    this.generateTroubleshootingUri,
    this.remediationTokenGenerationEnabled,
  });

  final TfArg<String>? accessDeniedPageUri;

  final TfArg<bool>? generateTroubleshootingUri;

  final TfArg<bool>? remediationTokenGenerationEnabled;

  Map<String, Object?> encode() => {
    if (accessDeniedPageUri != null)
      'access_denied_page_uri': accessDeniedPageUri!.toTfJson(),
    if (generateTroubleshootingUri != null)
      'generate_troubleshooting_uri': generateTroubleshootingUri!.toTfJson(),
    if (remediationTokenGenerationEnabled != null)
      'remediation_token_generation_enabled': remediationTokenGenerationEnabled!
          .toTfJson(),
  };
}

/// Typed helper for the `application_settings.attribute_propagation_settings` block of
/// `google_iap_settings` (derived from provider schema).
@immutable
final class IapSettingsApplicationSettingsAttributePropagationSettings {
  const IapSettingsApplicationSettingsAttributePropagationSettings({
    this.enable,
    this.expression,
    this.outputCredentials,
  });

  final TfArg<bool>? enable;

  final TfArg<String>? expression;

  final List<
    TfArg<
      IapSettingsApplicationSettingsAttributePropagationSettingsOutputCredentials
    >
  >?
  outputCredentials;

  Map<String, Object?> encode() => {
    if (enable != null) 'enable': enable!.toTfJson(),
    if (expression != null) 'expression': expression!.toTfJson(),
    if (outputCredentials != null)
      'output_credentials': [for (final e in outputCredentials!) e.toTfJson()],
  };
}

/// `output_credentials` — derived from the provider schema description.
enum IapSettingsApplicationSettingsAttributePropagationSettingsOutputCredentials
    implements TerraformEnum {
  header('HEADER'),
  jwt('JWT'),
  rctoken('RCTOKEN');

  const IapSettingsApplicationSettingsAttributePropagationSettingsOutputCredentials(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `application_settings.csm_settings` block of
/// `google_iap_settings` (derived from provider schema).
@immutable
final class IapSettingsApplicationSettingsCsmSettings {
  const IapSettingsApplicationSettingsCsmSettings({this.rctokenAud});

  final TfArg<String>? rctokenAud;

  Map<String, Object?> encode() => {
    if (rctokenAud != null) 'rctoken_aud': rctokenAud!.toTfJson(),
  };
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
///   localName: 'web',
///   name: TfArg.literal('projects/my-proj/iap_web'),
/// );
/// ```
final class GoogleIapSettings extends Resource {
  static const String tfType = 'google_iap_settings';

  GoogleIapSettings({
    required super.localName,
    required TfArg<String> name,
    IapSettingsAccessSettings? accessSettings,
    IapSettingsApplicationSettings? applicationSettings,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
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
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleIapSettingsSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}

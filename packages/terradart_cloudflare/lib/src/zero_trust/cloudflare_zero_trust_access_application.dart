// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_zero_trust_access_application`.
const Set<String> _cloudflareZeroTrustAccessApplicationSensitive = <String>{
  'saas_app.client_secret',
  'scim_config.authentication.client_secret',
  'scim_config.authentication.password',
  'scim_config.authentication.token',
};

/// Zero Trust Access Application enum for `type`.
enum ZeroTrustAccessApplicationType implements TerraformEnum {
  selfHosted('self_hosted'),
  saas('saas'),
  ssh('ssh'),
  vnc('vnc'),
  appLauncher('app_launcher'),
  warp('warp'),
  biso('biso'),
  bookmark('bookmark'),
  dashSso('dash_sso'),
  infrastructure('infrastructure'),
  rdp('rdp'),
  mcp('mcp'),
  mcpPortal('mcp_portal'),
  proxyEndpoint('proxy_endpoint');

  const ZeroTrustAccessApplicationType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `cors_headers` block of
/// `cloudflare_zero_trust_access_application` (derived from provider schema).
@immutable
final class ZeroTrustAccessApplicationCorsHeaders {
  const ZeroTrustAccessApplicationCorsHeaders({
    this.allowAllHeaders,
    required this.allowAllMethodsOrAllowedMethods,
    required this.allowAllOriginsOrAllowedOrigins,
    this.allowCredentials,
    this.allowedHeaders,
    this.maxAge,
  });

  final TfArg<bool>? allowAllHeaders;

  final ZeroTrustAccessApplicationCorsHeadersAllowAllMethodsOrAllowedMethods
  allowAllMethodsOrAllowedMethods;

  final ZeroTrustAccessApplicationCorsHeadersAllowAllOriginsOrAllowedOrigins
  allowAllOriginsOrAllowedOrigins;

  final TfArg<bool>? allowCredentials;

  final TfArg<List<Object?>>? allowedHeaders;

  final TfArg<num>? maxAge;

  Map<String, Object?> encode() => {
    if (allowAllHeaders != null)
      'allow_all_headers': allowAllHeaders!.toTfJson(),
    ...allowAllMethodsOrAllowedMethods.encode(),
    ...allowAllOriginsOrAllowedOrigins.encode(),
    if (allowCredentials != null)
      'allow_credentials': allowCredentials!.toTfJson(),
    if (allowedHeaders != null) 'allowed_headers': allowedHeaders!.toTfJson(),
    if (maxAge != null) 'max_age': maxAge!.toTfJson(),
  };
}

/// Exactly one of `allow_all_methods`, `allowed_methods` on the `cors_headers` block of `cloudflare_zero_trust_access_application`: the provider rejects
/// none and more than one, so each variant sets one of them.
sealed class ZeroTrustAccessApplicationCorsHeadersAllowAllMethodsOrAllowedMethods {
  const ZeroTrustAccessApplicationCorsHeadersAllowAllMethodsOrAllowedMethods();

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// Sets `allow_all_methods` (one of the [ZeroTrustAccessApplicationCorsHeadersAllowAllMethodsOrAllowedMethods] choices).
final class ZeroTrustAccessApplicationCorsHeadersAllowAllMethodsOption
    extends
        ZeroTrustAccessApplicationCorsHeadersAllowAllMethodsOrAllowedMethods {
  const ZeroTrustAccessApplicationCorsHeadersAllowAllMethodsOption({
    required this.allowAllMethods,
  });

  final TfArg<bool> allowAllMethods;

  @override
  String get blockKey => 'allow_all_methods';

  @override
  Map<String, Object?> encode() => {
    'allow_all_methods': allowAllMethods.toTfJson(),
  };
}

/// Sets `allowed_methods` (one of the [ZeroTrustAccessApplicationCorsHeadersAllowAllMethodsOrAllowedMethods] choices).
final class ZeroTrustAccessApplicationCorsHeadersAllowedMethodsOption
    extends
        ZeroTrustAccessApplicationCorsHeadersAllowAllMethodsOrAllowedMethods {
  const ZeroTrustAccessApplicationCorsHeadersAllowedMethodsOption({
    required this.allowedMethods,
  });

  final List<TfArg<ZeroTrustAccessApplicationCorsHeadersAllowedMethods>>
  allowedMethods;

  @override
  String get blockKey => 'allowed_methods';

  @override
  Map<String, Object?> encode() => {
    'allowed_methods': [for (final e in allowedMethods) e.toTfJson()],
  };
}

/// Exactly one of `allow_all_origins`, `allowed_origins` on the `cors_headers` block of `cloudflare_zero_trust_access_application`: the provider rejects
/// none and more than one, so each variant sets one of them.
sealed class ZeroTrustAccessApplicationCorsHeadersAllowAllOriginsOrAllowedOrigins {
  const ZeroTrustAccessApplicationCorsHeadersAllowAllOriginsOrAllowedOrigins();

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// Sets `allow_all_origins` (one of the [ZeroTrustAccessApplicationCorsHeadersAllowAllOriginsOrAllowedOrigins] choices).
final class ZeroTrustAccessApplicationCorsHeadersAllowAllOriginsOption
    extends
        ZeroTrustAccessApplicationCorsHeadersAllowAllOriginsOrAllowedOrigins {
  const ZeroTrustAccessApplicationCorsHeadersAllowAllOriginsOption({
    required this.allowAllOrigins,
  });

  final TfArg<bool> allowAllOrigins;

  @override
  String get blockKey => 'allow_all_origins';

  @override
  Map<String, Object?> encode() => {
    'allow_all_origins': allowAllOrigins.toTfJson(),
  };
}

/// Sets `allowed_origins` (one of the [ZeroTrustAccessApplicationCorsHeadersAllowAllOriginsOrAllowedOrigins] choices).
final class ZeroTrustAccessApplicationCorsHeadersAllowedOriginsOption
    extends
        ZeroTrustAccessApplicationCorsHeadersAllowAllOriginsOrAllowedOrigins {
  const ZeroTrustAccessApplicationCorsHeadersAllowedOriginsOption({
    required this.allowedOrigins,
  });

  final TfArg<List<Object?>> allowedOrigins;

  @override
  String get blockKey => 'allowed_origins';

  @override
  Map<String, Object?> encode() => {
    'allowed_origins': allowedOrigins.toTfJson(),
  };
}

/// `allowed_methods` — derived from the provider schema description.
enum ZeroTrustAccessApplicationCorsHeadersAllowedMethods
    implements TerraformEnum {
  get('GET'),
  post('POST'),
  head('HEAD'),
  put('PUT'),
  delete('DELETE'),
  connect('CONNECT'),
  options('OPTIONS'),
  trace('TRACE'),
  patch('PATCH');

  const ZeroTrustAccessApplicationCorsHeadersAllowedMethods(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `destinations` block of
/// `cloudflare_zero_trust_access_application` (derived from provider schema).
@immutable
final class ZeroTrustAccessApplicationDestinations {
  const ZeroTrustAccessApplicationDestinations({
    this.cidr,
    this.hostname,
    this.l4Protocol,
    this.mcpServerId,
    this.portRange,
    this.type,
    this.uri,
    this.vnetId,
    this.workerId,
  });

  final TfArg<String>? cidr;

  final TfArg<String>? hostname;

  final TfArg<ZeroTrustAccessApplicationDestinationsL4Protocol>? l4Protocol;

  final TfArg<String>? mcpServerId;

  final TfArg<String>? portRange;

  final TfArg<ZeroTrustAccessApplicationDestinationsType>? type;

  final TfArg<String>? uri;

  final TfArg<String>? vnetId;

  final TfArg<String>? workerId;

  Map<String, Object?> encode() => {
    if (cidr != null) 'cidr': cidr!.toTfJson(),
    if (hostname != null) 'hostname': hostname!.toTfJson(),
    if (l4Protocol != null) 'l4_protocol': l4Protocol!.toTfJson(),
    if (mcpServerId != null) 'mcp_server_id': mcpServerId!.toTfJson(),
    if (portRange != null) 'port_range': portRange!.toTfJson(),
    if (type != null) 'type': type!.toTfJson(),
    if (uri != null) 'uri': uri!.toTfJson(),
    if (vnetId != null) 'vnet_id': vnetId!.toTfJson(),
    if (workerId != null) 'worker_id': workerId!.toTfJson(),
  };
}

/// `l4_protocol` — derived from the provider schema description.
enum ZeroTrustAccessApplicationDestinationsL4Protocol implements TerraformEnum {
  tcp('tcp'),
  udp('udp');

  const ZeroTrustAccessApplicationDestinationsL4Protocol(this.terraformValue);
  @override
  final String terraformValue;
}

/// `type` — derived from the provider schema description.
enum ZeroTrustAccessApplicationDestinationsType implements TerraformEnum {
  public('public'),
  private('private'),
  viaMcpServerPortal('via_mcp_server_portal'),
  worker('worker'),
  previewWorker('preview_worker'),
  allWorkers('all_workers'),
  allPreviewWorkers('all_preview_workers');

  const ZeroTrustAccessApplicationDestinationsType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `footer_links` block of
/// `cloudflare_zero_trust_access_application` (derived from provider schema).
@immutable
final class ZeroTrustAccessApplicationFooterLinks {
  const ZeroTrustAccessApplicationFooterLinks({
    required this.name,
    required this.url,
  });

  final TfArg<String> name;

  final TfArg<String> url;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'url': url.toTfJson(),
  };
}

/// Typed helper for the `landing_page_design` block of
/// `cloudflare_zero_trust_access_application` (derived from provider schema).
@immutable
final class ZeroTrustAccessApplicationLandingPageDesign {
  const ZeroTrustAccessApplicationLandingPageDesign({
    this.buttonColor,
    this.buttonTextColor,
    this.imageUrl,
    this.message,
    this.title,
  });

  final TfArg<String>? buttonColor;

  final TfArg<String>? buttonTextColor;

  final TfArg<String>? imageUrl;

  final TfArg<String>? message;

  final TfArg<String>? title;

  Map<String, Object?> encode() => {
    if (buttonColor != null) 'button_color': buttonColor!.toTfJson(),
    if (buttonTextColor != null)
      'button_text_color': buttonTextColor!.toTfJson(),
    if (imageUrl != null) 'image_url': imageUrl!.toTfJson(),
    if (message != null) 'message': message!.toTfJson(),
    if (title != null) 'title': title!.toTfJson(),
  };
}

/// Typed helper for the `mfa_config` block of
/// `cloudflare_zero_trust_access_application` (derived from provider schema).
@immutable
final class ZeroTrustAccessApplicationMfaConfig {
  const ZeroTrustAccessApplicationMfaConfig({
    this.allowedAuthenticators,
    this.mfaDisabled,
    this.sessionDuration,
  });

  final List<TfArg<ZeroTrustAccessApplicationMfaConfigAllowedAuthenticators>>?
  allowedAuthenticators;

  final TfArg<bool>? mfaDisabled;

  final TfArg<String>? sessionDuration;

  Map<String, Object?> encode() => {
    if (allowedAuthenticators != null)
      'allowed_authenticators': [
        for (final e in allowedAuthenticators!) e.toTfJson(),
      ],
    if (mfaDisabled != null) 'mfa_disabled': mfaDisabled!.toTfJson(),
    if (sessionDuration != null)
      'session_duration': sessionDuration!.toTfJson(),
  };
}

/// `allowed_authenticators` — derived from the provider schema description.
enum ZeroTrustAccessApplicationMfaConfigAllowedAuthenticators
    implements TerraformEnum {
  totp('totp'),
  biometrics('biometrics'),
  securityKey('security_key');

  const ZeroTrustAccessApplicationMfaConfigAllowedAuthenticators(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `oauth_configuration` block of
/// `cloudflare_zero_trust_access_application` (derived from provider schema).
@immutable
final class ZeroTrustAccessApplicationOauthConfiguration {
  const ZeroTrustAccessApplicationOauthConfiguration({
    this.enabled,
    this.dynamicClientRegistration,
    this.grant,
  });

  final TfArg<bool>? enabled;

  final ZeroTrustAccessApplicationOauthConfigurationDynamicClientRegistration?
  dynamicClientRegistration;

  final ZeroTrustAccessApplicationOauthConfigurationGrant? grant;

  Map<String, Object?> encode() => {
    if (enabled != null) 'enabled': enabled!.toTfJson(),
    if (dynamicClientRegistration != null)
      'dynamic_client_registration': dynamicClientRegistration!.encode(),
    if (grant != null) 'grant': grant!.encode(),
  };
}

/// Typed helper for the `oauth_configuration.dynamic_client_registration` block of
/// `cloudflare_zero_trust_access_application` (derived from provider schema).
@immutable
final class ZeroTrustAccessApplicationOauthConfigurationDynamicClientRegistration {
  const ZeroTrustAccessApplicationOauthConfigurationDynamicClientRegistration({
    this.allowAnyOnLocalhost,
    this.allowAnyOnLoopback,
    this.allowedUris,
    this.enabled,
  });

  final TfArg<bool>? allowAnyOnLocalhost;

  final TfArg<bool>? allowAnyOnLoopback;

  final TfArg<List<Object?>>? allowedUris;

  final TfArg<bool>? enabled;

  Map<String, Object?> encode() => {
    if (allowAnyOnLocalhost != null)
      'allow_any_on_localhost': allowAnyOnLocalhost!.toTfJson(),
    if (allowAnyOnLoopback != null)
      'allow_any_on_loopback': allowAnyOnLoopback!.toTfJson(),
    if (allowedUris != null) 'allowed_uris': allowedUris!.toTfJson(),
    if (enabled != null) 'enabled': enabled!.toTfJson(),
  };
}

/// Typed helper for the `oauth_configuration.grant` block of
/// `cloudflare_zero_trust_access_application` (derived from provider schema).
@immutable
final class ZeroTrustAccessApplicationOauthConfigurationGrant {
  const ZeroTrustAccessApplicationOauthConfigurationGrant({
    this.accessTokenLifetime,
    this.sessionDuration,
  });

  final TfArg<String>? accessTokenLifetime;

  final TfArg<String>? sessionDuration;

  Map<String, Object?> encode() => {
    if (accessTokenLifetime != null)
      'access_token_lifetime': accessTokenLifetime!.toTfJson(),
    if (sessionDuration != null)
      'session_duration': sessionDuration!.toTfJson(),
  };
}

/// Typed helper for the `policies` block of
/// `cloudflare_zero_trust_access_application` (derived from provider schema).
@immutable
final class ZeroTrustAccessApplicationPolicies {
  const ZeroTrustAccessApplicationPolicies({
    this.decision,
    required this.idOrInclude,
    this.name,
    this.precedence,
    this.connectionRules,
    this.exclude,
    this.mfaConfig,
    this.require,
  });

  final TfArg<ZeroTrustAccessApplicationPoliciesDecision>? decision;

  final ZeroTrustAccessApplicationPoliciesIdOrInclude idOrInclude;

  final TfArg<String>? name;

  final TfArg<num>? precedence;

  final ZeroTrustAccessApplicationPoliciesConnectionRules? connectionRules;

  final List<ZeroTrustAccessApplicationPoliciesExclude>? exclude;

  final ZeroTrustAccessApplicationPoliciesMfaConfig? mfaConfig;

  final List<ZeroTrustAccessApplicationPoliciesRequire>? require;

  Map<String, Object?> encode() => {
    if (decision != null) 'decision': decision!.toTfJson(),
    ...idOrInclude.encode(),
    if (name != null) 'name': name!.toTfJson(),
    if (precedence != null) 'precedence': precedence!.toTfJson(),
    if (connectionRules != null) 'connection_rules': connectionRules!.encode(),
    if (exclude != null) 'exclude': [for (final e in exclude!) e.encode()],
    if (mfaConfig != null) 'mfa_config': mfaConfig!.encode(),
    if (require != null) 'require': [for (final e in require!) e.encode()],
  };
}

/// Exactly one of `id`, `include` on the `policies` block of `cloudflare_zero_trust_access_application`: the provider rejects
/// none and more than one, so each variant sets one of them.
sealed class ZeroTrustAccessApplicationPoliciesIdOrInclude {
  const ZeroTrustAccessApplicationPoliciesIdOrInclude();

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// Sets `id` (one of the [ZeroTrustAccessApplicationPoliciesIdOrInclude] choices).
final class ZeroTrustAccessApplicationPoliciesIdOption
    extends ZeroTrustAccessApplicationPoliciesIdOrInclude {
  const ZeroTrustAccessApplicationPoliciesIdOption({required this.id});

  final TfArg<String> id;

  @override
  String get blockKey => 'id';

  @override
  Map<String, Object?> encode() => {'id': id.toTfJson()};
}

/// Sets `include` (one of the [ZeroTrustAccessApplicationPoliciesIdOrInclude] choices).
final class ZeroTrustAccessApplicationPoliciesIncludeOption
    extends ZeroTrustAccessApplicationPoliciesIdOrInclude {
  const ZeroTrustAccessApplicationPoliciesIncludeOption({
    required this.include,
  });

  final List<ZeroTrustAccessApplicationPoliciesInclude> include;

  @override
  String get blockKey => 'include';

  @override
  Map<String, Object?> encode() => {
    'include': [for (final e in include) e.encode()],
  };
}

/// `decision` — derived from the provider schema description.
enum ZeroTrustAccessApplicationPoliciesDecision implements TerraformEnum {
  allow('allow'),
  deny('deny'),
  nonIdentity('non_identity'),
  bypass('bypass');

  const ZeroTrustAccessApplicationPoliciesDecision(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `policies.connection_rules` block of
/// `cloudflare_zero_trust_access_application` (derived from provider schema).
@immutable
final class ZeroTrustAccessApplicationPoliciesConnectionRules {
  const ZeroTrustAccessApplicationPoliciesConnectionRules({this.rdp, this.ssh});

  final ZeroTrustAccessApplicationPoliciesConnectionRulesRdp? rdp;

  final ZeroTrustAccessApplicationPoliciesConnectionRulesSsh? ssh;

  Map<String, Object?> encode() => {
    if (rdp != null) 'rdp': rdp!.encode(),
    if (ssh != null) 'ssh': ssh!.encode(),
  };
}

/// Typed helper for the `policies.connection_rules.rdp` block of
/// `cloudflare_zero_trust_access_application` (derived from provider schema).
@immutable
final class ZeroTrustAccessApplicationPoliciesConnectionRulesRdp {
  const ZeroTrustAccessApplicationPoliciesConnectionRulesRdp({
    this.allowedClipboardLocalToRemoteFormats,
    this.allowedClipboardRemoteToLocalFormats,
  });

  final List<
    TfArg<
      ZeroTrustAccessApplicationPoliciesConnectionRulesRdpAllowedClipboardLocalToRemoteFormats
    >
  >?
  allowedClipboardLocalToRemoteFormats;

  final List<
    TfArg<
      ZeroTrustAccessApplicationPoliciesConnectionRulesRdpAllowedClipboardRemoteToLocalFormats
    >
  >?
  allowedClipboardRemoteToLocalFormats;

  Map<String, Object?> encode() => {
    if (allowedClipboardLocalToRemoteFormats != null)
      'allowed_clipboard_local_to_remote_formats': [
        for (final e in allowedClipboardLocalToRemoteFormats!) e.toTfJson(),
      ],
    if (allowedClipboardRemoteToLocalFormats != null)
      'allowed_clipboard_remote_to_local_formats': [
        for (final e in allowedClipboardRemoteToLocalFormats!) e.toTfJson(),
      ],
  };
}

/// `allowed_clipboard_local_to_remote_formats` — derived from the provider schema description.
enum ZeroTrustAccessApplicationPoliciesConnectionRulesRdpAllowedClipboardLocalToRemoteFormats
    implements TerraformEnum {
  text('text'),
  file('file');

  const ZeroTrustAccessApplicationPoliciesConnectionRulesRdpAllowedClipboardLocalToRemoteFormats(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `allowed_clipboard_remote_to_local_formats` — derived from the provider schema description.
enum ZeroTrustAccessApplicationPoliciesConnectionRulesRdpAllowedClipboardRemoteToLocalFormats
    implements TerraformEnum {
  text('text'),
  file('file');

  const ZeroTrustAccessApplicationPoliciesConnectionRulesRdpAllowedClipboardRemoteToLocalFormats(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `policies.connection_rules.ssh` block of
/// `cloudflare_zero_trust_access_application` (derived from provider schema).
@immutable
final class ZeroTrustAccessApplicationPoliciesConnectionRulesSsh {
  const ZeroTrustAccessApplicationPoliciesConnectionRulesSsh({
    this.allowEmailAlias,
    required this.usernames,
  });

  final TfArg<bool>? allowEmailAlias;

  final TfArg<List<Object?>> usernames;

  Map<String, Object?> encode() => {
    if (allowEmailAlias != null)
      'allow_email_alias': allowEmailAlias!.toTfJson(),
    'usernames': usernames.toTfJson(),
  };
}

/// Typed helper for the `policies.exclude` block of
/// `cloudflare_zero_trust_access_application` (derived from provider schema).
@immutable
final class ZeroTrustAccessApplicationPoliciesExclude {
  const ZeroTrustAccessApplicationPoliciesExclude({
    this.anyValidServiceToken,
    this.authContext,
    this.authMethod,
    this.azureAd,
    this.certificate,
    this.commonName,
    this.devicePosture,
    this.email,
    this.emailDomain,
    this.emailList,
    this.everyone,
    this.externalEvaluation,
    this.geo,
    this.githubOrganization,
    this.group,
    this.gsuite,
    this.ip,
    this.ipList,
    this.linkedAppToken,
    this.loginMethod,
    this.oidc,
    this.okta,
    this.saml,
    this.serviceToken,
  });

  final ZeroTrustAccessApplicationPoliciesExcludeAnyValidServiceToken?
  anyValidServiceToken;

  final ZeroTrustAccessApplicationPoliciesExcludeAuthContext? authContext;

  final ZeroTrustAccessApplicationPoliciesExcludeAuthMethod? authMethod;

  final ZeroTrustAccessApplicationPoliciesExcludeAzureAd? azureAd;

  final ZeroTrustAccessApplicationPoliciesExcludeCertificate? certificate;

  final ZeroTrustAccessApplicationPoliciesExcludeCommonName? commonName;

  final ZeroTrustAccessApplicationPoliciesExcludeDevicePosture? devicePosture;

  final ZeroTrustAccessApplicationPoliciesExcludeEmail? email;

  final ZeroTrustAccessApplicationPoliciesExcludeEmailDomain? emailDomain;

  final ZeroTrustAccessApplicationPoliciesExcludeEmailList? emailList;

  final ZeroTrustAccessApplicationPoliciesExcludeEveryone? everyone;

  final ZeroTrustAccessApplicationPoliciesExcludeExternalEvaluation?
  externalEvaluation;

  final ZeroTrustAccessApplicationPoliciesExcludeGeo? geo;

  final ZeroTrustAccessApplicationPoliciesExcludeGithubOrganization?
  githubOrganization;

  final ZeroTrustAccessApplicationPoliciesExcludeGroup? group;

  final ZeroTrustAccessApplicationPoliciesExcludeGsuite? gsuite;

  final ZeroTrustAccessApplicationPoliciesExcludeIp? ip;

  final ZeroTrustAccessApplicationPoliciesExcludeIpList? ipList;

  final ZeroTrustAccessApplicationPoliciesExcludeLinkedAppToken? linkedAppToken;

  final ZeroTrustAccessApplicationPoliciesExcludeLoginMethod? loginMethod;

  final ZeroTrustAccessApplicationPoliciesExcludeOidc? oidc;

  final ZeroTrustAccessApplicationPoliciesExcludeOkta? okta;

  final ZeroTrustAccessApplicationPoliciesExcludeSaml? saml;

  final ZeroTrustAccessApplicationPoliciesExcludeServiceToken? serviceToken;

  Map<String, Object?> encode() => {
    if (anyValidServiceToken != null)
      'any_valid_service_token': anyValidServiceToken!.encode(),
    if (authContext != null) 'auth_context': authContext!.encode(),
    if (authMethod != null) 'auth_method': authMethod!.encode(),
    if (azureAd != null) 'azure_ad': azureAd!.encode(),
    if (certificate != null) 'certificate': certificate!.encode(),
    if (commonName != null) 'common_name': commonName!.encode(),
    if (devicePosture != null) 'device_posture': devicePosture!.encode(),
    if (email != null) 'email': email!.encode(),
    if (emailDomain != null) 'email_domain': emailDomain!.encode(),
    if (emailList != null) 'email_list': emailList!.encode(),
    if (everyone != null) 'everyone': everyone!.encode(),
    if (externalEvaluation != null)
      'external_evaluation': externalEvaluation!.encode(),
    if (geo != null) 'geo': geo!.encode(),
    if (githubOrganization != null)
      'github_organization': githubOrganization!.encode(),
    if (group != null) 'group': group!.encode(),
    if (gsuite != null) 'gsuite': gsuite!.encode(),
    if (ip != null) 'ip': ip!.encode(),
    if (ipList != null) 'ip_list': ipList!.encode(),
    if (linkedAppToken != null) 'linked_app_token': linkedAppToken!.encode(),
    if (loginMethod != null) 'login_method': loginMethod!.encode(),
    if (oidc != null) 'oidc': oidc!.encode(),
    if (okta != null) 'okta': okta!.encode(),
    if (saml != null) 'saml': saml!.encode(),
    if (serviceToken != null) 'service_token': serviceToken!.encode(),
  };
}

/// Typed helper for the `policies.exclude.any_valid_service_token` block of
/// `cloudflare_zero_trust_access_application` (derived from provider schema).
@immutable
final class ZeroTrustAccessApplicationPoliciesExcludeAnyValidServiceToken {
  const ZeroTrustAccessApplicationPoliciesExcludeAnyValidServiceToken();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `policies.exclude.auth_context` block of
/// `cloudflare_zero_trust_access_application` (derived from provider schema).
@immutable
final class ZeroTrustAccessApplicationPoliciesExcludeAuthContext {
  const ZeroTrustAccessApplicationPoliciesExcludeAuthContext({
    required this.acId,
    required this.id,
    required this.identityProviderId,
  });

  final TfArg<String> acId;

  final TfArg<String> id;

  final TfArg<String> identityProviderId;

  Map<String, Object?> encode() => {
    'ac_id': acId.toTfJson(),
    'id': id.toTfJson(),
    'identity_provider_id': identityProviderId.toTfJson(),
  };
}

/// Typed helper for the `policies.exclude.auth_method` block of
/// `cloudflare_zero_trust_access_application` (derived from provider schema).
@immutable
final class ZeroTrustAccessApplicationPoliciesExcludeAuthMethod {
  const ZeroTrustAccessApplicationPoliciesExcludeAuthMethod({
    required this.authMethod,
  });

  final TfArg<String> authMethod;

  Map<String, Object?> encode() => {'auth_method': authMethod.toTfJson()};
}

/// Typed helper for the `policies.exclude.azure_ad` block of
/// `cloudflare_zero_trust_access_application` (derived from provider schema).
@immutable
final class ZeroTrustAccessApplicationPoliciesExcludeAzureAd {
  const ZeroTrustAccessApplicationPoliciesExcludeAzureAd({
    required this.id,
    required this.identityProviderId,
  });

  final TfArg<String> id;

  final TfArg<String> identityProviderId;

  Map<String, Object?> encode() => {
    'id': id.toTfJson(),
    'identity_provider_id': identityProviderId.toTfJson(),
  };
}

/// Typed helper for the `policies.exclude.certificate` block of
/// `cloudflare_zero_trust_access_application` (derived from provider schema).
@immutable
final class ZeroTrustAccessApplicationPoliciesExcludeCertificate {
  const ZeroTrustAccessApplicationPoliciesExcludeCertificate();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `policies.exclude.common_name` block of
/// `cloudflare_zero_trust_access_application` (derived from provider schema).
@immutable
final class ZeroTrustAccessApplicationPoliciesExcludeCommonName {
  const ZeroTrustAccessApplicationPoliciesExcludeCommonName({
    required this.commonName,
  });

  final TfArg<String> commonName;

  Map<String, Object?> encode() => {'common_name': commonName.toTfJson()};
}

/// Typed helper for the `policies.exclude.device_posture` block of
/// `cloudflare_zero_trust_access_application` (derived from provider schema).
@immutable
final class ZeroTrustAccessApplicationPoliciesExcludeDevicePosture {
  const ZeroTrustAccessApplicationPoliciesExcludeDevicePosture({
    required this.integrationUid,
  });

  final TfArg<String> integrationUid;

  Map<String, Object?> encode() => {
    'integration_uid': integrationUid.toTfJson(),
  };
}

/// Typed helper for the `policies.exclude.email` block of
/// `cloudflare_zero_trust_access_application` (derived from provider schema).
@immutable
final class ZeroTrustAccessApplicationPoliciesExcludeEmail {
  const ZeroTrustAccessApplicationPoliciesExcludeEmail({required this.email});

  final TfArg<String> email;

  Map<String, Object?> encode() => {'email': email.toTfJson()};
}

/// Typed helper for the `policies.exclude.email_domain` block of
/// `cloudflare_zero_trust_access_application` (derived from provider schema).
@immutable
final class ZeroTrustAccessApplicationPoliciesExcludeEmailDomain {
  const ZeroTrustAccessApplicationPoliciesExcludeEmailDomain({
    required this.domain,
  });

  final TfArg<String> domain;

  Map<String, Object?> encode() => {'domain': domain.toTfJson()};
}

/// Typed helper for the `policies.exclude.email_list` block of
/// `cloudflare_zero_trust_access_application` (derived from provider schema).
@immutable
final class ZeroTrustAccessApplicationPoliciesExcludeEmailList {
  const ZeroTrustAccessApplicationPoliciesExcludeEmailList({required this.id});

  final TfArg<String> id;

  Map<String, Object?> encode() => {'id': id.toTfJson()};
}

/// Typed helper for the `policies.exclude.everyone` block of
/// `cloudflare_zero_trust_access_application` (derived from provider schema).
@immutable
final class ZeroTrustAccessApplicationPoliciesExcludeEveryone {
  const ZeroTrustAccessApplicationPoliciesExcludeEveryone();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `policies.exclude.external_evaluation` block of
/// `cloudflare_zero_trust_access_application` (derived from provider schema).
@immutable
final class ZeroTrustAccessApplicationPoliciesExcludeExternalEvaluation {
  const ZeroTrustAccessApplicationPoliciesExcludeExternalEvaluation({
    required this.evaluateUrl,
    required this.keysUrl,
  });

  final TfArg<String> evaluateUrl;

  final TfArg<String> keysUrl;

  Map<String, Object?> encode() => {
    'evaluate_url': evaluateUrl.toTfJson(),
    'keys_url': keysUrl.toTfJson(),
  };
}

/// Typed helper for the `policies.exclude.geo` block of
/// `cloudflare_zero_trust_access_application` (derived from provider schema).
@immutable
final class ZeroTrustAccessApplicationPoliciesExcludeGeo {
  const ZeroTrustAccessApplicationPoliciesExcludeGeo({
    required this.countryCode,
  });

  final TfArg<String> countryCode;

  Map<String, Object?> encode() => {'country_code': countryCode.toTfJson()};
}

/// Typed helper for the `policies.exclude.github_organization` block of
/// `cloudflare_zero_trust_access_application` (derived from provider schema).
@immutable
final class ZeroTrustAccessApplicationPoliciesExcludeGithubOrganization {
  const ZeroTrustAccessApplicationPoliciesExcludeGithubOrganization({
    required this.identityProviderId,
    required this.name,
    this.team,
  });

  final TfArg<String> identityProviderId;

  final TfArg<String> name;

  final TfArg<String>? team;

  Map<String, Object?> encode() => {
    'identity_provider_id': identityProviderId.toTfJson(),
    'name': name.toTfJson(),
    if (team != null) 'team': team!.toTfJson(),
  };
}

/// Typed helper for the `policies.exclude.group` block of
/// `cloudflare_zero_trust_access_application` (derived from provider schema).
@immutable
final class ZeroTrustAccessApplicationPoliciesExcludeGroup {
  const ZeroTrustAccessApplicationPoliciesExcludeGroup({required this.id});

  final TfArg<String> id;

  Map<String, Object?> encode() => {'id': id.toTfJson()};
}

/// Typed helper for the `policies.exclude.gsuite` block of
/// `cloudflare_zero_trust_access_application` (derived from provider schema).
@immutable
final class ZeroTrustAccessApplicationPoliciesExcludeGsuite {
  const ZeroTrustAccessApplicationPoliciesExcludeGsuite({
    required this.email,
    required this.identityProviderId,
  });

  final TfArg<String> email;

  final TfArg<String> identityProviderId;

  Map<String, Object?> encode() => {
    'email': email.toTfJson(),
    'identity_provider_id': identityProviderId.toTfJson(),
  };
}

/// Typed helper for the `policies.exclude.ip` block of
/// `cloudflare_zero_trust_access_application` (derived from provider schema).
@immutable
final class ZeroTrustAccessApplicationPoliciesExcludeIp {
  const ZeroTrustAccessApplicationPoliciesExcludeIp({required this.ip});

  final TfArg<String> ip;

  Map<String, Object?> encode() => {'ip': ip.toTfJson()};
}

/// Typed helper for the `policies.exclude.ip_list` block of
/// `cloudflare_zero_trust_access_application` (derived from provider schema).
@immutable
final class ZeroTrustAccessApplicationPoliciesExcludeIpList {
  const ZeroTrustAccessApplicationPoliciesExcludeIpList({required this.id});

  final TfArg<String> id;

  Map<String, Object?> encode() => {'id': id.toTfJson()};
}

/// Typed helper for the `policies.exclude.linked_app_token` block of
/// `cloudflare_zero_trust_access_application` (derived from provider schema).
@immutable
final class ZeroTrustAccessApplicationPoliciesExcludeLinkedAppToken {
  const ZeroTrustAccessApplicationPoliciesExcludeLinkedAppToken({
    required this.appUid,
  });

  final TfArg<String> appUid;

  Map<String, Object?> encode() => {'app_uid': appUid.toTfJson()};
}

/// Typed helper for the `policies.exclude.login_method` block of
/// `cloudflare_zero_trust_access_application` (derived from provider schema).
@immutable
final class ZeroTrustAccessApplicationPoliciesExcludeLoginMethod {
  const ZeroTrustAccessApplicationPoliciesExcludeLoginMethod({
    required this.id,
  });

  final TfArg<String> id;

  Map<String, Object?> encode() => {'id': id.toTfJson()};
}

/// Typed helper for the `policies.exclude.oidc` block of
/// `cloudflare_zero_trust_access_application` (derived from provider schema).
@immutable
final class ZeroTrustAccessApplicationPoliciesExcludeOidc {
  const ZeroTrustAccessApplicationPoliciesExcludeOidc({
    required this.claimName,
    required this.claimValue,
    required this.identityProviderId,
  });

  final TfArg<String> claimName;

  final TfArg<String> claimValue;

  final TfArg<String> identityProviderId;

  Map<String, Object?> encode() => {
    'claim_name': claimName.toTfJson(),
    'claim_value': claimValue.toTfJson(),
    'identity_provider_id': identityProviderId.toTfJson(),
  };
}

/// Typed helper for the `policies.exclude.okta` block of
/// `cloudflare_zero_trust_access_application` (derived from provider schema).
@immutable
final class ZeroTrustAccessApplicationPoliciesExcludeOkta {
  const ZeroTrustAccessApplicationPoliciesExcludeOkta({
    required this.identityProviderId,
    required this.name,
  });

  final TfArg<String> identityProviderId;

  final TfArg<String> name;

  Map<String, Object?> encode() => {
    'identity_provider_id': identityProviderId.toTfJson(),
    'name': name.toTfJson(),
  };
}

/// Typed helper for the `policies.exclude.saml` block of
/// `cloudflare_zero_trust_access_application` (derived from provider schema).
@immutable
final class ZeroTrustAccessApplicationPoliciesExcludeSaml {
  const ZeroTrustAccessApplicationPoliciesExcludeSaml({
    required this.attributeName,
    required this.attributeValue,
    required this.identityProviderId,
  });

  final TfArg<String> attributeName;

  final TfArg<String> attributeValue;

  final TfArg<String> identityProviderId;

  Map<String, Object?> encode() => {
    'attribute_name': attributeName.toTfJson(),
    'attribute_value': attributeValue.toTfJson(),
    'identity_provider_id': identityProviderId.toTfJson(),
  };
}

/// Typed helper for the `policies.exclude.service_token` block of
/// `cloudflare_zero_trust_access_application` (derived from provider schema).
@immutable
final class ZeroTrustAccessApplicationPoliciesExcludeServiceToken {
  const ZeroTrustAccessApplicationPoliciesExcludeServiceToken({
    required this.tokenId,
  });

  final TfArg<String> tokenId;

  Map<String, Object?> encode() => {'token_id': tokenId.toTfJson()};
}

/// Typed helper for the `policies.include` block of
/// `cloudflare_zero_trust_access_application` (derived from provider schema).
@immutable
final class ZeroTrustAccessApplicationPoliciesInclude {
  const ZeroTrustAccessApplicationPoliciesInclude({
    this.anyValidServiceToken,
    this.authContext,
    this.authMethod,
    this.azureAd,
    this.certificate,
    this.commonName,
    this.devicePosture,
    this.email,
    this.emailDomain,
    this.emailList,
    this.everyone,
    this.externalEvaluation,
    this.geo,
    this.githubOrganization,
    this.group,
    this.gsuite,
    this.ip,
    this.ipList,
    this.linkedAppToken,
    this.loginMethod,
    this.oidc,
    this.okta,
    this.saml,
    this.serviceToken,
  });

  final ZeroTrustAccessApplicationPoliciesIncludeAnyValidServiceToken?
  anyValidServiceToken;

  final ZeroTrustAccessApplicationPoliciesIncludeAuthContext? authContext;

  final ZeroTrustAccessApplicationPoliciesIncludeAuthMethod? authMethod;

  final ZeroTrustAccessApplicationPoliciesIncludeAzureAd? azureAd;

  final ZeroTrustAccessApplicationPoliciesIncludeCertificate? certificate;

  final ZeroTrustAccessApplicationPoliciesIncludeCommonName? commonName;

  final ZeroTrustAccessApplicationPoliciesIncludeDevicePosture? devicePosture;

  final ZeroTrustAccessApplicationPoliciesIncludeEmail? email;

  final ZeroTrustAccessApplicationPoliciesIncludeEmailDomain? emailDomain;

  final ZeroTrustAccessApplicationPoliciesIncludeEmailList? emailList;

  final ZeroTrustAccessApplicationPoliciesIncludeEveryone? everyone;

  final ZeroTrustAccessApplicationPoliciesIncludeExternalEvaluation?
  externalEvaluation;

  final ZeroTrustAccessApplicationPoliciesIncludeGeo? geo;

  final ZeroTrustAccessApplicationPoliciesIncludeGithubOrganization?
  githubOrganization;

  final ZeroTrustAccessApplicationPoliciesIncludeGroup? group;

  final ZeroTrustAccessApplicationPoliciesIncludeGsuite? gsuite;

  final ZeroTrustAccessApplicationPoliciesIncludeIp? ip;

  final ZeroTrustAccessApplicationPoliciesIncludeIpList? ipList;

  final ZeroTrustAccessApplicationPoliciesIncludeLinkedAppToken? linkedAppToken;

  final ZeroTrustAccessApplicationPoliciesIncludeLoginMethod? loginMethod;

  final ZeroTrustAccessApplicationPoliciesIncludeOidc? oidc;

  final ZeroTrustAccessApplicationPoliciesIncludeOkta? okta;

  final ZeroTrustAccessApplicationPoliciesIncludeSaml? saml;

  final ZeroTrustAccessApplicationPoliciesIncludeServiceToken? serviceToken;

  Map<String, Object?> encode() => {
    if (anyValidServiceToken != null)
      'any_valid_service_token': anyValidServiceToken!.encode(),
    if (authContext != null) 'auth_context': authContext!.encode(),
    if (authMethod != null) 'auth_method': authMethod!.encode(),
    if (azureAd != null) 'azure_ad': azureAd!.encode(),
    if (certificate != null) 'certificate': certificate!.encode(),
    if (commonName != null) 'common_name': commonName!.encode(),
    if (devicePosture != null) 'device_posture': devicePosture!.encode(),
    if (email != null) 'email': email!.encode(),
    if (emailDomain != null) 'email_domain': emailDomain!.encode(),
    if (emailList != null) 'email_list': emailList!.encode(),
    if (everyone != null) 'everyone': everyone!.encode(),
    if (externalEvaluation != null)
      'external_evaluation': externalEvaluation!.encode(),
    if (geo != null) 'geo': geo!.encode(),
    if (githubOrganization != null)
      'github_organization': githubOrganization!.encode(),
    if (group != null) 'group': group!.encode(),
    if (gsuite != null) 'gsuite': gsuite!.encode(),
    if (ip != null) 'ip': ip!.encode(),
    if (ipList != null) 'ip_list': ipList!.encode(),
    if (linkedAppToken != null) 'linked_app_token': linkedAppToken!.encode(),
    if (loginMethod != null) 'login_method': loginMethod!.encode(),
    if (oidc != null) 'oidc': oidc!.encode(),
    if (okta != null) 'okta': okta!.encode(),
    if (saml != null) 'saml': saml!.encode(),
    if (serviceToken != null) 'service_token': serviceToken!.encode(),
  };
}

/// Typed helper for the `policies.include.any_valid_service_token` block of
/// `cloudflare_zero_trust_access_application` (derived from provider schema).
@immutable
final class ZeroTrustAccessApplicationPoliciesIncludeAnyValidServiceToken {
  const ZeroTrustAccessApplicationPoliciesIncludeAnyValidServiceToken();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `policies.include.auth_context` block of
/// `cloudflare_zero_trust_access_application` (derived from provider schema).
@immutable
final class ZeroTrustAccessApplicationPoliciesIncludeAuthContext {
  const ZeroTrustAccessApplicationPoliciesIncludeAuthContext({
    required this.acId,
    required this.id,
    required this.identityProviderId,
  });

  final TfArg<String> acId;

  final TfArg<String> id;

  final TfArg<String> identityProviderId;

  Map<String, Object?> encode() => {
    'ac_id': acId.toTfJson(),
    'id': id.toTfJson(),
    'identity_provider_id': identityProviderId.toTfJson(),
  };
}

/// Typed helper for the `policies.include.auth_method` block of
/// `cloudflare_zero_trust_access_application` (derived from provider schema).
@immutable
final class ZeroTrustAccessApplicationPoliciesIncludeAuthMethod {
  const ZeroTrustAccessApplicationPoliciesIncludeAuthMethod({
    required this.authMethod,
  });

  final TfArg<String> authMethod;

  Map<String, Object?> encode() => {'auth_method': authMethod.toTfJson()};
}

/// Typed helper for the `policies.include.azure_ad` block of
/// `cloudflare_zero_trust_access_application` (derived from provider schema).
@immutable
final class ZeroTrustAccessApplicationPoliciesIncludeAzureAd {
  const ZeroTrustAccessApplicationPoliciesIncludeAzureAd({
    required this.id,
    required this.identityProviderId,
  });

  final TfArg<String> id;

  final TfArg<String> identityProviderId;

  Map<String, Object?> encode() => {
    'id': id.toTfJson(),
    'identity_provider_id': identityProviderId.toTfJson(),
  };
}

/// Typed helper for the `policies.include.certificate` block of
/// `cloudflare_zero_trust_access_application` (derived from provider schema).
@immutable
final class ZeroTrustAccessApplicationPoliciesIncludeCertificate {
  const ZeroTrustAccessApplicationPoliciesIncludeCertificate();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `policies.include.common_name` block of
/// `cloudflare_zero_trust_access_application` (derived from provider schema).
@immutable
final class ZeroTrustAccessApplicationPoliciesIncludeCommonName {
  const ZeroTrustAccessApplicationPoliciesIncludeCommonName({
    required this.commonName,
  });

  final TfArg<String> commonName;

  Map<String, Object?> encode() => {'common_name': commonName.toTfJson()};
}

/// Typed helper for the `policies.include.device_posture` block of
/// `cloudflare_zero_trust_access_application` (derived from provider schema).
@immutable
final class ZeroTrustAccessApplicationPoliciesIncludeDevicePosture {
  const ZeroTrustAccessApplicationPoliciesIncludeDevicePosture({
    required this.integrationUid,
  });

  final TfArg<String> integrationUid;

  Map<String, Object?> encode() => {
    'integration_uid': integrationUid.toTfJson(),
  };
}

/// Typed helper for the `policies.include.email` block of
/// `cloudflare_zero_trust_access_application` (derived from provider schema).
@immutable
final class ZeroTrustAccessApplicationPoliciesIncludeEmail {
  const ZeroTrustAccessApplicationPoliciesIncludeEmail({required this.email});

  final TfArg<String> email;

  Map<String, Object?> encode() => {'email': email.toTfJson()};
}

/// Typed helper for the `policies.include.email_domain` block of
/// `cloudflare_zero_trust_access_application` (derived from provider schema).
@immutable
final class ZeroTrustAccessApplicationPoliciesIncludeEmailDomain {
  const ZeroTrustAccessApplicationPoliciesIncludeEmailDomain({
    required this.domain,
  });

  final TfArg<String> domain;

  Map<String, Object?> encode() => {'domain': domain.toTfJson()};
}

/// Typed helper for the `policies.include.email_list` block of
/// `cloudflare_zero_trust_access_application` (derived from provider schema).
@immutable
final class ZeroTrustAccessApplicationPoliciesIncludeEmailList {
  const ZeroTrustAccessApplicationPoliciesIncludeEmailList({required this.id});

  final TfArg<String> id;

  Map<String, Object?> encode() => {'id': id.toTfJson()};
}

/// Typed helper for the `policies.include.everyone` block of
/// `cloudflare_zero_trust_access_application` (derived from provider schema).
@immutable
final class ZeroTrustAccessApplicationPoliciesIncludeEveryone {
  const ZeroTrustAccessApplicationPoliciesIncludeEveryone();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `policies.include.external_evaluation` block of
/// `cloudflare_zero_trust_access_application` (derived from provider schema).
@immutable
final class ZeroTrustAccessApplicationPoliciesIncludeExternalEvaluation {
  const ZeroTrustAccessApplicationPoliciesIncludeExternalEvaluation({
    required this.evaluateUrl,
    required this.keysUrl,
  });

  final TfArg<String> evaluateUrl;

  final TfArg<String> keysUrl;

  Map<String, Object?> encode() => {
    'evaluate_url': evaluateUrl.toTfJson(),
    'keys_url': keysUrl.toTfJson(),
  };
}

/// Typed helper for the `policies.include.geo` block of
/// `cloudflare_zero_trust_access_application` (derived from provider schema).
@immutable
final class ZeroTrustAccessApplicationPoliciesIncludeGeo {
  const ZeroTrustAccessApplicationPoliciesIncludeGeo({
    required this.countryCode,
  });

  final TfArg<String> countryCode;

  Map<String, Object?> encode() => {'country_code': countryCode.toTfJson()};
}

/// Typed helper for the `policies.include.github_organization` block of
/// `cloudflare_zero_trust_access_application` (derived from provider schema).
@immutable
final class ZeroTrustAccessApplicationPoliciesIncludeGithubOrganization {
  const ZeroTrustAccessApplicationPoliciesIncludeGithubOrganization({
    required this.identityProviderId,
    required this.name,
    this.team,
  });

  final TfArg<String> identityProviderId;

  final TfArg<String> name;

  final TfArg<String>? team;

  Map<String, Object?> encode() => {
    'identity_provider_id': identityProviderId.toTfJson(),
    'name': name.toTfJson(),
    if (team != null) 'team': team!.toTfJson(),
  };
}

/// Typed helper for the `policies.include.group` block of
/// `cloudflare_zero_trust_access_application` (derived from provider schema).
@immutable
final class ZeroTrustAccessApplicationPoliciesIncludeGroup {
  const ZeroTrustAccessApplicationPoliciesIncludeGroup({required this.id});

  final TfArg<String> id;

  Map<String, Object?> encode() => {'id': id.toTfJson()};
}

/// Typed helper for the `policies.include.gsuite` block of
/// `cloudflare_zero_trust_access_application` (derived from provider schema).
@immutable
final class ZeroTrustAccessApplicationPoliciesIncludeGsuite {
  const ZeroTrustAccessApplicationPoliciesIncludeGsuite({
    required this.email,
    required this.identityProviderId,
  });

  final TfArg<String> email;

  final TfArg<String> identityProviderId;

  Map<String, Object?> encode() => {
    'email': email.toTfJson(),
    'identity_provider_id': identityProviderId.toTfJson(),
  };
}

/// Typed helper for the `policies.include.ip` block of
/// `cloudflare_zero_trust_access_application` (derived from provider schema).
@immutable
final class ZeroTrustAccessApplicationPoliciesIncludeIp {
  const ZeroTrustAccessApplicationPoliciesIncludeIp({required this.ip});

  final TfArg<String> ip;

  Map<String, Object?> encode() => {'ip': ip.toTfJson()};
}

/// Typed helper for the `policies.include.ip_list` block of
/// `cloudflare_zero_trust_access_application` (derived from provider schema).
@immutable
final class ZeroTrustAccessApplicationPoliciesIncludeIpList {
  const ZeroTrustAccessApplicationPoliciesIncludeIpList({required this.id});

  final TfArg<String> id;

  Map<String, Object?> encode() => {'id': id.toTfJson()};
}

/// Typed helper for the `policies.include.linked_app_token` block of
/// `cloudflare_zero_trust_access_application` (derived from provider schema).
@immutable
final class ZeroTrustAccessApplicationPoliciesIncludeLinkedAppToken {
  const ZeroTrustAccessApplicationPoliciesIncludeLinkedAppToken({
    required this.appUid,
  });

  final TfArg<String> appUid;

  Map<String, Object?> encode() => {'app_uid': appUid.toTfJson()};
}

/// Typed helper for the `policies.include.login_method` block of
/// `cloudflare_zero_trust_access_application` (derived from provider schema).
@immutable
final class ZeroTrustAccessApplicationPoliciesIncludeLoginMethod {
  const ZeroTrustAccessApplicationPoliciesIncludeLoginMethod({
    required this.id,
  });

  final TfArg<String> id;

  Map<String, Object?> encode() => {'id': id.toTfJson()};
}

/// Typed helper for the `policies.include.oidc` block of
/// `cloudflare_zero_trust_access_application` (derived from provider schema).
@immutable
final class ZeroTrustAccessApplicationPoliciesIncludeOidc {
  const ZeroTrustAccessApplicationPoliciesIncludeOidc({
    required this.claimName,
    required this.claimValue,
    required this.identityProviderId,
  });

  final TfArg<String> claimName;

  final TfArg<String> claimValue;

  final TfArg<String> identityProviderId;

  Map<String, Object?> encode() => {
    'claim_name': claimName.toTfJson(),
    'claim_value': claimValue.toTfJson(),
    'identity_provider_id': identityProviderId.toTfJson(),
  };
}

/// Typed helper for the `policies.include.okta` block of
/// `cloudflare_zero_trust_access_application` (derived from provider schema).
@immutable
final class ZeroTrustAccessApplicationPoliciesIncludeOkta {
  const ZeroTrustAccessApplicationPoliciesIncludeOkta({
    required this.identityProviderId,
    required this.name,
  });

  final TfArg<String> identityProviderId;

  final TfArg<String> name;

  Map<String, Object?> encode() => {
    'identity_provider_id': identityProviderId.toTfJson(),
    'name': name.toTfJson(),
  };
}

/// Typed helper for the `policies.include.saml` block of
/// `cloudflare_zero_trust_access_application` (derived from provider schema).
@immutable
final class ZeroTrustAccessApplicationPoliciesIncludeSaml {
  const ZeroTrustAccessApplicationPoliciesIncludeSaml({
    required this.attributeName,
    required this.attributeValue,
    required this.identityProviderId,
  });

  final TfArg<String> attributeName;

  final TfArg<String> attributeValue;

  final TfArg<String> identityProviderId;

  Map<String, Object?> encode() => {
    'attribute_name': attributeName.toTfJson(),
    'attribute_value': attributeValue.toTfJson(),
    'identity_provider_id': identityProviderId.toTfJson(),
  };
}

/// Typed helper for the `policies.include.service_token` block of
/// `cloudflare_zero_trust_access_application` (derived from provider schema).
@immutable
final class ZeroTrustAccessApplicationPoliciesIncludeServiceToken {
  const ZeroTrustAccessApplicationPoliciesIncludeServiceToken({
    required this.tokenId,
  });

  final TfArg<String> tokenId;

  Map<String, Object?> encode() => {'token_id': tokenId.toTfJson()};
}

/// Typed helper for the `policies.mfa_config` block of
/// `cloudflare_zero_trust_access_application` (derived from provider schema).
@immutable
final class ZeroTrustAccessApplicationPoliciesMfaConfig {
  const ZeroTrustAccessApplicationPoliciesMfaConfig({
    this.allowedAuthenticators,
    this.mfaDisabled,
    this.sessionDuration,
  });

  final List<
    TfArg<ZeroTrustAccessApplicationPoliciesMfaConfigAllowedAuthenticators>
  >?
  allowedAuthenticators;

  final TfArg<bool>? mfaDisabled;

  final TfArg<String>? sessionDuration;

  Map<String, Object?> encode() => {
    if (allowedAuthenticators != null)
      'allowed_authenticators': [
        for (final e in allowedAuthenticators!) e.toTfJson(),
      ],
    if (mfaDisabled != null) 'mfa_disabled': mfaDisabled!.toTfJson(),
    if (sessionDuration != null)
      'session_duration': sessionDuration!.toTfJson(),
  };
}

/// `allowed_authenticators` — derived from the provider schema description.
enum ZeroTrustAccessApplicationPoliciesMfaConfigAllowedAuthenticators
    implements TerraformEnum {
  totp('totp'),
  biometrics('biometrics'),
  securityKey('security_key'),
  sshPivKey('ssh_piv_key');

  const ZeroTrustAccessApplicationPoliciesMfaConfigAllowedAuthenticators(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `policies.require` block of
/// `cloudflare_zero_trust_access_application` (derived from provider schema).
@immutable
final class ZeroTrustAccessApplicationPoliciesRequire {
  const ZeroTrustAccessApplicationPoliciesRequire({
    this.anyValidServiceToken,
    this.authContext,
    this.authMethod,
    this.azureAd,
    this.certificate,
    this.commonName,
    this.devicePosture,
    this.email,
    this.emailDomain,
    this.emailList,
    this.everyone,
    this.externalEvaluation,
    this.geo,
    this.githubOrganization,
    this.group,
    this.gsuite,
    this.ip,
    this.ipList,
    this.linkedAppToken,
    this.loginMethod,
    this.oidc,
    this.okta,
    this.saml,
    this.serviceToken,
  });

  final ZeroTrustAccessApplicationPoliciesRequireAnyValidServiceToken?
  anyValidServiceToken;

  final ZeroTrustAccessApplicationPoliciesRequireAuthContext? authContext;

  final ZeroTrustAccessApplicationPoliciesRequireAuthMethod? authMethod;

  final ZeroTrustAccessApplicationPoliciesRequireAzureAd? azureAd;

  final ZeroTrustAccessApplicationPoliciesRequireCertificate? certificate;

  final ZeroTrustAccessApplicationPoliciesRequireCommonName? commonName;

  final ZeroTrustAccessApplicationPoliciesRequireDevicePosture? devicePosture;

  final ZeroTrustAccessApplicationPoliciesRequireEmail? email;

  final ZeroTrustAccessApplicationPoliciesRequireEmailDomain? emailDomain;

  final ZeroTrustAccessApplicationPoliciesRequireEmailList? emailList;

  final ZeroTrustAccessApplicationPoliciesRequireEveryone? everyone;

  final ZeroTrustAccessApplicationPoliciesRequireExternalEvaluation?
  externalEvaluation;

  final ZeroTrustAccessApplicationPoliciesRequireGeo? geo;

  final ZeroTrustAccessApplicationPoliciesRequireGithubOrganization?
  githubOrganization;

  final ZeroTrustAccessApplicationPoliciesRequireGroup? group;

  final ZeroTrustAccessApplicationPoliciesRequireGsuite? gsuite;

  final ZeroTrustAccessApplicationPoliciesRequireIp? ip;

  final ZeroTrustAccessApplicationPoliciesRequireIpList? ipList;

  final ZeroTrustAccessApplicationPoliciesRequireLinkedAppToken? linkedAppToken;

  final ZeroTrustAccessApplicationPoliciesRequireLoginMethod? loginMethod;

  final ZeroTrustAccessApplicationPoliciesRequireOidc? oidc;

  final ZeroTrustAccessApplicationPoliciesRequireOkta? okta;

  final ZeroTrustAccessApplicationPoliciesRequireSaml? saml;

  final ZeroTrustAccessApplicationPoliciesRequireServiceToken? serviceToken;

  Map<String, Object?> encode() => {
    if (anyValidServiceToken != null)
      'any_valid_service_token': anyValidServiceToken!.encode(),
    if (authContext != null) 'auth_context': authContext!.encode(),
    if (authMethod != null) 'auth_method': authMethod!.encode(),
    if (azureAd != null) 'azure_ad': azureAd!.encode(),
    if (certificate != null) 'certificate': certificate!.encode(),
    if (commonName != null) 'common_name': commonName!.encode(),
    if (devicePosture != null) 'device_posture': devicePosture!.encode(),
    if (email != null) 'email': email!.encode(),
    if (emailDomain != null) 'email_domain': emailDomain!.encode(),
    if (emailList != null) 'email_list': emailList!.encode(),
    if (everyone != null) 'everyone': everyone!.encode(),
    if (externalEvaluation != null)
      'external_evaluation': externalEvaluation!.encode(),
    if (geo != null) 'geo': geo!.encode(),
    if (githubOrganization != null)
      'github_organization': githubOrganization!.encode(),
    if (group != null) 'group': group!.encode(),
    if (gsuite != null) 'gsuite': gsuite!.encode(),
    if (ip != null) 'ip': ip!.encode(),
    if (ipList != null) 'ip_list': ipList!.encode(),
    if (linkedAppToken != null) 'linked_app_token': linkedAppToken!.encode(),
    if (loginMethod != null) 'login_method': loginMethod!.encode(),
    if (oidc != null) 'oidc': oidc!.encode(),
    if (okta != null) 'okta': okta!.encode(),
    if (saml != null) 'saml': saml!.encode(),
    if (serviceToken != null) 'service_token': serviceToken!.encode(),
  };
}

/// Typed helper for the `policies.require.any_valid_service_token` block of
/// `cloudflare_zero_trust_access_application` (derived from provider schema).
@immutable
final class ZeroTrustAccessApplicationPoliciesRequireAnyValidServiceToken {
  const ZeroTrustAccessApplicationPoliciesRequireAnyValidServiceToken();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `policies.require.auth_context` block of
/// `cloudflare_zero_trust_access_application` (derived from provider schema).
@immutable
final class ZeroTrustAccessApplicationPoliciesRequireAuthContext {
  const ZeroTrustAccessApplicationPoliciesRequireAuthContext({
    required this.acId,
    required this.id,
    required this.identityProviderId,
  });

  final TfArg<String> acId;

  final TfArg<String> id;

  final TfArg<String> identityProviderId;

  Map<String, Object?> encode() => {
    'ac_id': acId.toTfJson(),
    'id': id.toTfJson(),
    'identity_provider_id': identityProviderId.toTfJson(),
  };
}

/// Typed helper for the `policies.require.auth_method` block of
/// `cloudflare_zero_trust_access_application` (derived from provider schema).
@immutable
final class ZeroTrustAccessApplicationPoliciesRequireAuthMethod {
  const ZeroTrustAccessApplicationPoliciesRequireAuthMethod({
    required this.authMethod,
  });

  final TfArg<String> authMethod;

  Map<String, Object?> encode() => {'auth_method': authMethod.toTfJson()};
}

/// Typed helper for the `policies.require.azure_ad` block of
/// `cloudflare_zero_trust_access_application` (derived from provider schema).
@immutable
final class ZeroTrustAccessApplicationPoliciesRequireAzureAd {
  const ZeroTrustAccessApplicationPoliciesRequireAzureAd({
    required this.id,
    required this.identityProviderId,
  });

  final TfArg<String> id;

  final TfArg<String> identityProviderId;

  Map<String, Object?> encode() => {
    'id': id.toTfJson(),
    'identity_provider_id': identityProviderId.toTfJson(),
  };
}

/// Typed helper for the `policies.require.certificate` block of
/// `cloudflare_zero_trust_access_application` (derived from provider schema).
@immutable
final class ZeroTrustAccessApplicationPoliciesRequireCertificate {
  const ZeroTrustAccessApplicationPoliciesRequireCertificate();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `policies.require.common_name` block of
/// `cloudflare_zero_trust_access_application` (derived from provider schema).
@immutable
final class ZeroTrustAccessApplicationPoliciesRequireCommonName {
  const ZeroTrustAccessApplicationPoliciesRequireCommonName({
    required this.commonName,
  });

  final TfArg<String> commonName;

  Map<String, Object?> encode() => {'common_name': commonName.toTfJson()};
}

/// Typed helper for the `policies.require.device_posture` block of
/// `cloudflare_zero_trust_access_application` (derived from provider schema).
@immutable
final class ZeroTrustAccessApplicationPoliciesRequireDevicePosture {
  const ZeroTrustAccessApplicationPoliciesRequireDevicePosture({
    required this.integrationUid,
  });

  final TfArg<String> integrationUid;

  Map<String, Object?> encode() => {
    'integration_uid': integrationUid.toTfJson(),
  };
}

/// Typed helper for the `policies.require.email` block of
/// `cloudflare_zero_trust_access_application` (derived from provider schema).
@immutable
final class ZeroTrustAccessApplicationPoliciesRequireEmail {
  const ZeroTrustAccessApplicationPoliciesRequireEmail({required this.email});

  final TfArg<String> email;

  Map<String, Object?> encode() => {'email': email.toTfJson()};
}

/// Typed helper for the `policies.require.email_domain` block of
/// `cloudflare_zero_trust_access_application` (derived from provider schema).
@immutable
final class ZeroTrustAccessApplicationPoliciesRequireEmailDomain {
  const ZeroTrustAccessApplicationPoliciesRequireEmailDomain({
    required this.domain,
  });

  final TfArg<String> domain;

  Map<String, Object?> encode() => {'domain': domain.toTfJson()};
}

/// Typed helper for the `policies.require.email_list` block of
/// `cloudflare_zero_trust_access_application` (derived from provider schema).
@immutable
final class ZeroTrustAccessApplicationPoliciesRequireEmailList {
  const ZeroTrustAccessApplicationPoliciesRequireEmailList({required this.id});

  final TfArg<String> id;

  Map<String, Object?> encode() => {'id': id.toTfJson()};
}

/// Typed helper for the `policies.require.everyone` block of
/// `cloudflare_zero_trust_access_application` (derived from provider schema).
@immutable
final class ZeroTrustAccessApplicationPoliciesRequireEveryone {
  const ZeroTrustAccessApplicationPoliciesRequireEveryone();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `policies.require.external_evaluation` block of
/// `cloudflare_zero_trust_access_application` (derived from provider schema).
@immutable
final class ZeroTrustAccessApplicationPoliciesRequireExternalEvaluation {
  const ZeroTrustAccessApplicationPoliciesRequireExternalEvaluation({
    required this.evaluateUrl,
    required this.keysUrl,
  });

  final TfArg<String> evaluateUrl;

  final TfArg<String> keysUrl;

  Map<String, Object?> encode() => {
    'evaluate_url': evaluateUrl.toTfJson(),
    'keys_url': keysUrl.toTfJson(),
  };
}

/// Typed helper for the `policies.require.geo` block of
/// `cloudflare_zero_trust_access_application` (derived from provider schema).
@immutable
final class ZeroTrustAccessApplicationPoliciesRequireGeo {
  const ZeroTrustAccessApplicationPoliciesRequireGeo({
    required this.countryCode,
  });

  final TfArg<String> countryCode;

  Map<String, Object?> encode() => {'country_code': countryCode.toTfJson()};
}

/// Typed helper for the `policies.require.github_organization` block of
/// `cloudflare_zero_trust_access_application` (derived from provider schema).
@immutable
final class ZeroTrustAccessApplicationPoliciesRequireGithubOrganization {
  const ZeroTrustAccessApplicationPoliciesRequireGithubOrganization({
    required this.identityProviderId,
    required this.name,
    this.team,
  });

  final TfArg<String> identityProviderId;

  final TfArg<String> name;

  final TfArg<String>? team;

  Map<String, Object?> encode() => {
    'identity_provider_id': identityProviderId.toTfJson(),
    'name': name.toTfJson(),
    if (team != null) 'team': team!.toTfJson(),
  };
}

/// Typed helper for the `policies.require.group` block of
/// `cloudflare_zero_trust_access_application` (derived from provider schema).
@immutable
final class ZeroTrustAccessApplicationPoliciesRequireGroup {
  const ZeroTrustAccessApplicationPoliciesRequireGroup({required this.id});

  final TfArg<String> id;

  Map<String, Object?> encode() => {'id': id.toTfJson()};
}

/// Typed helper for the `policies.require.gsuite` block of
/// `cloudflare_zero_trust_access_application` (derived from provider schema).
@immutable
final class ZeroTrustAccessApplicationPoliciesRequireGsuite {
  const ZeroTrustAccessApplicationPoliciesRequireGsuite({
    required this.email,
    required this.identityProviderId,
  });

  final TfArg<String> email;

  final TfArg<String> identityProviderId;

  Map<String, Object?> encode() => {
    'email': email.toTfJson(),
    'identity_provider_id': identityProviderId.toTfJson(),
  };
}

/// Typed helper for the `policies.require.ip` block of
/// `cloudflare_zero_trust_access_application` (derived from provider schema).
@immutable
final class ZeroTrustAccessApplicationPoliciesRequireIp {
  const ZeroTrustAccessApplicationPoliciesRequireIp({required this.ip});

  final TfArg<String> ip;

  Map<String, Object?> encode() => {'ip': ip.toTfJson()};
}

/// Typed helper for the `policies.require.ip_list` block of
/// `cloudflare_zero_trust_access_application` (derived from provider schema).
@immutable
final class ZeroTrustAccessApplicationPoliciesRequireIpList {
  const ZeroTrustAccessApplicationPoliciesRequireIpList({required this.id});

  final TfArg<String> id;

  Map<String, Object?> encode() => {'id': id.toTfJson()};
}

/// Typed helper for the `policies.require.linked_app_token` block of
/// `cloudflare_zero_trust_access_application` (derived from provider schema).
@immutable
final class ZeroTrustAccessApplicationPoliciesRequireLinkedAppToken {
  const ZeroTrustAccessApplicationPoliciesRequireLinkedAppToken({
    required this.appUid,
  });

  final TfArg<String> appUid;

  Map<String, Object?> encode() => {'app_uid': appUid.toTfJson()};
}

/// Typed helper for the `policies.require.login_method` block of
/// `cloudflare_zero_trust_access_application` (derived from provider schema).
@immutable
final class ZeroTrustAccessApplicationPoliciesRequireLoginMethod {
  const ZeroTrustAccessApplicationPoliciesRequireLoginMethod({
    required this.id,
  });

  final TfArg<String> id;

  Map<String, Object?> encode() => {'id': id.toTfJson()};
}

/// Typed helper for the `policies.require.oidc` block of
/// `cloudflare_zero_trust_access_application` (derived from provider schema).
@immutable
final class ZeroTrustAccessApplicationPoliciesRequireOidc {
  const ZeroTrustAccessApplicationPoliciesRequireOidc({
    required this.claimName,
    required this.claimValue,
    required this.identityProviderId,
  });

  final TfArg<String> claimName;

  final TfArg<String> claimValue;

  final TfArg<String> identityProviderId;

  Map<String, Object?> encode() => {
    'claim_name': claimName.toTfJson(),
    'claim_value': claimValue.toTfJson(),
    'identity_provider_id': identityProviderId.toTfJson(),
  };
}

/// Typed helper for the `policies.require.okta` block of
/// `cloudflare_zero_trust_access_application` (derived from provider schema).
@immutable
final class ZeroTrustAccessApplicationPoliciesRequireOkta {
  const ZeroTrustAccessApplicationPoliciesRequireOkta({
    required this.identityProviderId,
    required this.name,
  });

  final TfArg<String> identityProviderId;

  final TfArg<String> name;

  Map<String, Object?> encode() => {
    'identity_provider_id': identityProviderId.toTfJson(),
    'name': name.toTfJson(),
  };
}

/// Typed helper for the `policies.require.saml` block of
/// `cloudflare_zero_trust_access_application` (derived from provider schema).
@immutable
final class ZeroTrustAccessApplicationPoliciesRequireSaml {
  const ZeroTrustAccessApplicationPoliciesRequireSaml({
    required this.attributeName,
    required this.attributeValue,
    required this.identityProviderId,
  });

  final TfArg<String> attributeName;

  final TfArg<String> attributeValue;

  final TfArg<String> identityProviderId;

  Map<String, Object?> encode() => {
    'attribute_name': attributeName.toTfJson(),
    'attribute_value': attributeValue.toTfJson(),
    'identity_provider_id': identityProviderId.toTfJson(),
  };
}

/// Typed helper for the `policies.require.service_token` block of
/// `cloudflare_zero_trust_access_application` (derived from provider schema).
@immutable
final class ZeroTrustAccessApplicationPoliciesRequireServiceToken {
  const ZeroTrustAccessApplicationPoliciesRequireServiceToken({
    required this.tokenId,
  });

  final TfArg<String> tokenId;

  Map<String, Object?> encode() => {'token_id': tokenId.toTfJson()};
}

/// Typed helper for the `saas_app` block of
/// `cloudflare_zero_trust_access_application` (derived from provider schema).
@immutable
final class ZeroTrustAccessApplicationSaasApp {
  const ZeroTrustAccessApplicationSaasApp({
    this.accessTokenLifetime,
    this.allowPkceWithoutClientSecret,
    this.appLauncherUrl,
    this.authType,
    this.consumerServiceUrl,
    this.defaultRelayState,
    this.grantTypes,
    this.groupFilterRegex,
    this.idpEntityId,
    this.nameIdFormat,
    this.nameIdTransformJsonata,
    this.redirectUris,
    this.samlAttributeTransformJsonata,
    this.scopes,
    this.spEntityId,
    this.ssoEndpoint,
    this.customAttributes,
    this.customClaims,
    this.hybridAndImplicitOptions,
    this.refreshTokenOptions,
  });

  final TfArg<String>? accessTokenLifetime;

  final TfArg<bool>? allowPkceWithoutClientSecret;

  final TfArg<String>? appLauncherUrl;

  final TfArg<ZeroTrustAccessApplicationSaasAppAuthType>? authType;

  final TfArg<String>? consumerServiceUrl;

  final TfArg<String>? defaultRelayState;

  final List<TfArg<ZeroTrustAccessApplicationSaasAppGrantTypes>>? grantTypes;

  final TfArg<String>? groupFilterRegex;

  final TfArg<String>? idpEntityId;

  final TfArg<ZeroTrustAccessApplicationSaasAppNameIdFormat>? nameIdFormat;

  final TfArg<String>? nameIdTransformJsonata;

  final TfArg<List<Object?>>? redirectUris;

  final TfArg<String>? samlAttributeTransformJsonata;

  final List<TfArg<ZeroTrustAccessApplicationSaasAppScopes>>? scopes;

  final TfArg<String>? spEntityId;

  final TfArg<String>? ssoEndpoint;

  final List<ZeroTrustAccessApplicationSaasAppCustomAttributes>?
  customAttributes;

  final List<ZeroTrustAccessApplicationSaasAppCustomClaims>? customClaims;

  final ZeroTrustAccessApplicationSaasAppHybridAndImplicitOptions?
  hybridAndImplicitOptions;

  final ZeroTrustAccessApplicationSaasAppRefreshTokenOptions?
  refreshTokenOptions;

  Map<String, Object?> encode() => {
    if (accessTokenLifetime != null)
      'access_token_lifetime': accessTokenLifetime!.toTfJson(),
    if (allowPkceWithoutClientSecret != null)
      'allow_pkce_without_client_secret': allowPkceWithoutClientSecret!
          .toTfJson(),
    if (appLauncherUrl != null) 'app_launcher_url': appLauncherUrl!.toTfJson(),
    if (authType != null) 'auth_type': authType!.toTfJson(),
    if (consumerServiceUrl != null)
      'consumer_service_url': consumerServiceUrl!.toTfJson(),
    if (defaultRelayState != null)
      'default_relay_state': defaultRelayState!.toTfJson(),
    if (grantTypes != null)
      'grant_types': [for (final e in grantTypes!) e.toTfJson()],
    if (groupFilterRegex != null)
      'group_filter_regex': groupFilterRegex!.toTfJson(),
    if (idpEntityId != null) 'idp_entity_id': idpEntityId!.toTfJson(),
    if (nameIdFormat != null) 'name_id_format': nameIdFormat!.toTfJson(),
    if (nameIdTransformJsonata != null)
      'name_id_transform_jsonata': nameIdTransformJsonata!.toTfJson(),
    if (redirectUris != null) 'redirect_uris': redirectUris!.toTfJson(),
    if (samlAttributeTransformJsonata != null)
      'saml_attribute_transform_jsonata': samlAttributeTransformJsonata!
          .toTfJson(),
    if (scopes != null) 'scopes': [for (final e in scopes!) e.toTfJson()],
    if (spEntityId != null) 'sp_entity_id': spEntityId!.toTfJson(),
    if (ssoEndpoint != null) 'sso_endpoint': ssoEndpoint!.toTfJson(),
    if (customAttributes != null)
      'custom_attributes': [for (final e in customAttributes!) e.encode()],
    if (customClaims != null)
      'custom_claims': [for (final e in customClaims!) e.encode()],
    if (hybridAndImplicitOptions != null)
      'hybrid_and_implicit_options': hybridAndImplicitOptions!.encode(),
    if (refreshTokenOptions != null)
      'refresh_token_options': refreshTokenOptions!.encode(),
  };
}

/// `auth_type` — derived from the provider schema description.
enum ZeroTrustAccessApplicationSaasAppAuthType implements TerraformEnum {
  saml('saml'),
  oidc('oidc');

  const ZeroTrustAccessApplicationSaasAppAuthType(this.terraformValue);
  @override
  final String terraformValue;
}

/// `grant_types` — derived from the provider schema description.
enum ZeroTrustAccessApplicationSaasAppGrantTypes implements TerraformEnum {
  authorizationCode('authorization_code'),
  authorizationCodeWithPkce('authorization_code_with_pkce'),
  refreshTokens('refresh_tokens'),
  hybrid('hybrid'),
  implicit('implicit');

  const ZeroTrustAccessApplicationSaasAppGrantTypes(this.terraformValue);
  @override
  final String terraformValue;
}

/// `name_id_format` — derived from the provider schema description.
enum ZeroTrustAccessApplicationSaasAppNameIdFormat implements TerraformEnum {
  id('id'),
  email('email');

  const ZeroTrustAccessApplicationSaasAppNameIdFormat(this.terraformValue);
  @override
  final String terraformValue;
}

/// `scopes` — derived from the provider schema description.
enum ZeroTrustAccessApplicationSaasAppScopes implements TerraformEnum {
  openid('openid'),
  groups('groups'),
  email('email'),
  profile('profile');

  const ZeroTrustAccessApplicationSaasAppScopes(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `saas_app.custom_attributes` block of
/// `cloudflare_zero_trust_access_application` (derived from provider schema).
@immutable
final class ZeroTrustAccessApplicationSaasAppCustomAttributes {
  const ZeroTrustAccessApplicationSaasAppCustomAttributes({
    this.friendlyName,
    this.name,
    this.nameFormat,
    this.required,
    this.source,
  });

  final TfArg<String>? friendlyName;

  final TfArg<String>? name;

  final TfArg<ZeroTrustAccessApplicationSaasAppCustomAttributesNameFormat>?
  nameFormat;

  final TfArg<bool>? required;

  final ZeroTrustAccessApplicationSaasAppCustomAttributesSource? source;

  Map<String, Object?> encode() => {
    if (friendlyName != null) 'friendly_name': friendlyName!.toTfJson(),
    if (name != null) 'name': name!.toTfJson(),
    if (nameFormat != null) 'name_format': nameFormat!.toTfJson(),
    if (required != null) 'required': required!.toTfJson(),
    if (source != null) 'source': source!.encode(),
  };
}

/// `name_format` — derived from the provider schema description.
enum ZeroTrustAccessApplicationSaasAppCustomAttributesNameFormat
    implements TerraformEnum {
  urnOasisNamesTcSaml2p0AttrnameFormatUnspecified(
    'urn:oasis:names:tc:SAML:2.0:attrname-format:unspecified',
  ),
  urnOasisNamesTcSaml2p0AttrnameFormatBasic(
    'urn:oasis:names:tc:SAML:2.0:attrname-format:basic',
  ),
  urnOasisNamesTcSaml2p0AttrnameFormatUri(
    'urn:oasis:names:tc:SAML:2.0:attrname-format:uri',
  );

  const ZeroTrustAccessApplicationSaasAppCustomAttributesNameFormat(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `saas_app.custom_attributes.source` block of
/// `cloudflare_zero_trust_access_application` (derived from provider schema).
@immutable
final class ZeroTrustAccessApplicationSaasAppCustomAttributesSource {
  const ZeroTrustAccessApplicationSaasAppCustomAttributesSource({
    this.name,
    this.nameByIdp,
  });

  final TfArg<String>? name;

  final List<ZeroTrustAccessApplicationSaasAppCustomAttributesSourceNameByIdp>?
  nameByIdp;

  Map<String, Object?> encode() => {
    if (name != null) 'name': name!.toTfJson(),
    if (nameByIdp != null)
      'name_by_idp': [for (final e in nameByIdp!) e.encode()],
  };
}

/// Typed helper for the `saas_app.custom_attributes.source.name_by_idp` block of
/// `cloudflare_zero_trust_access_application` (derived from provider schema).
@immutable
final class ZeroTrustAccessApplicationSaasAppCustomAttributesSourceNameByIdp {
  const ZeroTrustAccessApplicationSaasAppCustomAttributesSourceNameByIdp({
    this.idpId,
    this.sourceName,
  });

  final TfArg<String>? idpId;

  final TfArg<String>? sourceName;

  Map<String, Object?> encode() => {
    if (idpId != null) 'idp_id': idpId!.toTfJson(),
    if (sourceName != null) 'source_name': sourceName!.toTfJson(),
  };
}

/// Typed helper for the `saas_app.custom_claims` block of
/// `cloudflare_zero_trust_access_application` (derived from provider schema).
@immutable
final class ZeroTrustAccessApplicationSaasAppCustomClaims {
  const ZeroTrustAccessApplicationSaasAppCustomClaims({
    this.name,
    this.required,
    this.scope,
    this.source,
  });

  final TfArg<String>? name;

  final TfArg<bool>? required;

  final TfArg<ZeroTrustAccessApplicationSaasAppCustomClaimsScope>? scope;

  final ZeroTrustAccessApplicationSaasAppCustomClaimsSource? source;

  Map<String, Object?> encode() => {
    if (name != null) 'name': name!.toTfJson(),
    if (required != null) 'required': required!.toTfJson(),
    if (scope != null) 'scope': scope!.toTfJson(),
    if (source != null) 'source': source!.encode(),
  };
}

/// `scope` — derived from the provider schema description.
enum ZeroTrustAccessApplicationSaasAppCustomClaimsScope
    implements TerraformEnum {
  groups('groups'),
  profile('profile'),
  email('email'),
  openid('openid');

  const ZeroTrustAccessApplicationSaasAppCustomClaimsScope(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `saas_app.custom_claims.source` block of
/// `cloudflare_zero_trust_access_application` (derived from provider schema).
@immutable
final class ZeroTrustAccessApplicationSaasAppCustomClaimsSource {
  const ZeroTrustAccessApplicationSaasAppCustomClaimsSource({
    this.name,
    this.nameByIdp,
  });

  final TfArg<String>? name;

  final TfArg<Map<String, String>>? nameByIdp;

  Map<String, Object?> encode() => {
    if (name != null) 'name': name!.toTfJson(),
    if (nameByIdp != null) 'name_by_idp': nameByIdp!.toTfJson(),
  };
}

/// Typed helper for the `saas_app.hybrid_and_implicit_options` block of
/// `cloudflare_zero_trust_access_application` (derived from provider schema).
@immutable
final class ZeroTrustAccessApplicationSaasAppHybridAndImplicitOptions {
  const ZeroTrustAccessApplicationSaasAppHybridAndImplicitOptions({
    this.returnAccessTokenFromAuthorizationEndpoint,
    this.returnIdTokenFromAuthorizationEndpoint,
  });

  final TfArg<bool>? returnAccessTokenFromAuthorizationEndpoint;

  final TfArg<bool>? returnIdTokenFromAuthorizationEndpoint;

  Map<String, Object?> encode() => {
    if (returnAccessTokenFromAuthorizationEndpoint != null)
      'return_access_token_from_authorization_endpoint':
          returnAccessTokenFromAuthorizationEndpoint!.toTfJson(),
    if (returnIdTokenFromAuthorizationEndpoint != null)
      'return_id_token_from_authorization_endpoint':
          returnIdTokenFromAuthorizationEndpoint!.toTfJson(),
  };
}

/// Typed helper for the `saas_app.refresh_token_options` block of
/// `cloudflare_zero_trust_access_application` (derived from provider schema).
@immutable
final class ZeroTrustAccessApplicationSaasAppRefreshTokenOptions {
  const ZeroTrustAccessApplicationSaasAppRefreshTokenOptions({this.lifetime});

  final TfArg<String>? lifetime;

  Map<String, Object?> encode() => {
    if (lifetime != null) 'lifetime': lifetime!.toTfJson(),
  };
}

/// Typed helper for the `scim_config` block of
/// `cloudflare_zero_trust_access_application` (derived from provider schema).
@immutable
final class ZeroTrustAccessApplicationScimConfig {
  const ZeroTrustAccessApplicationScimConfig({
    this.deactivateOnDelete,
    this.enabled,
    required this.idpUid,
    required this.remoteUri,
    this.authentication,
    this.mappings,
  });

  final TfArg<bool>? deactivateOnDelete;

  final TfArg<bool>? enabled;

  final TfArg<String> idpUid;

  final TfArg<String> remoteUri;

  final ZeroTrustAccessApplicationScimConfigAuthentication? authentication;

  final List<ZeroTrustAccessApplicationScimConfigMappings>? mappings;

  Map<String, Object?> encode() => {
    if (deactivateOnDelete != null)
      'deactivate_on_delete': deactivateOnDelete!.toTfJson(),
    if (enabled != null) 'enabled': enabled!.toTfJson(),
    'idp_uid': idpUid.toTfJson(),
    'remote_uri': remoteUri.toTfJson(),
    if (authentication != null) 'authentication': authentication!.encode(),
    if (mappings != null) 'mappings': [for (final e in mappings!) e.encode()],
  };
}

/// Typed helper for the `scim_config.authentication` block of
/// `cloudflare_zero_trust_access_application` (derived from provider schema).
@immutable
final class ZeroTrustAccessApplicationScimConfigAuthentication {
  const ZeroTrustAccessApplicationScimConfigAuthentication({
    this.authorizationUrl,
    this.clientId,
    this.clientSecret,
    this.password,
    required this.scheme,
    this.scopes,
    this.token,
    this.tokenUrl,
    this.user,
  });

  final TfArg<String>? authorizationUrl;

  final TfArg<String>? clientId;

  final TfArg<String>? clientSecret;

  final TfArg<String>? password;

  final TfArg<ZeroTrustAccessApplicationScimConfigAuthenticationScheme> scheme;

  final TfArg<List<Object?>>? scopes;

  final TfArg<String>? token;

  final TfArg<String>? tokenUrl;

  final TfArg<String>? user;

  Map<String, Object?> encode() => {
    if (authorizationUrl != null)
      'authorization_url': authorizationUrl!.toTfJson(),
    if (clientId != null) 'client_id': clientId!.toTfJson(),
    if (clientSecret != null) 'client_secret': clientSecret!.toTfJson(),
    if (password != null) 'password': password!.toTfJson(),
    'scheme': scheme.toTfJson(),
    if (scopes != null) 'scopes': scopes!.toTfJson(),
    if (token != null) 'token': token!.toTfJson(),
    if (tokenUrl != null) 'token_url': tokenUrl!.toTfJson(),
    if (user != null) 'user': user!.toTfJson(),
  };
}

/// `scheme` — derived from the provider schema description.
enum ZeroTrustAccessApplicationScimConfigAuthenticationScheme
    implements TerraformEnum {
  httpbasic('httpbasic'),
  oauthbearertoken('oauthbearertoken'),
  oauth2('oauth2'),
  accessServiceToken('access_service_token');

  const ZeroTrustAccessApplicationScimConfigAuthenticationScheme(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `scim_config.mappings` block of
/// `cloudflare_zero_trust_access_application` (derived from provider schema).
@immutable
final class ZeroTrustAccessApplicationScimConfigMappings {
  const ZeroTrustAccessApplicationScimConfigMappings({
    this.enabled,
    this.filter,
    required this.schema,
    this.strictness,
    this.transformJsonata,
    this.operations,
  });

  final TfArg<bool>? enabled;

  final TfArg<String>? filter;

  final TfArg<String> schema;

  final TfArg<ZeroTrustAccessApplicationScimConfigMappingsStrictness>?
  strictness;

  final TfArg<String>? transformJsonata;

  final ZeroTrustAccessApplicationScimConfigMappingsOperations? operations;

  Map<String, Object?> encode() => {
    if (enabled != null) 'enabled': enabled!.toTfJson(),
    if (filter != null) 'filter': filter!.toTfJson(),
    'schema': schema.toTfJson(),
    if (strictness != null) 'strictness': strictness!.toTfJson(),
    if (transformJsonata != null)
      'transform_jsonata': transformJsonata!.toTfJson(),
    if (operations != null) 'operations': operations!.encode(),
  };
}

/// `strictness` — derived from the provider schema description.
enum ZeroTrustAccessApplicationScimConfigMappingsStrictness
    implements TerraformEnum {
  strict('strict'),
  passthrough('passthrough');

  const ZeroTrustAccessApplicationScimConfigMappingsStrictness(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `scim_config.mappings.operations` block of
/// `cloudflare_zero_trust_access_application` (derived from provider schema).
@immutable
final class ZeroTrustAccessApplicationScimConfigMappingsOperations {
  const ZeroTrustAccessApplicationScimConfigMappingsOperations({
    this.create,
    this.delete,
    this.update,
  });

  final TfArg<bool>? create;

  final TfArg<bool>? delete;

  final TfArg<bool>? update;

  Map<String, Object?> encode() => {
    if (create != null) 'create': create!.toTfJson(),
    if (delete != null) 'delete': delete!.toTfJson(),
    if (update != null) 'update': update!.toTfJson(),
  };
}

/// Typed helper for the `target_criteria` block of
/// `cloudflare_zero_trust_access_application` (derived from provider schema).
@immutable
final class ZeroTrustAccessApplicationTargetCriteria {
  const ZeroTrustAccessApplicationTargetCriteria({
    required this.port,
    required this.protocol,
    required this.targetAttributes,
  });

  final TfArg<num> port;

  final TfArg<ZeroTrustAccessApplicationTargetCriteriaProtocol> protocol;

  final TfArg<Map<String, dynamic>> targetAttributes;

  Map<String, Object?> encode() => {
    'port': port.toTfJson(),
    'protocol': protocol.toTfJson(),
    'target_attributes': targetAttributes.toTfJson(),
  };
}

/// `protocol` — derived from the provider schema description.
enum ZeroTrustAccessApplicationTargetCriteriaProtocol implements TerraformEnum {
  ssh('SSH'),
  rdp('RDP');

  const ZeroTrustAccessApplicationTargetCriteriaProtocol(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `cloudflare_zero_trust_access_application`.
final class CloudflareZeroTrustAccessApplication extends Resource {
  static const String tfType = 'cloudflare_zero_trust_access_application';

  CloudflareZeroTrustAccessApplication({
    required super.localName,
    TfArg<String>? accountId,
    TfArg<bool>? allowAuthenticateViaWarp,
    TfArg<bool>? allowIframe,
    TfArg<List<String>>? allowedIdps,
    TfArg<String>? appLauncherLogoUrl,
    TfArg<bool>? appLauncherVisible,
    TfArg<bool>? autoRedirectToIdentity,
    TfArg<String>? bgColor,
    TfArg<String>? customDenyMessage,
    TfArg<String>? customDenyUrl,
    TfArg<String>? customNonIdentityDenyUrl,
    TfArg<List<String>>? customPages,
    TfArg<String>? domain,
    TfArg<bool>? enableBindingCookie,
    TfArg<String>? headerBgColor,
    TfArg<bool>? httpOnlyCookieAttribute,
    TfArg<String>? logoUrl,
    TfArg<String>? name,
    TfArg<bool>? optionsPreflightBypass,
    TfArg<bool>? pathCookieAttribute,
    TfArg<String>? readServiceTokensFromHeader,
    TfArg<String>? sameSiteCookieAttribute,
    TfArg<List<String>>? selfHostedDomains,
    TfArg<bool>? serviceAuth401Redirect,
    TfArg<String>? sessionDuration,
    TfArg<bool>? skipAppLauncherLoginPage,
    TfArg<bool>? skipInterstitial,
    TfArg<List<String>>? tags,
    TfArg<ZeroTrustAccessApplicationType>? type,
    TfArg<String>? zoneId,
    ZeroTrustAccessApplicationCorsHeaders? corsHeaders,
    List<ZeroTrustAccessApplicationDestinations>? destinations,
    List<ZeroTrustAccessApplicationFooterLinks>? footerLinks,
    ZeroTrustAccessApplicationLandingPageDesign? landingPageDesign,
    ZeroTrustAccessApplicationMfaConfig? mfaConfig,
    ZeroTrustAccessApplicationOauthConfiguration? oauthConfiguration,
    List<ZeroTrustAccessApplicationPolicies>? policies,
    ZeroTrustAccessApplicationSaasApp? saasApp,
    ZeroTrustAccessApplicationScimConfig? scimConfig,
    List<ZeroTrustAccessApplicationTargetCriteria>? targetCriteria,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           if (allowAuthenticateViaWarp != null)
             'allow_authenticate_via_warp': allowAuthenticateViaWarp,
           if (allowIframe != null) 'allow_iframe': allowIframe,
           if (allowedIdps != null) 'allowed_idps': allowedIdps,
           if (appLauncherLogoUrl != null)
             'app_launcher_logo_url': appLauncherLogoUrl,
           if (appLauncherVisible != null)
             'app_launcher_visible': appLauncherVisible,
           if (autoRedirectToIdentity != null)
             'auto_redirect_to_identity': autoRedirectToIdentity,
           if (bgColor != null) 'bg_color': bgColor,
           if (customDenyMessage != null)
             'custom_deny_message': customDenyMessage,
           if (customDenyUrl != null) 'custom_deny_url': customDenyUrl,
           if (customNonIdentityDenyUrl != null)
             'custom_non_identity_deny_url': customNonIdentityDenyUrl,
           if (customPages != null) 'custom_pages': customPages,
           if (domain != null) 'domain': domain,
           if (enableBindingCookie != null)
             'enable_binding_cookie': enableBindingCookie,
           if (headerBgColor != null) 'header_bg_color': headerBgColor,
           if (httpOnlyCookieAttribute != null)
             'http_only_cookie_attribute': httpOnlyCookieAttribute,
           if (logoUrl != null) 'logo_url': logoUrl,
           if (name != null) 'name': name,
           if (optionsPreflightBypass != null)
             'options_preflight_bypass': optionsPreflightBypass,
           if (pathCookieAttribute != null)
             'path_cookie_attribute': pathCookieAttribute,
           if (readServiceTokensFromHeader != null)
             'read_service_tokens_from_header': readServiceTokensFromHeader,
           if (sameSiteCookieAttribute != null)
             'same_site_cookie_attribute': sameSiteCookieAttribute,
           if (selfHostedDomains != null)
             'self_hosted_domains': selfHostedDomains,
           if (serviceAuth401Redirect != null)
             'service_auth_401_redirect': serviceAuth401Redirect,
           if (sessionDuration != null) 'session_duration': sessionDuration,
           if (skipAppLauncherLoginPage != null)
             'skip_app_launcher_login_page': skipAppLauncherLoginPage,
           if (skipInterstitial != null) 'skip_interstitial': skipInterstitial,
           if (tags != null) 'tags': tags,
           if (type != null) 'type': type,
           if (zoneId != null) 'zone_id': zoneId,
           if (corsHeaders != null)
             'cors_headers': TfArg.literal(corsHeaders.encode()),
           if (destinations != null)
             'destinations': TfArg.literal([
               for (final e in destinations) e.encode(),
             ]),
           if (footerLinks != null)
             'footer_links': TfArg.literal([
               for (final e in footerLinks) e.encode(),
             ]),
           if (landingPageDesign != null)
             'landing_page_design': TfArg.literal(landingPageDesign.encode()),
           if (mfaConfig != null)
             'mfa_config': TfArg.literal(mfaConfig.encode()),
           if (oauthConfiguration != null)
             'oauth_configuration': TfArg.literal(oauthConfiguration.encode()),
           if (policies != null)
             'policies': TfArg.literal([for (final e in policies) e.encode()]),
           if (saasApp != null) 'saas_app': TfArg.literal(saasApp.encode()),
           if (scimConfig != null)
             'scim_config': TfArg.literal(scimConfig.encode()),
           if (targetCriteria != null)
             'target_criteria': TfArg.literal([
               for (final e in targetCriteria) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustAccessApplicationSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `aud` attribute.
  TfRef<String> get aud => TfRef.attribute<String>(this, 'aud');
}

// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;
import '../zone/cloudflare_zone.dart' show CloudflareZone;

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

/// At most one of `self_hosted_domains`, `destinations` on `cloudflare_zero_trust_access_application`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.selfHostedDomains(...)`.
sealed class ZeroTrustAccessApplicationTargets {
  const ZeroTrustAccessApplicationTargets();

  /// Sets `self_hosted_domains`.
  const factory ZeroTrustAccessApplicationTargets.selfHostedDomains(
    TfArg<List<String>> selfHostedDomains,
  ) = ZeroTrustAccessApplicationTargetsSelfHostedDomains;

  /// Sets `destinations`.
  const factory ZeroTrustAccessApplicationTargets.destinations(
    List<ZeroTrustAccessApplicationDestinations> destinations,
  ) = ZeroTrustAccessApplicationTargetsDestinations;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [ZeroTrustAccessApplicationTargets.selfHostedDomains] choice: sets `self_hosted_domains`.
final class ZeroTrustAccessApplicationTargetsSelfHostedDomains
    extends ZeroTrustAccessApplicationTargets {
  const ZeroTrustAccessApplicationTargetsSelfHostedDomains(
    this.selfHostedDomains,
  );

  final TfArg<List<String>> selfHostedDomains;

  @override
  String get blockKey => 'self_hosted_domains';

  @override
  Map<String, Object?> encode() => {
    'self_hosted_domains': selfHostedDomains.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'self_hosted_domains': selfHostedDomains,
  };
}

/// The [ZeroTrustAccessApplicationTargets.destinations] choice: sets `destinations`.
final class ZeroTrustAccessApplicationTargetsDestinations
    extends ZeroTrustAccessApplicationTargets {
  const ZeroTrustAccessApplicationTargetsDestinations(this.destinations);

  final List<ZeroTrustAccessApplicationDestinations> destinations;

  @override
  String get blockKey => 'destinations';

  @override
  Map<String, Object?> encode() => {
    'destinations': [for (final e in destinations) e.encode()],
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'destinations': TfArg.literal([for (final e in destinations) e.encode()]),
  };
}

/// Typed helper for the `cors_headers` block of
/// `cloudflare_zero_trust_access_application` (derived from provider schema).
@immutable
final class ZeroTrustAccessApplicationCorsHeaders {
  const ZeroTrustAccessApplicationCorsHeaders({
    this.requestHeaders,
    required this.methods,
    required this.origins,
    this.allowCredentials,
    this.maxAge,
  });

  final ZeroTrustAccessApplicationRequestHeaders? requestHeaders;

  final ZeroTrustAccessApplicationMethods methods;

  final ZeroTrustAccessApplicationOrigins origins;

  final TfArg<bool>? allowCredentials;

  final TfArg<num>? maxAge;

  Map<String, Object?> encode() => {
    ...?requestHeaders?.encode(),
    ...methods.encode(),
    ...origins.encode(),
    'allow_credentials': ?allowCredentials?.toTfJson(),
    'max_age': ?maxAge?.toTfJson(),
  };
}

/// Exactly one of `allow_all_methods`, `allowed_methods` on the `cors_headers` block of `cloudflare_zero_trust_access_application`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.allowAllMethods(...)`.
sealed class ZeroTrustAccessApplicationMethods {
  const ZeroTrustAccessApplicationMethods();

  /// Sets `allow_all_methods`.
  const factory ZeroTrustAccessApplicationMethods.allowAllMethods(
    TfArg<bool> allowAllMethods,
  ) = ZeroTrustAccessApplicationAllowAllMethods;

  /// Sets `allowed_methods`.
  const factory ZeroTrustAccessApplicationMethods.allowedMethods(
    List<TfArg<ZeroTrustAccessApplicationAllowedMethods>> allowedMethods,
  ) = ZeroTrustAccessApplicationAllowedMethodsChoice;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [ZeroTrustAccessApplicationMethods.allowAllMethods] choice: sets `allow_all_methods`.
final class ZeroTrustAccessApplicationAllowAllMethods
    extends ZeroTrustAccessApplicationMethods {
  const ZeroTrustAccessApplicationAllowAllMethods(this.allowAllMethods);

  final TfArg<bool> allowAllMethods;

  @override
  String get blockKey => 'allow_all_methods';

  @override
  Map<String, Object?> encode() => {
    'allow_all_methods': allowAllMethods.toTfJson(),
  };
}

/// The [ZeroTrustAccessApplicationMethods.allowedMethods] choice: sets `allowed_methods`.
final class ZeroTrustAccessApplicationAllowedMethodsChoice
    extends ZeroTrustAccessApplicationMethods {
  const ZeroTrustAccessApplicationAllowedMethodsChoice(this.allowedMethods);

  final List<TfArg<ZeroTrustAccessApplicationAllowedMethods>> allowedMethods;

  @override
  String get blockKey => 'allowed_methods';

  @override
  Map<String, Object?> encode() => {
    'allowed_methods': [for (final e in allowedMethods) e.toTfJson()],
  };
}

/// Exactly one of `allow_all_origins`, `allowed_origins` on the `cors_headers` block of `cloudflare_zero_trust_access_application`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.allowAllOrigins(...)`.
sealed class ZeroTrustAccessApplicationOrigins {
  const ZeroTrustAccessApplicationOrigins();

  /// Sets `allow_all_origins`.
  const factory ZeroTrustAccessApplicationOrigins.allowAllOrigins(
    TfArg<bool> allowAllOrigins,
  ) = ZeroTrustAccessApplicationAllowAllOrigins;

  /// Sets `allowed_origins`.
  const factory ZeroTrustAccessApplicationOrigins.allowedOrigins(
    TfArg<List<String>> allowedOrigins,
  ) = ZeroTrustAccessApplicationAllowedOrigins;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [ZeroTrustAccessApplicationOrigins.allowAllOrigins] choice: sets `allow_all_origins`.
final class ZeroTrustAccessApplicationAllowAllOrigins
    extends ZeroTrustAccessApplicationOrigins {
  const ZeroTrustAccessApplicationAllowAllOrigins(this.allowAllOrigins);

  final TfArg<bool> allowAllOrigins;

  @override
  String get blockKey => 'allow_all_origins';

  @override
  Map<String, Object?> encode() => {
    'allow_all_origins': allowAllOrigins.toTfJson(),
  };
}

/// The [ZeroTrustAccessApplicationOrigins.allowedOrigins] choice: sets `allowed_origins`.
final class ZeroTrustAccessApplicationAllowedOrigins
    extends ZeroTrustAccessApplicationOrigins {
  const ZeroTrustAccessApplicationAllowedOrigins(this.allowedOrigins);

  final TfArg<List<String>> allowedOrigins;

  @override
  String get blockKey => 'allowed_origins';

  @override
  Map<String, Object?> encode() => {
    'allowed_origins': allowedOrigins.toTfJson(),
  };
}

/// At most one of `allow_all_headers`, `allowed_headers` on the `cors_headers` block of `cloudflare_zero_trust_access_application`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.allowAllHeaders(...)`.
sealed class ZeroTrustAccessApplicationRequestHeaders {
  const ZeroTrustAccessApplicationRequestHeaders();

  /// Sets `allow_all_headers`.
  const factory ZeroTrustAccessApplicationRequestHeaders.allowAllHeaders(
    TfArg<bool> allowAllHeaders,
  ) = ZeroTrustAccessApplicationRequestHeadersAllowAllHeaders;

  /// Sets `allowed_headers`.
  const factory ZeroTrustAccessApplicationRequestHeaders.allowedHeaders(
    TfArg<List<String>> allowedHeaders,
  ) = ZeroTrustAccessApplicationRequestHeadersAllowedHeaders;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [ZeroTrustAccessApplicationRequestHeaders.allowAllHeaders] choice: sets `allow_all_headers`.
final class ZeroTrustAccessApplicationRequestHeadersAllowAllHeaders
    extends ZeroTrustAccessApplicationRequestHeaders {
  const ZeroTrustAccessApplicationRequestHeadersAllowAllHeaders(
    this.allowAllHeaders,
  );

  final TfArg<bool> allowAllHeaders;

  @override
  String get blockKey => 'allow_all_headers';

  @override
  Map<String, Object?> encode() => {
    'allow_all_headers': allowAllHeaders.toTfJson(),
  };
}

/// The [ZeroTrustAccessApplicationRequestHeaders.allowedHeaders] choice: sets `allowed_headers`.
final class ZeroTrustAccessApplicationRequestHeadersAllowedHeaders
    extends ZeroTrustAccessApplicationRequestHeaders {
  const ZeroTrustAccessApplicationRequestHeadersAllowedHeaders(
    this.allowedHeaders,
  );

  final TfArg<List<String>> allowedHeaders;

  @override
  String get blockKey => 'allowed_headers';

  @override
  Map<String, Object?> encode() => {
    'allowed_headers': allowedHeaders.toTfJson(),
  };
}

/// `allowed_methods` — derived from the provider schema description.
enum ZeroTrustAccessApplicationAllowedMethods implements TerraformEnum {
  get('GET'),
  post('POST'),
  head('HEAD'),
  put('PUT'),
  delete('DELETE'),
  connect('CONNECT'),
  options('OPTIONS'),
  trace('TRACE'),
  patch('PATCH');

  const ZeroTrustAccessApplicationAllowedMethods(this.terraformValue);
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

  final TfArg<ZeroTrustAccessApplicationL4Protocol>? l4Protocol;

  final TfArg<String>? mcpServerId;

  final TfArg<String>? portRange;

  final TfArg<ZeroTrustAccessApplicationDestinationsType>? type;

  final TfArg<String>? uri;

  final TfArg<String>? vnetId;

  final TfArg<String>? workerId;

  Map<String, Object?> encode() => {
    'cidr': ?cidr?.toTfJson(),
    'hostname': ?hostname?.toTfJson(),
    'l4_protocol': ?l4Protocol?.toTfJson(),
    'mcp_server_id': ?mcpServerId?.toTfJson(),
    'port_range': ?portRange?.toTfJson(),
    'type': ?type?.toTfJson(),
    'uri': ?uri?.toTfJson(),
    'vnet_id': ?vnetId?.toTfJson(),
    'worker_id': ?workerId?.toTfJson(),
  };
}

/// `l4_protocol` — derived from the provider schema description.
enum ZeroTrustAccessApplicationL4Protocol implements TerraformEnum {
  tcp('tcp'),
  udp('udp');

  const ZeroTrustAccessApplicationL4Protocol(this.terraformValue);
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
    'button_color': ?buttonColor?.toTfJson(),
    'button_text_color': ?buttonTextColor?.toTfJson(),
    'image_url': ?imageUrl?.toTfJson(),
    'message': ?message?.toTfJson(),
    'title': ?title?.toTfJson(),
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

  final List<TfArg<ZeroTrustAccessApplicationAllowedAuthenticators>>?
  allowedAuthenticators;

  final TfArg<bool>? mfaDisabled;

  final TfArg<String>? sessionDuration;

  Map<String, Object?> encode() => {
    if (allowedAuthenticators != null)
      'allowed_authenticators': [
        for (final e in allowedAuthenticators!) e.toTfJson(),
      ],
    'mfa_disabled': ?mfaDisabled?.toTfJson(),
    'session_duration': ?sessionDuration?.toTfJson(),
  };
}

/// `allowed_authenticators` — derived from the provider schema description.
enum ZeroTrustAccessApplicationAllowedAuthenticators implements TerraformEnum {
  totp('totp'),
  biometrics('biometrics'),
  securityKey('security_key');

  const ZeroTrustAccessApplicationAllowedAuthenticators(this.terraformValue);
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

  final ZeroTrustAccessApplicationDynamicClientRegistration?
  dynamicClientRegistration;

  final ZeroTrustAccessApplicationGrant? grant;

  Map<String, Object?> encode() => {
    'enabled': ?enabled?.toTfJson(),
    'dynamic_client_registration': ?dynamicClientRegistration?.encode(),
    'grant': ?grant?.encode(),
  };
}

/// Typed helper for the `oauth_configuration.dynamic_client_registration` block of
/// `cloudflare_zero_trust_access_application` (derived from provider schema).
@immutable
final class ZeroTrustAccessApplicationDynamicClientRegistration {
  const ZeroTrustAccessApplicationDynamicClientRegistration({
    this.allowAnyOnLocalhost,
    this.allowAnyOnLoopback,
    this.allowedUris,
    this.enabled,
  });

  final TfArg<bool>? allowAnyOnLocalhost;

  final TfArg<bool>? allowAnyOnLoopback;

  final TfArg<List<String>>? allowedUris;

  final TfArg<bool>? enabled;

  Map<String, Object?> encode() => {
    'allow_any_on_localhost': ?allowAnyOnLocalhost?.toTfJson(),
    'allow_any_on_loopback': ?allowAnyOnLoopback?.toTfJson(),
    'allowed_uris': ?allowedUris?.toTfJson(),
    'enabled': ?enabled?.toTfJson(),
  };
}

/// Typed helper for the `oauth_configuration.grant` block of
/// `cloudflare_zero_trust_access_application` (derived from provider schema).
@immutable
final class ZeroTrustAccessApplicationGrant {
  const ZeroTrustAccessApplicationGrant({
    this.accessTokenLifetime,
    this.sessionDuration,
  });

  final TfArg<String>? accessTokenLifetime;

  final TfArg<String>? sessionDuration;

  Map<String, Object?> encode() => {
    'access_token_lifetime': ?accessTokenLifetime?.toTfJson(),
    'session_duration': ?sessionDuration?.toTfJson(),
  };
}

/// Typed helper for the `policies` block of
/// `cloudflare_zero_trust_access_application` (derived from provider schema).
@immutable
final class ZeroTrustAccessApplicationPolicies {
  const ZeroTrustAccessApplicationPolicies({
    this.decision,
    required this.policy,
    this.name,
    this.precedence,
    this.connectionRules,
    this.exclude,
    this.mfaConfig,
    this.require,
  });

  final TfArg<ZeroTrustAccessApplicationDecision>? decision;

  final ZeroTrustAccessApplicationPolicy policy;

  final TfArg<String>? name;

  final TfArg<num>? precedence;

  final ZeroTrustAccessApplicationConnectionRules? connectionRules;

  final List<ZeroTrustAccessApplicationExclude>? exclude;

  final ZeroTrustAccessApplicationPoliciesMfaConfig? mfaConfig;

  final List<ZeroTrustAccessApplicationRequire>? require;

  Map<String, Object?> encode() => {
    'decision': ?decision?.toTfJson(),
    ...policy.encode(),
    'name': ?name?.toTfJson(),
    'precedence': ?precedence?.toTfJson(),
    'connection_rules': ?connectionRules?.encode(),
    if (exclude != null) 'exclude': [for (final e in exclude!) e.encode()],
    'mfa_config': ?mfaConfig?.encode(),
    if (require != null) 'require': [for (final e in require!) e.encode()],
  };
}

/// Exactly one of `id`, `include` on the `policies` block of `cloudflare_zero_trust_access_application`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.id(...)`.
sealed class ZeroTrustAccessApplicationPolicy {
  const ZeroTrustAccessApplicationPolicy();

  /// Sets `id`.
  const factory ZeroTrustAccessApplicationPolicy.id(TfArg<String> id) =
      ZeroTrustAccessApplicationPolicyId;

  /// Sets `include`.
  const factory ZeroTrustAccessApplicationPolicy.include(
    List<ZeroTrustAccessApplicationInclude> include,
  ) = ZeroTrustAccessApplicationPolicyInclude;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [ZeroTrustAccessApplicationPolicy.id] choice: sets `id`.
final class ZeroTrustAccessApplicationPolicyId
    extends ZeroTrustAccessApplicationPolicy {
  const ZeroTrustAccessApplicationPolicyId(this.id);

  final TfArg<String> id;

  @override
  String get blockKey => 'id';

  @override
  Map<String, Object?> encode() => {'id': id.toTfJson()};
}

/// The [ZeroTrustAccessApplicationPolicy.include] choice: sets `include`.
final class ZeroTrustAccessApplicationPolicyInclude
    extends ZeroTrustAccessApplicationPolicy {
  const ZeroTrustAccessApplicationPolicyInclude(this.include);

  final List<ZeroTrustAccessApplicationInclude> include;

  @override
  String get blockKey => 'include';

  @override
  Map<String, Object?> encode() => {
    'include': [for (final e in include) e.encode()],
  };
}

/// `decision` — derived from the provider schema description.
enum ZeroTrustAccessApplicationDecision implements TerraformEnum {
  allow('allow'),
  deny('deny'),
  nonIdentity('non_identity'),
  bypass('bypass');

  const ZeroTrustAccessApplicationDecision(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `policies.connection_rules` block of
/// `cloudflare_zero_trust_access_application` (derived from provider schema).
@immutable
final class ZeroTrustAccessApplicationConnectionRules {
  const ZeroTrustAccessApplicationConnectionRules({this.rdp, this.ssh});

  final ZeroTrustAccessApplicationRdp? rdp;

  final ZeroTrustAccessApplicationSsh? ssh;

  Map<String, Object?> encode() => {
    'rdp': ?rdp?.encode(),
    'ssh': ?ssh?.encode(),
  };
}

/// Typed helper for the `policies.connection_rules.rdp` block of
/// `cloudflare_zero_trust_access_application` (derived from provider schema).
@immutable
final class ZeroTrustAccessApplicationRdp {
  const ZeroTrustAccessApplicationRdp({
    this.allowedClipboardLocalToRemoteFormats,
    this.allowedClipboardRemoteToLocalFormats,
  });

  final List<
    TfArg<ZeroTrustAccessApplicationAllowedClipboardLocalToRemoteFormats>
  >?
  allowedClipboardLocalToRemoteFormats;

  final List<
    TfArg<ZeroTrustAccessApplicationAllowedClipboardRemoteToLocalFormats>
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
enum ZeroTrustAccessApplicationAllowedClipboardLocalToRemoteFormats
    implements TerraformEnum {
  text('text'),
  file('file');

  const ZeroTrustAccessApplicationAllowedClipboardLocalToRemoteFormats(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `allowed_clipboard_remote_to_local_formats` — derived from the provider schema description.
enum ZeroTrustAccessApplicationAllowedClipboardRemoteToLocalFormats
    implements TerraformEnum {
  text('text'),
  file('file');

  const ZeroTrustAccessApplicationAllowedClipboardRemoteToLocalFormats(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `policies.connection_rules.ssh` block of
/// `cloudflare_zero_trust_access_application` (derived from provider schema).
@immutable
final class ZeroTrustAccessApplicationSsh {
  const ZeroTrustAccessApplicationSsh({
    this.allowEmailAlias,
    required this.usernames,
  });

  final TfArg<bool>? allowEmailAlias;

  final TfArg<List<String>> usernames;

  Map<String, Object?> encode() => {
    'allow_email_alias': ?allowEmailAlias?.toTfJson(),
    'usernames': usernames.toTfJson(),
  };
}

/// Typed helper for the `policies.exclude` block of
/// `cloudflare_zero_trust_access_application` (derived from provider schema).
@immutable
final class ZeroTrustAccessApplicationExclude {
  const ZeroTrustAccessApplicationExclude({
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

  final ZeroTrustAccessApplicationAnyValidServiceToken? anyValidServiceToken;

  final ZeroTrustAccessApplicationAuthContext? authContext;

  final ZeroTrustAccessApplicationAuthMethod? authMethod;

  final ZeroTrustAccessApplicationAzureAd? azureAd;

  final ZeroTrustAccessApplicationCertificate? certificate;

  final ZeroTrustAccessApplicationCommonName? commonName;

  final ZeroTrustAccessApplicationDevicePosture? devicePosture;

  final ZeroTrustAccessApplicationEmail? email;

  final ZeroTrustAccessApplicationEmailDomain? emailDomain;

  final ZeroTrustAccessApplicationEmailList? emailList;

  final ZeroTrustAccessApplicationEveryone? everyone;

  final ZeroTrustAccessApplicationExternalEvaluation? externalEvaluation;

  final ZeroTrustAccessApplicationGeo? geo;

  final ZeroTrustAccessApplicationGithubOrganization? githubOrganization;

  final ZeroTrustAccessApplicationGroup? group;

  final ZeroTrustAccessApplicationGsuite? gsuite;

  final ZeroTrustAccessApplicationIp? ip;

  final ZeroTrustAccessApplicationIpList? ipList;

  final ZeroTrustAccessApplicationLinkedAppToken? linkedAppToken;

  final ZeroTrustAccessApplicationLoginMethod? loginMethod;

  final ZeroTrustAccessApplicationOidc? oidc;

  final ZeroTrustAccessApplicationOkta? okta;

  final ZeroTrustAccessApplicationSaml? saml;

  final ZeroTrustAccessApplicationServiceToken? serviceToken;

  Map<String, Object?> encode() => {
    'any_valid_service_token': ?anyValidServiceToken?.encode(),
    'auth_context': ?authContext?.encode(),
    'auth_method': ?authMethod?.encode(),
    'azure_ad': ?azureAd?.encode(),
    'certificate': ?certificate?.encode(),
    'common_name': ?commonName?.encode(),
    'device_posture': ?devicePosture?.encode(),
    'email': ?email?.encode(),
    'email_domain': ?emailDomain?.encode(),
    'email_list': ?emailList?.encode(),
    'everyone': ?everyone?.encode(),
    'external_evaluation': ?externalEvaluation?.encode(),
    'geo': ?geo?.encode(),
    'github_organization': ?githubOrganization?.encode(),
    'group': ?group?.encode(),
    'gsuite': ?gsuite?.encode(),
    'ip': ?ip?.encode(),
    'ip_list': ?ipList?.encode(),
    'linked_app_token': ?linkedAppToken?.encode(),
    'login_method': ?loginMethod?.encode(),
    'oidc': ?oidc?.encode(),
    'okta': ?okta?.encode(),
    'saml': ?saml?.encode(),
    'service_token': ?serviceToken?.encode(),
  };
}

/// Typed helper for the `policies.exclude.any_valid_service_token` block of
/// `cloudflare_zero_trust_access_application` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ZeroTrustAccessApplicationAnyValidServiceToken {
  const ZeroTrustAccessApplicationAnyValidServiceToken();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `policies.exclude.auth_context` block of
/// `cloudflare_zero_trust_access_application` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ZeroTrustAccessApplicationAuthContext {
  const ZeroTrustAccessApplicationAuthContext({
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
/// Shared by every block of this shape in the resource.
@immutable
final class ZeroTrustAccessApplicationAuthMethod {
  const ZeroTrustAccessApplicationAuthMethod({required this.authMethod});

  final TfArg<String> authMethod;

  Map<String, Object?> encode() => {'auth_method': authMethod.toTfJson()};
}

/// Typed helper for the `policies.exclude.azure_ad` block of
/// `cloudflare_zero_trust_access_application` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ZeroTrustAccessApplicationAzureAd {
  const ZeroTrustAccessApplicationAzureAd({
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
/// Shared by every block of this shape in the resource.
@immutable
final class ZeroTrustAccessApplicationCertificate {
  const ZeroTrustAccessApplicationCertificate();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `policies.exclude.common_name` block of
/// `cloudflare_zero_trust_access_application` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ZeroTrustAccessApplicationCommonName {
  const ZeroTrustAccessApplicationCommonName({required this.commonName});

  final TfArg<String> commonName;

  Map<String, Object?> encode() => {'common_name': commonName.toTfJson()};
}

/// Typed helper for the `policies.exclude.device_posture` block of
/// `cloudflare_zero_trust_access_application` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ZeroTrustAccessApplicationDevicePosture {
  const ZeroTrustAccessApplicationDevicePosture({required this.integrationUid});

  final TfArg<String> integrationUid;

  Map<String, Object?> encode() => {
    'integration_uid': integrationUid.toTfJson(),
  };
}

/// Typed helper for the `policies.exclude.email` block of
/// `cloudflare_zero_trust_access_application` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ZeroTrustAccessApplicationEmail {
  const ZeroTrustAccessApplicationEmail({required this.email});

  final TfArg<String> email;

  Map<String, Object?> encode() => {'email': email.toTfJson()};
}

/// Typed helper for the `policies.exclude.email_domain` block of
/// `cloudflare_zero_trust_access_application` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ZeroTrustAccessApplicationEmailDomain {
  const ZeroTrustAccessApplicationEmailDomain({required this.domain});

  final TfArg<String> domain;

  Map<String, Object?> encode() => {'domain': domain.toTfJson()};
}

/// Typed helper for the `policies.exclude.email_list` block of
/// `cloudflare_zero_trust_access_application` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ZeroTrustAccessApplicationEmailList {
  const ZeroTrustAccessApplicationEmailList({required this.id});

  final TfArg<String> id;

  Map<String, Object?> encode() => {'id': id.toTfJson()};
}

/// Typed helper for the `policies.exclude.everyone` block of
/// `cloudflare_zero_trust_access_application` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ZeroTrustAccessApplicationEveryone {
  const ZeroTrustAccessApplicationEveryone();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `policies.exclude.external_evaluation` block of
/// `cloudflare_zero_trust_access_application` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ZeroTrustAccessApplicationExternalEvaluation {
  const ZeroTrustAccessApplicationExternalEvaluation({
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
/// Shared by every block of this shape in the resource.
@immutable
final class ZeroTrustAccessApplicationGeo {
  const ZeroTrustAccessApplicationGeo({required this.countryCode});

  final TfArg<String> countryCode;

  Map<String, Object?> encode() => {'country_code': countryCode.toTfJson()};
}

/// Typed helper for the `policies.exclude.github_organization` block of
/// `cloudflare_zero_trust_access_application` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ZeroTrustAccessApplicationGithubOrganization {
  const ZeroTrustAccessApplicationGithubOrganization({
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
    'team': ?team?.toTfJson(),
  };
}

/// Typed helper for the `policies.exclude.group` block of
/// `cloudflare_zero_trust_access_application` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ZeroTrustAccessApplicationGroup {
  const ZeroTrustAccessApplicationGroup({required this.id});

  final TfArg<String> id;

  Map<String, Object?> encode() => {'id': id.toTfJson()};
}

/// Typed helper for the `policies.exclude.gsuite` block of
/// `cloudflare_zero_trust_access_application` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ZeroTrustAccessApplicationGsuite {
  const ZeroTrustAccessApplicationGsuite({
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
/// Shared by every block of this shape in the resource.
@immutable
final class ZeroTrustAccessApplicationIp {
  const ZeroTrustAccessApplicationIp({required this.ip});

  final TfArg<String> ip;

  Map<String, Object?> encode() => {'ip': ip.toTfJson()};
}

/// Typed helper for the `policies.exclude.ip_list` block of
/// `cloudflare_zero_trust_access_application` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ZeroTrustAccessApplicationIpList {
  const ZeroTrustAccessApplicationIpList({required this.id});

  final TfArg<String> id;

  Map<String, Object?> encode() => {'id': id.toTfJson()};
}

/// Typed helper for the `policies.exclude.linked_app_token` block of
/// `cloudflare_zero_trust_access_application` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ZeroTrustAccessApplicationLinkedAppToken {
  const ZeroTrustAccessApplicationLinkedAppToken({required this.appUid});

  final TfArg<String> appUid;

  Map<String, Object?> encode() => {'app_uid': appUid.toTfJson()};
}

/// Typed helper for the `policies.exclude.login_method` block of
/// `cloudflare_zero_trust_access_application` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ZeroTrustAccessApplicationLoginMethod {
  const ZeroTrustAccessApplicationLoginMethod({required this.id});

  final TfArg<String> id;

  Map<String, Object?> encode() => {'id': id.toTfJson()};
}

/// Typed helper for the `policies.exclude.oidc` block of
/// `cloudflare_zero_trust_access_application` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ZeroTrustAccessApplicationOidc {
  const ZeroTrustAccessApplicationOidc({
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
/// Shared by every block of this shape in the resource.
@immutable
final class ZeroTrustAccessApplicationOkta {
  const ZeroTrustAccessApplicationOkta({
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
/// Shared by every block of this shape in the resource.
@immutable
final class ZeroTrustAccessApplicationSaml {
  const ZeroTrustAccessApplicationSaml({
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
/// Shared by every block of this shape in the resource.
@immutable
final class ZeroTrustAccessApplicationServiceToken {
  const ZeroTrustAccessApplicationServiceToken({required this.tokenId});

  final TfArg<String> tokenId;

  Map<String, Object?> encode() => {'token_id': tokenId.toTfJson()};
}

/// Typed helper for the `policies.include` block of
/// `cloudflare_zero_trust_access_application` (derived from provider schema).
@immutable
final class ZeroTrustAccessApplicationInclude {
  const ZeroTrustAccessApplicationInclude({
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

  final ZeroTrustAccessApplicationAnyValidServiceToken? anyValidServiceToken;

  final ZeroTrustAccessApplicationAuthContext? authContext;

  final ZeroTrustAccessApplicationAuthMethod? authMethod;

  final ZeroTrustAccessApplicationAzureAd? azureAd;

  final ZeroTrustAccessApplicationCertificate? certificate;

  final ZeroTrustAccessApplicationCommonName? commonName;

  final ZeroTrustAccessApplicationDevicePosture? devicePosture;

  final ZeroTrustAccessApplicationEmail? email;

  final ZeroTrustAccessApplicationEmailDomain? emailDomain;

  final ZeroTrustAccessApplicationEmailList? emailList;

  final ZeroTrustAccessApplicationEveryone? everyone;

  final ZeroTrustAccessApplicationExternalEvaluation? externalEvaluation;

  final ZeroTrustAccessApplicationGeo? geo;

  final ZeroTrustAccessApplicationGithubOrganization? githubOrganization;

  final ZeroTrustAccessApplicationGroup? group;

  final ZeroTrustAccessApplicationGsuite? gsuite;

  final ZeroTrustAccessApplicationIp? ip;

  final ZeroTrustAccessApplicationIpList? ipList;

  final ZeroTrustAccessApplicationLinkedAppToken? linkedAppToken;

  final ZeroTrustAccessApplicationLoginMethod? loginMethod;

  final ZeroTrustAccessApplicationOidc? oidc;

  final ZeroTrustAccessApplicationOkta? okta;

  final ZeroTrustAccessApplicationSaml? saml;

  final ZeroTrustAccessApplicationServiceToken? serviceToken;

  Map<String, Object?> encode() => {
    'any_valid_service_token': ?anyValidServiceToken?.encode(),
    'auth_context': ?authContext?.encode(),
    'auth_method': ?authMethod?.encode(),
    'azure_ad': ?azureAd?.encode(),
    'certificate': ?certificate?.encode(),
    'common_name': ?commonName?.encode(),
    'device_posture': ?devicePosture?.encode(),
    'email': ?email?.encode(),
    'email_domain': ?emailDomain?.encode(),
    'email_list': ?emailList?.encode(),
    'everyone': ?everyone?.encode(),
    'external_evaluation': ?externalEvaluation?.encode(),
    'geo': ?geo?.encode(),
    'github_organization': ?githubOrganization?.encode(),
    'group': ?group?.encode(),
    'gsuite': ?gsuite?.encode(),
    'ip': ?ip?.encode(),
    'ip_list': ?ipList?.encode(),
    'linked_app_token': ?linkedAppToken?.encode(),
    'login_method': ?loginMethod?.encode(),
    'oidc': ?oidc?.encode(),
    'okta': ?okta?.encode(),
    'saml': ?saml?.encode(),
    'service_token': ?serviceToken?.encode(),
  };
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

  final List<TfArg<ZeroTrustAccessApplicationMfaConfigAllowedAuthenticators>>?
  allowedAuthenticators;

  final TfArg<bool>? mfaDisabled;

  final TfArg<String>? sessionDuration;

  Map<String, Object?> encode() => {
    if (allowedAuthenticators != null)
      'allowed_authenticators': [
        for (final e in allowedAuthenticators!) e.toTfJson(),
      ],
    'mfa_disabled': ?mfaDisabled?.toTfJson(),
    'session_duration': ?sessionDuration?.toTfJson(),
  };
}

/// `allowed_authenticators` — derived from the provider schema description.
enum ZeroTrustAccessApplicationMfaConfigAllowedAuthenticators
    implements TerraformEnum {
  totp('totp'),
  biometrics('biometrics'),
  securityKey('security_key'),
  sshPivKey('ssh_piv_key');

  const ZeroTrustAccessApplicationMfaConfigAllowedAuthenticators(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `policies.require` block of
/// `cloudflare_zero_trust_access_application` (derived from provider schema).
@immutable
final class ZeroTrustAccessApplicationRequire {
  const ZeroTrustAccessApplicationRequire({
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

  final ZeroTrustAccessApplicationAnyValidServiceToken? anyValidServiceToken;

  final ZeroTrustAccessApplicationAuthContext? authContext;

  final ZeroTrustAccessApplicationAuthMethod? authMethod;

  final ZeroTrustAccessApplicationAzureAd? azureAd;

  final ZeroTrustAccessApplicationCertificate? certificate;

  final ZeroTrustAccessApplicationCommonName? commonName;

  final ZeroTrustAccessApplicationDevicePosture? devicePosture;

  final ZeroTrustAccessApplicationEmail? email;

  final ZeroTrustAccessApplicationEmailDomain? emailDomain;

  final ZeroTrustAccessApplicationEmailList? emailList;

  final ZeroTrustAccessApplicationEveryone? everyone;

  final ZeroTrustAccessApplicationExternalEvaluation? externalEvaluation;

  final ZeroTrustAccessApplicationGeo? geo;

  final ZeroTrustAccessApplicationGithubOrganization? githubOrganization;

  final ZeroTrustAccessApplicationGroup? group;

  final ZeroTrustAccessApplicationGsuite? gsuite;

  final ZeroTrustAccessApplicationIp? ip;

  final ZeroTrustAccessApplicationIpList? ipList;

  final ZeroTrustAccessApplicationLinkedAppToken? linkedAppToken;

  final ZeroTrustAccessApplicationLoginMethod? loginMethod;

  final ZeroTrustAccessApplicationOidc? oidc;

  final ZeroTrustAccessApplicationOkta? okta;

  final ZeroTrustAccessApplicationSaml? saml;

  final ZeroTrustAccessApplicationServiceToken? serviceToken;

  Map<String, Object?> encode() => {
    'any_valid_service_token': ?anyValidServiceToken?.encode(),
    'auth_context': ?authContext?.encode(),
    'auth_method': ?authMethod?.encode(),
    'azure_ad': ?azureAd?.encode(),
    'certificate': ?certificate?.encode(),
    'common_name': ?commonName?.encode(),
    'device_posture': ?devicePosture?.encode(),
    'email': ?email?.encode(),
    'email_domain': ?emailDomain?.encode(),
    'email_list': ?emailList?.encode(),
    'everyone': ?everyone?.encode(),
    'external_evaluation': ?externalEvaluation?.encode(),
    'geo': ?geo?.encode(),
    'github_organization': ?githubOrganization?.encode(),
    'group': ?group?.encode(),
    'gsuite': ?gsuite?.encode(),
    'ip': ?ip?.encode(),
    'ip_list': ?ipList?.encode(),
    'linked_app_token': ?linkedAppToken?.encode(),
    'login_method': ?loginMethod?.encode(),
    'oidc': ?oidc?.encode(),
    'okta': ?okta?.encode(),
    'saml': ?saml?.encode(),
    'service_token': ?serviceToken?.encode(),
  };
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

  final TfArg<ZeroTrustAccessApplicationAuthType>? authType;

  final TfArg<String>? consumerServiceUrl;

  final TfArg<String>? defaultRelayState;

  final List<TfArg<ZeroTrustAccessApplicationGrantTypes>>? grantTypes;

  final TfArg<String>? groupFilterRegex;

  final TfArg<String>? idpEntityId;

  final TfArg<ZeroTrustAccessApplicationNameIdFormat>? nameIdFormat;

  final TfArg<String>? nameIdTransformJsonata;

  final TfArg<List<String>>? redirectUris;

  final TfArg<String>? samlAttributeTransformJsonata;

  final List<TfArg<ZeroTrustAccessApplicationScopes>>? scopes;

  final TfArg<String>? spEntityId;

  final TfArg<String>? ssoEndpoint;

  final List<ZeroTrustAccessApplicationCustomAttributes>? customAttributes;

  final List<ZeroTrustAccessApplicationCustomClaims>? customClaims;

  final ZeroTrustAccessApplicationHybridAndImplicitOptions?
  hybridAndImplicitOptions;

  final ZeroTrustAccessApplicationRefreshTokenOptions? refreshTokenOptions;

  Map<String, Object?> encode() => {
    'access_token_lifetime': ?accessTokenLifetime?.toTfJson(),
    'allow_pkce_without_client_secret': ?allowPkceWithoutClientSecret
        ?.toTfJson(),
    'app_launcher_url': ?appLauncherUrl?.toTfJson(),
    'auth_type': ?authType?.toTfJson(),
    'consumer_service_url': ?consumerServiceUrl?.toTfJson(),
    'default_relay_state': ?defaultRelayState?.toTfJson(),
    if (grantTypes != null)
      'grant_types': [for (final e in grantTypes!) e.toTfJson()],
    'group_filter_regex': ?groupFilterRegex?.toTfJson(),
    'idp_entity_id': ?idpEntityId?.toTfJson(),
    'name_id_format': ?nameIdFormat?.toTfJson(),
    'name_id_transform_jsonata': ?nameIdTransformJsonata?.toTfJson(),
    'redirect_uris': ?redirectUris?.toTfJson(),
    'saml_attribute_transform_jsonata': ?samlAttributeTransformJsonata
        ?.toTfJson(),
    if (scopes != null) 'scopes': [for (final e in scopes!) e.toTfJson()],
    'sp_entity_id': ?spEntityId?.toTfJson(),
    'sso_endpoint': ?ssoEndpoint?.toTfJson(),
    if (customAttributes != null)
      'custom_attributes': [for (final e in customAttributes!) e.encode()],
    if (customClaims != null)
      'custom_claims': [for (final e in customClaims!) e.encode()],
    'hybrid_and_implicit_options': ?hybridAndImplicitOptions?.encode(),
    'refresh_token_options': ?refreshTokenOptions?.encode(),
  };
}

/// `auth_type` — derived from the provider schema description.
enum ZeroTrustAccessApplicationAuthType implements TerraformEnum {
  saml('saml'),
  oidc('oidc');

  const ZeroTrustAccessApplicationAuthType(this.terraformValue);
  @override
  final String terraformValue;
}

/// `grant_types` — derived from the provider schema description.
enum ZeroTrustAccessApplicationGrantTypes implements TerraformEnum {
  authorizationCode('authorization_code'),
  authorizationCodeWithPkce('authorization_code_with_pkce'),
  refreshTokens('refresh_tokens'),
  hybrid('hybrid'),
  implicit('implicit');

  const ZeroTrustAccessApplicationGrantTypes(this.terraformValue);
  @override
  final String terraformValue;
}

/// `name_id_format` — derived from the provider schema description.
enum ZeroTrustAccessApplicationNameIdFormat implements TerraformEnum {
  id('id'),
  email('email');

  const ZeroTrustAccessApplicationNameIdFormat(this.terraformValue);
  @override
  final String terraformValue;
}

/// `scopes` — derived from the provider schema description.
enum ZeroTrustAccessApplicationScopes implements TerraformEnum {
  openid('openid'),
  groups('groups'),
  email('email'),
  profile('profile');

  const ZeroTrustAccessApplicationScopes(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `saas_app.custom_attributes` block of
/// `cloudflare_zero_trust_access_application` (derived from provider schema).
@immutable
final class ZeroTrustAccessApplicationCustomAttributes {
  const ZeroTrustAccessApplicationCustomAttributes({
    this.friendlyName,
    this.name,
    this.nameFormat,
    this.required,
    this.source,
  });

  final TfArg<String>? friendlyName;

  final TfArg<String>? name;

  final TfArg<ZeroTrustAccessApplicationNameFormat>? nameFormat;

  final TfArg<bool>? required;

  final ZeroTrustAccessApplicationCustomAttributesSource? source;

  Map<String, Object?> encode() => {
    'friendly_name': ?friendlyName?.toTfJson(),
    'name': ?name?.toTfJson(),
    'name_format': ?nameFormat?.toTfJson(),
    'required': ?required?.toTfJson(),
    'source': ?source?.encode(),
  };
}

/// `name_format` — derived from the provider schema description.
enum ZeroTrustAccessApplicationNameFormat implements TerraformEnum {
  urnOasisNamesTcSaml2p0AttrnameFormatUnspecified(
    'urn:oasis:names:tc:SAML:2.0:attrname-format:unspecified',
  ),
  urnOasisNamesTcSaml2p0AttrnameFormatBasic(
    'urn:oasis:names:tc:SAML:2.0:attrname-format:basic',
  ),
  urnOasisNamesTcSaml2p0AttrnameFormatUri(
    'urn:oasis:names:tc:SAML:2.0:attrname-format:uri',
  );

  const ZeroTrustAccessApplicationNameFormat(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `saas_app.custom_attributes.source` block of
/// `cloudflare_zero_trust_access_application` (derived from provider schema).
@immutable
final class ZeroTrustAccessApplicationCustomAttributesSource {
  const ZeroTrustAccessApplicationCustomAttributesSource({
    this.name,
    this.nameByIdp,
  });

  final TfArg<String>? name;

  final List<ZeroTrustAccessApplicationNameByIdp>? nameByIdp;

  Map<String, Object?> encode() => {
    'name': ?name?.toTfJson(),
    if (nameByIdp != null)
      'name_by_idp': [for (final e in nameByIdp!) e.encode()],
  };
}

/// Typed helper for the `saas_app.custom_attributes.source.name_by_idp` block of
/// `cloudflare_zero_trust_access_application` (derived from provider schema).
@immutable
final class ZeroTrustAccessApplicationNameByIdp {
  const ZeroTrustAccessApplicationNameByIdp({this.idpId, this.sourceName});

  final TfArg<String>? idpId;

  final TfArg<String>? sourceName;

  Map<String, Object?> encode() => {
    'idp_id': ?idpId?.toTfJson(),
    'source_name': ?sourceName?.toTfJson(),
  };
}

/// Typed helper for the `saas_app.custom_claims` block of
/// `cloudflare_zero_trust_access_application` (derived from provider schema).
@immutable
final class ZeroTrustAccessApplicationCustomClaims {
  const ZeroTrustAccessApplicationCustomClaims({
    this.name,
    this.required,
    this.scope,
    this.source,
  });

  final TfArg<String>? name;

  final TfArg<bool>? required;

  final TfArg<ZeroTrustAccessApplicationScope>? scope;

  final ZeroTrustAccessApplicationCustomClaimsSource? source;

  Map<String, Object?> encode() => {
    'name': ?name?.toTfJson(),
    'required': ?required?.toTfJson(),
    'scope': ?scope?.toTfJson(),
    'source': ?source?.encode(),
  };
}

/// `scope` — derived from the provider schema description.
enum ZeroTrustAccessApplicationScope implements TerraformEnum {
  groups('groups'),
  profile('profile'),
  email('email'),
  openid('openid');

  const ZeroTrustAccessApplicationScope(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `saas_app.custom_claims.source` block of
/// `cloudflare_zero_trust_access_application` (derived from provider schema).
@immutable
final class ZeroTrustAccessApplicationCustomClaimsSource {
  const ZeroTrustAccessApplicationCustomClaimsSource({
    this.name,
    this.nameByIdp,
  });

  final TfArg<String>? name;

  final TfArg<Map<String, String>>? nameByIdp;

  Map<String, Object?> encode() => {
    'name': ?name?.toTfJson(),
    'name_by_idp': ?nameByIdp?.toTfJson(),
  };
}

/// Typed helper for the `saas_app.hybrid_and_implicit_options` block of
/// `cloudflare_zero_trust_access_application` (derived from provider schema).
@immutable
final class ZeroTrustAccessApplicationHybridAndImplicitOptions {
  const ZeroTrustAccessApplicationHybridAndImplicitOptions({
    this.returnAccessTokenFromAuthorizationEndpoint,
    this.returnIdTokenFromAuthorizationEndpoint,
  });

  final TfArg<bool>? returnAccessTokenFromAuthorizationEndpoint;

  final TfArg<bool>? returnIdTokenFromAuthorizationEndpoint;

  Map<String, Object?> encode() => {
    'return_access_token_from_authorization_endpoint':
        ?returnAccessTokenFromAuthorizationEndpoint?.toTfJson(),
    'return_id_token_from_authorization_endpoint':
        ?returnIdTokenFromAuthorizationEndpoint?.toTfJson(),
  };
}

/// Typed helper for the `saas_app.refresh_token_options` block of
/// `cloudflare_zero_trust_access_application` (derived from provider schema).
@immutable
final class ZeroTrustAccessApplicationRefreshTokenOptions {
  const ZeroTrustAccessApplicationRefreshTokenOptions({this.lifetime});

  final TfArg<String>? lifetime;

  Map<String, Object?> encode() => {'lifetime': ?lifetime?.toTfJson()};
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

  final ZeroTrustAccessApplicationAuthentication? authentication;

  final List<ZeroTrustAccessApplicationMappings>? mappings;

  Map<String, Object?> encode() => {
    'deactivate_on_delete': ?deactivateOnDelete?.toTfJson(),
    'enabled': ?enabled?.toTfJson(),
    'idp_uid': idpUid.toTfJson(),
    'remote_uri': remoteUri.toTfJson(),
    'authentication': ?authentication?.encode(),
    if (mappings != null) 'mappings': [for (final e in mappings!) e.encode()],
  };
}

/// Typed helper for the `scim_config.authentication` block of
/// `cloudflare_zero_trust_access_application` (derived from provider schema).
@immutable
final class ZeroTrustAccessApplicationAuthentication {
  const ZeroTrustAccessApplicationAuthentication({
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

  final TfArg<ZeroTrustAccessApplicationScheme> scheme;

  final TfArg<List<String>>? scopes;

  final TfArg<String>? token;

  final TfArg<String>? tokenUrl;

  final TfArg<String>? user;

  Map<String, Object?> encode() => {
    'authorization_url': ?authorizationUrl?.toTfJson(),
    'client_id': ?clientId?.toTfJson(),
    'client_secret': ?clientSecret?.toTfJson(),
    'password': ?password?.toTfJson(),
    'scheme': scheme.toTfJson(),
    'scopes': ?scopes?.toTfJson(),
    'token': ?token?.toTfJson(),
    'token_url': ?tokenUrl?.toTfJson(),
    'user': ?user?.toTfJson(),
  };
}

/// `scheme` — derived from the provider schema description.
enum ZeroTrustAccessApplicationScheme implements TerraformEnum {
  httpbasic('httpbasic'),
  oauthbearertoken('oauthbearertoken'),
  oauth2('oauth2'),
  accessServiceToken('access_service_token');

  const ZeroTrustAccessApplicationScheme(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `scim_config.mappings` block of
/// `cloudflare_zero_trust_access_application` (derived from provider schema).
@immutable
final class ZeroTrustAccessApplicationMappings {
  const ZeroTrustAccessApplicationMappings({
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

  final TfArg<ZeroTrustAccessApplicationStrictness>? strictness;

  final TfArg<String>? transformJsonata;

  final ZeroTrustAccessApplicationOperations? operations;

  Map<String, Object?> encode() => {
    'enabled': ?enabled?.toTfJson(),
    'filter': ?filter?.toTfJson(),
    'schema': schema.toTfJson(),
    'strictness': ?strictness?.toTfJson(),
    'transform_jsonata': ?transformJsonata?.toTfJson(),
    'operations': ?operations?.encode(),
  };
}

/// `strictness` — derived from the provider schema description.
enum ZeroTrustAccessApplicationStrictness implements TerraformEnum {
  strict('strict'),
  passthrough('passthrough');

  const ZeroTrustAccessApplicationStrictness(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `scim_config.mappings.operations` block of
/// `cloudflare_zero_trust_access_application` (derived from provider schema).
@immutable
final class ZeroTrustAccessApplicationOperations {
  const ZeroTrustAccessApplicationOperations({
    this.create,
    this.delete,
    this.update,
  });

  final TfArg<bool>? create;

  final TfArg<bool>? delete;

  final TfArg<bool>? update;

  Map<String, Object?> encode() => {
    'create': ?create?.toTfJson(),
    'delete': ?delete?.toTfJson(),
    'update': ?update?.toTfJson(),
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

  final TfArg<ZeroTrustAccessApplicationProtocol> protocol;

  final TfArg<Map<String, dynamic>> targetAttributes;

  Map<String, Object?> encode() => {
    'port': port.toTfJson(),
    'protocol': protocol.toTfJson(),
    'target_attributes': targetAttributes.toTfJson(),
  };
}

/// `protocol` — derived from the provider schema description.
enum ZeroTrustAccessApplicationProtocol implements TerraformEnum {
  ssh('SSH'),
  rdp('RDP');

  const ZeroTrustAccessApplicationProtocol(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `cloudflare_zero_trust_access_application`.
final class CloudflareZeroTrustAccessApplication extends Resource {
  static const String tfType = 'cloudflare_zero_trust_access_application';

  CloudflareZeroTrustAccessApplication(
    super.localName, {
    RefTo<CloudflareAccount>? accountId,
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
    ZeroTrustAccessApplicationTargets? targets,
    TfArg<bool>? serviceAuth401Redirect,
    TfArg<String>? sessionDuration,
    TfArg<bool>? skipAppLauncherLoginPage,
    TfArg<bool>? skipInterstitial,
    TfArg<List<String>>? tags,
    TfArg<ZeroTrustAccessApplicationType>? type,
    RefTo<CloudflareZone>? zoneId,
    ZeroTrustAccessApplicationCorsHeaders? corsHeaders,
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
           'account_id': ?accountId?.encodeAs('id'),
           'allow_authenticate_via_warp': ?allowAuthenticateViaWarp,
           'allow_iframe': ?allowIframe,
           'allowed_idps': ?allowedIdps,
           'app_launcher_logo_url': ?appLauncherLogoUrl,
           'app_launcher_visible': ?appLauncherVisible,
           'auto_redirect_to_identity': ?autoRedirectToIdentity,
           'bg_color': ?bgColor,
           'custom_deny_message': ?customDenyMessage,
           'custom_deny_url': ?customDenyUrl,
           'custom_non_identity_deny_url': ?customNonIdentityDenyUrl,
           'custom_pages': ?customPages,
           'domain': ?domain,
           'enable_binding_cookie': ?enableBindingCookie,
           'header_bg_color': ?headerBgColor,
           'http_only_cookie_attribute': ?httpOnlyCookieAttribute,
           'logo_url': ?logoUrl,
           'name': ?name,
           'options_preflight_bypass': ?optionsPreflightBypass,
           'path_cookie_attribute': ?pathCookieAttribute,
           'read_service_tokens_from_header': ?readServiceTokensFromHeader,
           'same_site_cookie_attribute': ?sameSiteCookieAttribute,
           ...?targets?.argMap,
           'service_auth_401_redirect': ?serviceAuth401Redirect,
           'session_duration': ?sessionDuration,
           'skip_app_launcher_login_page': ?skipAppLauncherLoginPage,
           'skip_interstitial': ?skipInterstitial,
           'tags': ?tags,
           'type': ?type,
           'zone_id': ?zoneId?.encodeAs('id'),
           if (corsHeaders != null)
             'cors_headers': TfArg.literal(corsHeaders.encode()),
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareZeroTrustAccessApplication>`.
  RefTo<CloudflareZeroTrustAccessApplication> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `aud` attribute.
  TfRef<String> get aud => TfRef.attribute<String>(this, 'aud');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `allow_authenticate_via_warp` attribute.
  TfRef<bool> get allowAuthenticateViaWarp =>
      TfRef.attribute<bool>(this, 'allow_authenticate_via_warp');

  /// Reference to `allow_iframe` attribute.
  TfRef<bool> get allowIframe => TfRef.attribute<bool>(this, 'allow_iframe');

  /// Reference to `allowed_idps` attribute.
  TfRef<List<String>> get allowedIdps =>
      TfRef.attribute<List<String>>(this, 'allowed_idps');

  /// Reference to `app_launcher_logo_url` attribute.
  TfRef<String> get appLauncherLogoUrl =>
      TfRef.attribute<String>(this, 'app_launcher_logo_url');

  /// Reference to `app_launcher_visible` attribute.
  TfRef<bool> get appLauncherVisible =>
      TfRef.attribute<bool>(this, 'app_launcher_visible');

  /// Reference to `auto_redirect_to_identity` attribute.
  TfRef<bool> get autoRedirectToIdentity =>
      TfRef.attribute<bool>(this, 'auto_redirect_to_identity');

  /// Reference to `bg_color` attribute.
  TfRef<String> get bgColor => TfRef.attribute<String>(this, 'bg_color');

  /// Reference to `custom_deny_message` attribute.
  TfRef<String> get customDenyMessage =>
      TfRef.attribute<String>(this, 'custom_deny_message');

  /// Reference to `custom_deny_url` attribute.
  TfRef<String> get customDenyUrl =>
      TfRef.attribute<String>(this, 'custom_deny_url');

  /// Reference to `custom_non_identity_deny_url` attribute.
  TfRef<String> get customNonIdentityDenyUrl =>
      TfRef.attribute<String>(this, 'custom_non_identity_deny_url');

  /// Reference to `custom_pages` attribute.
  TfRef<List<String>> get customPages =>
      TfRef.attribute<List<String>>(this, 'custom_pages');

  /// Reference to `domain` attribute.
  TfRef<String> get domain => TfRef.attribute<String>(this, 'domain');

  /// Reference to `enable_binding_cookie` attribute.
  TfRef<bool> get enableBindingCookie =>
      TfRef.attribute<bool>(this, 'enable_binding_cookie');

  /// Reference to `header_bg_color` attribute.
  TfRef<String> get headerBgColor =>
      TfRef.attribute<String>(this, 'header_bg_color');

  /// Reference to `http_only_cookie_attribute` attribute.
  TfRef<bool> get httpOnlyCookieAttribute =>
      TfRef.attribute<bool>(this, 'http_only_cookie_attribute');

  /// Reference to `logo_url` attribute.
  TfRef<String> get logoUrl => TfRef.attribute<String>(this, 'logo_url');

  /// Reference to `options_preflight_bypass` attribute.
  TfRef<bool> get optionsPreflightBypass =>
      TfRef.attribute<bool>(this, 'options_preflight_bypass');

  /// Reference to `path_cookie_attribute` attribute.
  TfRef<bool> get pathCookieAttribute =>
      TfRef.attribute<bool>(this, 'path_cookie_attribute');

  /// Reference to `read_service_tokens_from_header` attribute.
  TfRef<String> get readServiceTokensFromHeader =>
      TfRef.attribute<String>(this, 'read_service_tokens_from_header');

  /// Reference to `same_site_cookie_attribute` attribute.
  TfRef<String> get sameSiteCookieAttribute =>
      TfRef.attribute<String>(this, 'same_site_cookie_attribute');

  /// Reference to `self_hosted_domains` attribute.
  TfRef<List<String>> get selfHostedDomains =>
      TfRef.attribute<List<String>>(this, 'self_hosted_domains');

  /// Reference to `service_auth_401_redirect` attribute.
  TfRef<bool> get serviceAuth401Redirect =>
      TfRef.attribute<bool>(this, 'service_auth_401_redirect');

  /// Reference to `session_duration` attribute.
  TfRef<String> get sessionDuration =>
      TfRef.attribute<String>(this, 'session_duration');

  /// Reference to `skip_app_launcher_login_page` attribute.
  TfRef<bool> get skipAppLauncherLoginPage =>
      TfRef.attribute<bool>(this, 'skip_app_launcher_login_page');

  /// Reference to `skip_interstitial` attribute.
  TfRef<bool> get skipInterstitial =>
      TfRef.attribute<bool>(this, 'skip_interstitial');

  /// Reference to `tags` attribute.
  TfRef<List<String>> get tags => TfRef.attribute<List<String>>(this, 'tags');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');
}

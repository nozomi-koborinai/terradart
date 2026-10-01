// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_zero_trust_gateway_policy`.
const Set<String> _cloudflareZeroTrustGatewayPolicySensitive = <String>{};

/// Zero Trust Gateway Policy enum for `action`.
extension type const ZeroTrustGatewayPolicyAction._(TfArg<String> _)
    implements TfArg<String> {
  ZeroTrustGatewayPolicyAction.variable(String name)
    : this._(TfArg.variable(name));
  ZeroTrustGatewayPolicyAction.expression(String template)
    : this._(TfArg.expression(template));
  const ZeroTrustGatewayPolicyAction.arg(TfArg<String> arg) : this._(arg);

  static const on = ZeroTrustGatewayPolicyAction._(TfArgLiteral('on'));
  static const off = ZeroTrustGatewayPolicyAction._(TfArgLiteral('off'));
  static const allow = ZeroTrustGatewayPolicyAction._(TfArgLiteral('allow'));
  static const block = ZeroTrustGatewayPolicyAction._(TfArgLiteral('block'));
  static const scan = ZeroTrustGatewayPolicyAction._(TfArgLiteral('scan'));
  static const noscan = ZeroTrustGatewayPolicyAction._(TfArgLiteral('noscan'));
  static const safesearch = ZeroTrustGatewayPolicyAction._(
    TfArgLiteral('safesearch'),
  );
  static const ytrestricted = ZeroTrustGatewayPolicyAction._(
    TfArgLiteral('ytrestricted'),
  );
  static const isolate = ZeroTrustGatewayPolicyAction._(
    TfArgLiteral('isolate'),
  );
  static const noisolate = ZeroTrustGatewayPolicyAction._(
    TfArgLiteral('noisolate'),
  );
  static const overrideCase = ZeroTrustGatewayPolicyAction._(
    TfArgLiteral('override'),
  );
  static const l4Override = ZeroTrustGatewayPolicyAction._(
    TfArgLiteral('l4_override'),
  );
  static const egress = ZeroTrustGatewayPolicyAction._(TfArgLiteral('egress'));
  static const resolve = ZeroTrustGatewayPolicyAction._(
    TfArgLiteral('resolve'),
  );
  static const quarantine = ZeroTrustGatewayPolicyAction._(
    TfArgLiteral('quarantine'),
  );
  static const redirect = ZeroTrustGatewayPolicyAction._(
    TfArgLiteral('redirect'),
  );

  static const List<ZeroTrustGatewayPolicyAction> values = [
    on,
    off,
    allow,
    block,
    scan,
    noscan,
    safesearch,
    ytrestricted,
    isolate,
    noisolate,
    overrideCase,
    l4Override,
    egress,
    resolve,
    quarantine,
    redirect,
  ];
}

/// Zero Trust Gateway Policy enum for `filters`.
extension type const ZeroTrustGatewayPolicyFilters._(TfArg<String> _)
    implements TfArg<String> {
  ZeroTrustGatewayPolicyFilters.variable(String name)
    : this._(TfArg.variable(name));
  ZeroTrustGatewayPolicyFilters.expression(String template)
    : this._(TfArg.expression(template));
  const ZeroTrustGatewayPolicyFilters.arg(TfArg<String> arg) : this._(arg);

  static const http = ZeroTrustGatewayPolicyFilters._(TfArgLiteral('http'));
  static const dns = ZeroTrustGatewayPolicyFilters._(TfArgLiteral('dns'));
  static const l4 = ZeroTrustGatewayPolicyFilters._(TfArgLiteral('l4'));
  static const egress = ZeroTrustGatewayPolicyFilters._(TfArgLiteral('egress'));
  static const dnsResolver = ZeroTrustGatewayPolicyFilters._(
    TfArgLiteral('dns_resolver'),
  );

  static const List<ZeroTrustGatewayPolicyFilters> values = [
    http,
    dns,
    l4,
    egress,
    dnsResolver,
  ];
}

/// Typed helper for the `expiration` block of
/// `cloudflare_zero_trust_gateway_policy` (derived from provider schema).
@immutable
final class ZeroTrustGatewayPolicyExpiration {
  const ZeroTrustGatewayPolicyExpiration({
    this.duration,
    required this.expiresAt,
  });

  final TfArg<num>? duration;

  final TfArg<String> expiresAt;

  @internal
  Map<String, Object?> encode() => {
    'duration': ?duration?.toTfJson(),
    'expires_at': expiresAt.toTfJson(),
  };
}

/// Typed helper for the `rule_settings` block of
/// `cloudflare_zero_trust_gateway_policy` (derived from provider schema).
@immutable
final class ZeroTrustGatewayPolicyRuleSettings {
  const ZeroTrustGatewayPolicyRuleSettings({
    this.addHeaders,
    this.allowChildBypass,
    this.blockPageEnabled,
    this.blockReason,
    this.bypassParentRule,
    this.deleteHeaders,
    this.ignoreCnameCategoryMatches,
    this.insecureDisableDnssecValidation,
    this.ipCategories,
    this.ipIndicatorFeeds,
    this.overrideHost,
    this.overrideIps,
    this.resolveDnsThroughCloudflare,
    this.setHeaders,
    this.auditSsh,
    this.bisoAdminControls,
    this.blockPage,
    this.checkSession,
    this.dnsResolvers,
    this.egress,
    this.forensicCopy,
    this.l4override,
    this.notificationSettings,
    this.payloadLog,
    this.quarantine,
    this.redirect,
    this.resolveDnsInternally,
    this.untrustedCert,
  });

  final TfArg<Map<String, dynamic>>? addHeaders;

  final TfArg<bool>? allowChildBypass;

  final TfArg<bool>? blockPageEnabled;

  final TfArg<String>? blockReason;

  final TfArg<bool>? bypassParentRule;

  final TfArg<List<String>>? deleteHeaders;

  final TfArg<bool>? ignoreCnameCategoryMatches;

  final TfArg<bool>? insecureDisableDnssecValidation;

  final TfArg<bool>? ipCategories;

  final TfArg<bool>? ipIndicatorFeeds;

  final TfArg<String>? overrideHost;

  final TfArg<List<String>>? overrideIps;

  final TfArg<bool>? resolveDnsThroughCloudflare;

  final TfArg<Map<String, dynamic>>? setHeaders;

  final ZeroTrustGatewayPolicyAuditSsh? auditSsh;

  final ZeroTrustGatewayPolicyBisoAdminControls? bisoAdminControls;

  final ZeroTrustGatewayPolicyBlockPage? blockPage;

  final ZeroTrustGatewayPolicyCheckSession? checkSession;

  final ZeroTrustGatewayPolicyDnsResolvers? dnsResolvers;

  final ZeroTrustGatewayPolicyEgress? egress;

  final ZeroTrustGatewayPolicyForensicCopy? forensicCopy;

  final ZeroTrustGatewayPolicyL4override? l4override;

  final ZeroTrustGatewayPolicyNotificationSettings? notificationSettings;

  final ZeroTrustGatewayPolicyPayloadLog? payloadLog;

  final ZeroTrustGatewayPolicyQuarantine? quarantine;

  final ZeroTrustGatewayPolicyRedirect? redirect;

  final ZeroTrustGatewayPolicyResolveDnsInternally? resolveDnsInternally;

  final ZeroTrustGatewayPolicyUntrustedCert? untrustedCert;

  @internal
  Map<String, Object?> encode() => {
    'add_headers': ?addHeaders?.toTfJson(),
    'allow_child_bypass': ?allowChildBypass?.toTfJson(),
    'block_page_enabled': ?blockPageEnabled?.toTfJson(),
    'block_reason': ?blockReason?.toTfJson(),
    'bypass_parent_rule': ?bypassParentRule?.toTfJson(),
    'delete_headers': ?deleteHeaders?.toTfJson(),
    'ignore_cname_category_matches': ?ignoreCnameCategoryMatches?.toTfJson(),
    'insecure_disable_dnssec_validation': ?insecureDisableDnssecValidation
        ?.toTfJson(),
    'ip_categories': ?ipCategories?.toTfJson(),
    'ip_indicator_feeds': ?ipIndicatorFeeds?.toTfJson(),
    'override_host': ?overrideHost?.toTfJson(),
    'override_ips': ?overrideIps?.toTfJson(),
    'resolve_dns_through_cloudflare': ?resolveDnsThroughCloudflare?.toTfJson(),
    'set_headers': ?setHeaders?.toTfJson(),
    'audit_ssh': ?auditSsh?.encode(),
    'biso_admin_controls': ?bisoAdminControls?.encode(),
    'block_page': ?blockPage?.encode(),
    'check_session': ?checkSession?.encode(),
    'dns_resolvers': ?dnsResolvers?.encode(),
    'egress': ?egress?.encode(),
    'forensic_copy': ?forensicCopy?.encode(),
    'l4override': ?l4override?.encode(),
    'notification_settings': ?notificationSettings?.encode(),
    'payload_log': ?payloadLog?.encode(),
    'quarantine': ?quarantine?.encode(),
    'redirect': ?redirect?.encode(),
    'resolve_dns_internally': ?resolveDnsInternally?.encode(),
    'untrusted_cert': ?untrustedCert?.encode(),
  };
}

/// Typed helper for the `rule_settings.audit_ssh` block of
/// `cloudflare_zero_trust_gateway_policy` (derived from provider schema).
@immutable
final class ZeroTrustGatewayPolicyAuditSsh {
  const ZeroTrustGatewayPolicyAuditSsh({this.commandLogging});

  final TfArg<bool>? commandLogging;

  @internal
  Map<String, Object?> encode() => {
    'command_logging': ?commandLogging?.toTfJson(),
  };
}

/// Typed helper for the `rule_settings.biso_admin_controls` block of
/// `cloudflare_zero_trust_gateway_policy` (derived from provider schema).
@immutable
final class ZeroTrustGatewayPolicyBisoAdminControls {
  const ZeroTrustGatewayPolicyBisoAdminControls({
    this.copy,
    this.dcp,
    this.dd,
    this.dk,
    this.download,
    this.dp,
    this.du,
    this.keyboard,
    this.paste,
    this.printing,
    this.upload,
    this.version,
    this.wmId,
  });

  final ZeroTrustGatewayPolicyCopy? copy;

  final TfArg<bool>? dcp;

  final TfArg<bool>? dd;

  final TfArg<bool>? dk;

  final ZeroTrustGatewayPolicyDownload? download;

  final TfArg<bool>? dp;

  final TfArg<bool>? du;

  final ZeroTrustGatewayPolicyKeyboard? keyboard;

  final ZeroTrustGatewayPolicyPaste? paste;

  final ZeroTrustGatewayPolicyPrinting? printing;

  final ZeroTrustGatewayPolicyUpload? upload;

  final ZeroTrustGatewayPolicyBisoAdminControlsVersion? version;

  final TfArg<String>? wmId;

  @internal
  Map<String, Object?> encode() => {
    'copy': ?copy?.toTfJson(),
    'dcp': ?dcp?.toTfJson(),
    'dd': ?dd?.toTfJson(),
    'dk': ?dk?.toTfJson(),
    'download': ?download?.toTfJson(),
    'dp': ?dp?.toTfJson(),
    'du': ?du?.toTfJson(),
    'keyboard': ?keyboard?.toTfJson(),
    'paste': ?paste?.toTfJson(),
    'printing': ?printing?.toTfJson(),
    'upload': ?upload?.toTfJson(),
    'version': ?version?.toTfJson(),
    'wm_id': ?wmId?.toTfJson(),
  };
}

/// `copy` — derived from the provider schema description.
extension type const ZeroTrustGatewayPolicyCopy._(TfArg<String> _)
    implements TfArg<String> {
  ZeroTrustGatewayPolicyCopy.variable(String name)
    : this._(TfArg.variable(name));
  ZeroTrustGatewayPolicyCopy.expression(String template)
    : this._(TfArg.expression(template));
  const ZeroTrustGatewayPolicyCopy.arg(TfArg<String> arg) : this._(arg);

  static const enabled = ZeroTrustGatewayPolicyCopy._(TfArgLiteral('enabled'));
  static const disabled = ZeroTrustGatewayPolicyCopy._(
    TfArgLiteral('disabled'),
  );
  static const remoteOnly = ZeroTrustGatewayPolicyCopy._(
    TfArgLiteral('remote_only'),
  );

  static const List<ZeroTrustGatewayPolicyCopy> values = [
    enabled,
    disabled,
    remoteOnly,
  ];
}

/// `download` — derived from the provider schema description.
extension type const ZeroTrustGatewayPolicyDownload._(TfArg<String> _)
    implements TfArg<String> {
  ZeroTrustGatewayPolicyDownload.variable(String name)
    : this._(TfArg.variable(name));
  ZeroTrustGatewayPolicyDownload.expression(String template)
    : this._(TfArg.expression(template));
  const ZeroTrustGatewayPolicyDownload.arg(TfArg<String> arg) : this._(arg);

  static const enabled = ZeroTrustGatewayPolicyDownload._(
    TfArgLiteral('enabled'),
  );
  static const disabled = ZeroTrustGatewayPolicyDownload._(
    TfArgLiteral('disabled'),
  );
  static const remoteOnly = ZeroTrustGatewayPolicyDownload._(
    TfArgLiteral('remote_only'),
  );

  static const List<ZeroTrustGatewayPolicyDownload> values = [
    enabled,
    disabled,
    remoteOnly,
  ];
}

/// `keyboard` — derived from the provider schema description.
extension type const ZeroTrustGatewayPolicyKeyboard._(TfArg<String> _)
    implements TfArg<String> {
  ZeroTrustGatewayPolicyKeyboard.variable(String name)
    : this._(TfArg.variable(name));
  ZeroTrustGatewayPolicyKeyboard.expression(String template)
    : this._(TfArg.expression(template));
  const ZeroTrustGatewayPolicyKeyboard.arg(TfArg<String> arg) : this._(arg);

  static const enabled = ZeroTrustGatewayPolicyKeyboard._(
    TfArgLiteral('enabled'),
  );
  static const disabled = ZeroTrustGatewayPolicyKeyboard._(
    TfArgLiteral('disabled'),
  );

  static const List<ZeroTrustGatewayPolicyKeyboard> values = [
    enabled,
    disabled,
  ];
}

/// `paste` — derived from the provider schema description.
extension type const ZeroTrustGatewayPolicyPaste._(TfArg<String> _)
    implements TfArg<String> {
  ZeroTrustGatewayPolicyPaste.variable(String name)
    : this._(TfArg.variable(name));
  ZeroTrustGatewayPolicyPaste.expression(String template)
    : this._(TfArg.expression(template));
  const ZeroTrustGatewayPolicyPaste.arg(TfArg<String> arg) : this._(arg);

  static const enabled = ZeroTrustGatewayPolicyPaste._(TfArgLiteral('enabled'));
  static const disabled = ZeroTrustGatewayPolicyPaste._(
    TfArgLiteral('disabled'),
  );
  static const remoteOnly = ZeroTrustGatewayPolicyPaste._(
    TfArgLiteral('remote_only'),
  );

  static const List<ZeroTrustGatewayPolicyPaste> values = [
    enabled,
    disabled,
    remoteOnly,
  ];
}

/// `printing` — derived from the provider schema description.
extension type const ZeroTrustGatewayPolicyPrinting._(TfArg<String> _)
    implements TfArg<String> {
  ZeroTrustGatewayPolicyPrinting.variable(String name)
    : this._(TfArg.variable(name));
  ZeroTrustGatewayPolicyPrinting.expression(String template)
    : this._(TfArg.expression(template));
  const ZeroTrustGatewayPolicyPrinting.arg(TfArg<String> arg) : this._(arg);

  static const enabled = ZeroTrustGatewayPolicyPrinting._(
    TfArgLiteral('enabled'),
  );
  static const disabled = ZeroTrustGatewayPolicyPrinting._(
    TfArgLiteral('disabled'),
  );

  static const List<ZeroTrustGatewayPolicyPrinting> values = [
    enabled,
    disabled,
  ];
}

/// `upload` — derived from the provider schema description.
extension type const ZeroTrustGatewayPolicyUpload._(TfArg<String> _)
    implements TfArg<String> {
  ZeroTrustGatewayPolicyUpload.variable(String name)
    : this._(TfArg.variable(name));
  ZeroTrustGatewayPolicyUpload.expression(String template)
    : this._(TfArg.expression(template));
  const ZeroTrustGatewayPolicyUpload.arg(TfArg<String> arg) : this._(arg);

  static const enabled = ZeroTrustGatewayPolicyUpload._(
    TfArgLiteral('enabled'),
  );
  static const disabled = ZeroTrustGatewayPolicyUpload._(
    TfArgLiteral('disabled'),
  );

  static const List<ZeroTrustGatewayPolicyUpload> values = [enabled, disabled];
}

/// `version` — derived from the provider schema description.
extension type const ZeroTrustGatewayPolicyBisoAdminControlsVersion._(
  TfArg<String> _
) implements TfArg<String> {
  ZeroTrustGatewayPolicyBisoAdminControlsVersion.variable(String name)
    : this._(TfArg.variable(name));
  ZeroTrustGatewayPolicyBisoAdminControlsVersion.expression(String template)
    : this._(TfArg.expression(template));
  const ZeroTrustGatewayPolicyBisoAdminControlsVersion.arg(TfArg<String> arg)
    : this._(arg);

  static const v1 = ZeroTrustGatewayPolicyBisoAdminControlsVersion._(
    TfArgLiteral('v1'),
  );
  static const v2 = ZeroTrustGatewayPolicyBisoAdminControlsVersion._(
    TfArgLiteral('v2'),
  );

  static const List<ZeroTrustGatewayPolicyBisoAdminControlsVersion> values = [
    v1,
    v2,
  ];
}

/// Typed helper for the `rule_settings.block_page` block of
/// `cloudflare_zero_trust_gateway_policy` (derived from provider schema).
@immutable
final class ZeroTrustGatewayPolicyBlockPage {
  const ZeroTrustGatewayPolicyBlockPage({
    this.includeContext,
    required this.targetUri,
  });

  final TfArg<bool>? includeContext;

  final TfArg<String> targetUri;

  @internal
  Map<String, Object?> encode() => {
    'include_context': ?includeContext?.toTfJson(),
    'target_uri': targetUri.toTfJson(),
  };
}

/// Typed helper for the `rule_settings.check_session` block of
/// `cloudflare_zero_trust_gateway_policy` (derived from provider schema).
@immutable
final class ZeroTrustGatewayPolicyCheckSession {
  const ZeroTrustGatewayPolicyCheckSession({this.duration, this.enforce});

  final TfArg<String>? duration;

  final TfArg<bool>? enforce;

  @internal
  Map<String, Object?> encode() => {
    'duration': ?duration?.toTfJson(),
    'enforce': ?enforce?.toTfJson(),
  };
}

/// Typed helper for the `rule_settings.dns_resolvers` block of
/// `cloudflare_zero_trust_gateway_policy` (derived from provider schema).
@immutable
final class ZeroTrustGatewayPolicyDnsResolvers {
  const ZeroTrustGatewayPolicyDnsResolvers({this.ipv4, this.ipv6});

  final List<ZeroTrustGatewayPolicyIpv4>? ipv4;

  final List<ZeroTrustGatewayPolicyIpv6>? ipv6;

  @internal
  Map<String, Object?> encode() => {
    if (ipv4 != null) 'ipv4': [for (final e in ipv4!) e.encode()],
    if (ipv6 != null) 'ipv6': [for (final e in ipv6!) e.encode()],
  };
}

/// Typed helper for the `rule_settings.dns_resolvers.ipv4` block of
/// `cloudflare_zero_trust_gateway_policy` (derived from provider schema).
@immutable
final class ZeroTrustGatewayPolicyIpv4 {
  const ZeroTrustGatewayPolicyIpv4({
    required this.ip,
    this.port,
    this.routeThroughPrivateNetwork,
    this.vnetId,
  });

  final TfArg<String> ip;

  final TfArg<num>? port;

  final TfArg<bool>? routeThroughPrivateNetwork;

  final TfArg<String>? vnetId;

  @internal
  Map<String, Object?> encode() => {
    'ip': ip.toTfJson(),
    'port': ?port?.toTfJson(),
    'route_through_private_network': ?routeThroughPrivateNetwork?.toTfJson(),
    'vnet_id': ?vnetId?.toTfJson(),
  };
}

/// Typed helper for the `rule_settings.dns_resolvers.ipv6` block of
/// `cloudflare_zero_trust_gateway_policy` (derived from provider schema).
@immutable
final class ZeroTrustGatewayPolicyIpv6 {
  const ZeroTrustGatewayPolicyIpv6({
    required this.ip,
    this.port,
    this.routeThroughPrivateNetwork,
    this.vnetId,
  });

  final TfArg<String> ip;

  final TfArg<num>? port;

  final TfArg<bool>? routeThroughPrivateNetwork;

  final TfArg<String>? vnetId;

  @internal
  Map<String, Object?> encode() => {
    'ip': ip.toTfJson(),
    'port': ?port?.toTfJson(),
    'route_through_private_network': ?routeThroughPrivateNetwork?.toTfJson(),
    'vnet_id': ?vnetId?.toTfJson(),
  };
}

/// Typed helper for the `rule_settings.egress` block of
/// `cloudflare_zero_trust_gateway_policy` (derived from provider schema).
@immutable
final class ZeroTrustGatewayPolicyEgress {
  const ZeroTrustGatewayPolicyEgress({this.ipv4, this.ipv4Fallback, this.ipv6});

  final TfArg<String>? ipv4;

  final TfArg<String>? ipv4Fallback;

  final TfArg<String>? ipv6;

  @internal
  Map<String, Object?> encode() => {
    'ipv4': ?ipv4?.toTfJson(),
    'ipv4_fallback': ?ipv4Fallback?.toTfJson(),
    'ipv6': ?ipv6?.toTfJson(),
  };
}

/// Typed helper for the `rule_settings.forensic_copy` block of
/// `cloudflare_zero_trust_gateway_policy` (derived from provider schema).
@immutable
final class ZeroTrustGatewayPolicyForensicCopy {
  const ZeroTrustGatewayPolicyForensicCopy({this.enabled});

  final TfArg<bool>? enabled;

  @internal
  Map<String, Object?> encode() => {'enabled': ?enabled?.toTfJson()};
}

/// Typed helper for the `rule_settings.l4override` block of
/// `cloudflare_zero_trust_gateway_policy` (derived from provider schema).
@immutable
final class ZeroTrustGatewayPolicyL4override {
  const ZeroTrustGatewayPolicyL4override({this.ip, this.port});

  final TfArg<String>? ip;

  final TfArg<num>? port;

  @internal
  Map<String, Object?> encode() => {
    'ip': ?ip?.toTfJson(),
    'port': ?port?.toTfJson(),
  };
}

/// Typed helper for the `rule_settings.notification_settings` block of
/// `cloudflare_zero_trust_gateway_policy` (derived from provider schema).
@immutable
final class ZeroTrustGatewayPolicyNotificationSettings {
  const ZeroTrustGatewayPolicyNotificationSettings({
    this.enabled,
    this.includeContext,
    this.msg,
    this.supportUrl,
  });

  final TfArg<bool>? enabled;

  final TfArg<bool>? includeContext;

  final TfArg<String>? msg;

  final TfArg<String>? supportUrl;

  @internal
  Map<String, Object?> encode() => {
    'enabled': ?enabled?.toTfJson(),
    'include_context': ?includeContext?.toTfJson(),
    'msg': ?msg?.toTfJson(),
    'support_url': ?supportUrl?.toTfJson(),
  };
}

/// Typed helper for the `rule_settings.payload_log` block of
/// `cloudflare_zero_trust_gateway_policy` (derived from provider schema).
@immutable
final class ZeroTrustGatewayPolicyPayloadLog {
  const ZeroTrustGatewayPolicyPayloadLog({this.enabled});

  final TfArg<bool>? enabled;

  @internal
  Map<String, Object?> encode() => {'enabled': ?enabled?.toTfJson()};
}

/// Typed helper for the `rule_settings.quarantine` block of
/// `cloudflare_zero_trust_gateway_policy` (derived from provider schema).
@immutable
final class ZeroTrustGatewayPolicyQuarantine {
  const ZeroTrustGatewayPolicyQuarantine({this.fileTypes});

  final List<ZeroTrustGatewayPolicyFileTypes>? fileTypes;

  @internal
  Map<String, Object?> encode() => {
    if (fileTypes != null)
      'file_types': [for (final e in fileTypes!) e.toTfJson()],
  };
}

/// `file_types` — derived from the provider schema description.
extension type const ZeroTrustGatewayPolicyFileTypes._(TfArg<String> _)
    implements TfArg<String> {
  ZeroTrustGatewayPolicyFileTypes.variable(String name)
    : this._(TfArg.variable(name));
  ZeroTrustGatewayPolicyFileTypes.expression(String template)
    : this._(TfArg.expression(template));
  const ZeroTrustGatewayPolicyFileTypes.arg(TfArg<String> arg) : this._(arg);

  static const exe = ZeroTrustGatewayPolicyFileTypes._(TfArgLiteral('exe'));
  static const pdf = ZeroTrustGatewayPolicyFileTypes._(TfArgLiteral('pdf'));
  static const doc = ZeroTrustGatewayPolicyFileTypes._(TfArgLiteral('doc'));
  static const docm = ZeroTrustGatewayPolicyFileTypes._(TfArgLiteral('docm'));
  static const docx = ZeroTrustGatewayPolicyFileTypes._(TfArgLiteral('docx'));
  static const rtf = ZeroTrustGatewayPolicyFileTypes._(TfArgLiteral('rtf'));
  static const ppt = ZeroTrustGatewayPolicyFileTypes._(TfArgLiteral('ppt'));
  static const pptx = ZeroTrustGatewayPolicyFileTypes._(TfArgLiteral('pptx'));
  static const xls = ZeroTrustGatewayPolicyFileTypes._(TfArgLiteral('xls'));
  static const xlsm = ZeroTrustGatewayPolicyFileTypes._(TfArgLiteral('xlsm'));
  static const xlsx = ZeroTrustGatewayPolicyFileTypes._(TfArgLiteral('xlsx'));
  static const zip = ZeroTrustGatewayPolicyFileTypes._(TfArgLiteral('zip'));
  static const rar = ZeroTrustGatewayPolicyFileTypes._(TfArgLiteral('rar'));

  static const List<ZeroTrustGatewayPolicyFileTypes> values = [
    exe,
    pdf,
    doc,
    docm,
    docx,
    rtf,
    ppt,
    pptx,
    xls,
    xlsm,
    xlsx,
    zip,
    rar,
  ];
}

/// Typed helper for the `rule_settings.redirect` block of
/// `cloudflare_zero_trust_gateway_policy` (derived from provider schema).
@immutable
final class ZeroTrustGatewayPolicyRedirect {
  const ZeroTrustGatewayPolicyRedirect({
    this.includeContext,
    this.preservePathAndQuery,
    required this.targetUri,
  });

  final TfArg<bool>? includeContext;

  final TfArg<bool>? preservePathAndQuery;

  final TfArg<String> targetUri;

  @internal
  Map<String, Object?> encode() => {
    'include_context': ?includeContext?.toTfJson(),
    'preserve_path_and_query': ?preservePathAndQuery?.toTfJson(),
    'target_uri': targetUri.toTfJson(),
  };
}

/// Typed helper for the `rule_settings.resolve_dns_internally` block of
/// `cloudflare_zero_trust_gateway_policy` (derived from provider schema).
@immutable
final class ZeroTrustGatewayPolicyResolveDnsInternally {
  const ZeroTrustGatewayPolicyResolveDnsInternally({
    this.fallback,
    this.viewId,
  });

  final ZeroTrustGatewayPolicyFallback? fallback;

  final TfArg<String>? viewId;

  @internal
  Map<String, Object?> encode() => {
    'fallback': ?fallback?.toTfJson(),
    'view_id': ?viewId?.toTfJson(),
  };
}

/// `fallback` — derived from the provider schema description.
extension type const ZeroTrustGatewayPolicyFallback._(TfArg<String> _)
    implements TfArg<String> {
  ZeroTrustGatewayPolicyFallback.variable(String name)
    : this._(TfArg.variable(name));
  ZeroTrustGatewayPolicyFallback.expression(String template)
    : this._(TfArg.expression(template));
  const ZeroTrustGatewayPolicyFallback.arg(TfArg<String> arg) : this._(arg);

  static const none = ZeroTrustGatewayPolicyFallback._(TfArgLiteral('none'));
  static const publicDns = ZeroTrustGatewayPolicyFallback._(
    TfArgLiteral('public_dns'),
  );

  static const List<ZeroTrustGatewayPolicyFallback> values = [none, publicDns];
}

/// Typed helper for the `rule_settings.untrusted_cert` block of
/// `cloudflare_zero_trust_gateway_policy` (derived from provider schema).
@immutable
final class ZeroTrustGatewayPolicyUntrustedCert {
  const ZeroTrustGatewayPolicyUntrustedCert({this.action});

  final ZeroTrustGatewayPolicyUntrustedCertAction? action;

  @internal
  Map<String, Object?> encode() => {'action': ?action?.toTfJson()};
}

/// `action` — derived from the provider schema description.
extension type const ZeroTrustGatewayPolicyUntrustedCertAction._(
  TfArg<String> _
) implements TfArg<String> {
  ZeroTrustGatewayPolicyUntrustedCertAction.variable(String name)
    : this._(TfArg.variable(name));
  ZeroTrustGatewayPolicyUntrustedCertAction.expression(String template)
    : this._(TfArg.expression(template));
  const ZeroTrustGatewayPolicyUntrustedCertAction.arg(TfArg<String> arg)
    : this._(arg);

  static const passThrough = ZeroTrustGatewayPolicyUntrustedCertAction._(
    TfArgLiteral('pass_through'),
  );
  static const block = ZeroTrustGatewayPolicyUntrustedCertAction._(
    TfArgLiteral('block'),
  );
  static const error = ZeroTrustGatewayPolicyUntrustedCertAction._(
    TfArgLiteral('error'),
  );

  static const List<ZeroTrustGatewayPolicyUntrustedCertAction> values = [
    passThrough,
    block,
    error,
  ];
}

/// Typed helper for the `schedule` block of
/// `cloudflare_zero_trust_gateway_policy` (derived from provider schema).
@immutable
final class ZeroTrustGatewayPolicySchedule {
  const ZeroTrustGatewayPolicySchedule({
    this.fri,
    this.mon,
    this.sat,
    this.sun,
    this.thu,
    this.timeZone,
    this.tue,
    this.wed,
  });

  final TfArg<String>? fri;

  final TfArg<String>? mon;

  final TfArg<String>? sat;

  final TfArg<String>? sun;

  final TfArg<String>? thu;

  final TfArg<String>? timeZone;

  final TfArg<String>? tue;

  final TfArg<String>? wed;

  @internal
  Map<String, Object?> encode() => {
    'fri': ?fri?.toTfJson(),
    'mon': ?mon?.toTfJson(),
    'sat': ?sat?.toTfJson(),
    'sun': ?sun?.toTfJson(),
    'thu': ?thu?.toTfJson(),
    'time_zone': ?timeZone?.toTfJson(),
    'tue': ?tue?.toTfJson(),
    'wed': ?wed?.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_zero_trust_gateway_policy`.
final class CloudflareZeroTrustGatewayPolicy extends Resource {
  static const String tfType = 'cloudflare_zero_trust_gateway_policy';

  CloudflareZeroTrustGatewayPolicy(
    super.localName, {
    required RefTo<CloudflareAccount> accountId,
    required ZeroTrustGatewayPolicyAction action,
    TfArg<String>? description,
    TfArg<String>? devicePosture,
    TfArg<bool>? enabled,
    List<ZeroTrustGatewayPolicyFilters>? filters,
    TfArg<String>? identity,
    required TfArg<String> name,
    TfArg<num>? precedence,
    TfArg<String>? traffic,
    ZeroTrustGatewayPolicyExpiration? expiration,
    ZeroTrustGatewayPolicyRuleSettings? ruleSettings,
    ZeroTrustGatewayPolicySchedule? schedule,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'action': action,
           'description': ?description,
           'device_posture': ?devicePosture,
           'enabled': ?enabled,
           if (filters != null)
             'filters': TfArg.literal([for (final e in filters) e.toTfJson()]),
           'identity': ?identity,
           'name': name,
           'precedence': ?precedence,
           'traffic': ?traffic,
           if (expiration != null)
             'expiration': TfArg.literal(expiration.encode()),
           if (ruleSettings != null)
             'rule_settings': TfArg.literal(ruleSettings.encode()),
           if (schedule != null) 'schedule': TfArg.literal(schedule.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareZeroTrustGatewayPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareZeroTrustGatewayPolicy>`.
  RefTo<CloudflareZeroTrustGatewayPolicy> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `deleted_at` attribute.
  TfRef<String> get deletedAt => TfRef.attribute<String>(this, 'deleted_at');

  /// Reference to `read_only` attribute.
  TfRef<bool> get readOnly => TfRef.attribute<bool>(this, 'read_only');

  /// Reference to `sharable` attribute.
  TfRef<bool> get sharable => TfRef.attribute<bool>(this, 'sharable');

  /// Reference to `source_account` attribute.
  TfRef<String> get sourceAccount =>
      TfRef.attribute<String>(this, 'source_account');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');

  /// Reference to `version` attribute.
  TfRef<num> get version => TfRef.attribute<num>(this, 'version');

  /// Reference to `warning_status` attribute.
  TfRef<String> get warningStatus =>
      TfRef.attribute<String>(this, 'warning_status');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `action` attribute.
  TfRef<String> get action => TfRef.attribute<String>(this, 'action');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `device_posture` attribute.
  TfRef<String> get devicePosture =>
      TfRef.attribute<String>(this, 'device_posture');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `filters` attribute.
  TfRef<List<String>> get filters =>
      TfRef.attribute<List<String>>(this, 'filters');

  /// Reference to `identity` attribute.
  TfRef<String> get identity => TfRef.attribute<String>(this, 'identity');

  /// Reference to `precedence` attribute.
  TfRef<num> get precedence => TfRef.attribute<num>(this, 'precedence');

  /// Reference to `traffic` attribute.
  TfRef<String> get traffic => TfRef.attribute<String>(this, 'traffic');
}

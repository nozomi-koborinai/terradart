// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_zero_trust_gateway_policy`.
const Set<String> _cloudflareZeroTrustGatewayPolicySensitive = <String>{};

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

  Map<String, Object?> encode() => {
    if (duration != null) 'duration': duration!.toTfJson(),
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

  final TfArg<List<Object?>>? deleteHeaders;

  final TfArg<bool>? ignoreCnameCategoryMatches;

  final TfArg<bool>? insecureDisableDnssecValidation;

  final TfArg<bool>? ipCategories;

  final TfArg<bool>? ipIndicatorFeeds;

  final TfArg<String>? overrideHost;

  final TfArg<List<Object?>>? overrideIps;

  final TfArg<bool>? resolveDnsThroughCloudflare;

  final TfArg<Map<String, dynamic>>? setHeaders;

  final ZeroTrustGatewayPolicyRuleSettingsAuditSsh? auditSsh;

  final ZeroTrustGatewayPolicyRuleSettingsBisoAdminControls? bisoAdminControls;

  final ZeroTrustGatewayPolicyRuleSettingsBlockPage? blockPage;

  final ZeroTrustGatewayPolicyRuleSettingsCheckSession? checkSession;

  final ZeroTrustGatewayPolicyRuleSettingsDnsResolvers? dnsResolvers;

  final ZeroTrustGatewayPolicyRuleSettingsEgress? egress;

  final ZeroTrustGatewayPolicyRuleSettingsForensicCopy? forensicCopy;

  final ZeroTrustGatewayPolicyRuleSettingsL4override? l4override;

  final ZeroTrustGatewayPolicyRuleSettingsNotificationSettings?
  notificationSettings;

  final ZeroTrustGatewayPolicyRuleSettingsPayloadLog? payloadLog;

  final ZeroTrustGatewayPolicyRuleSettingsQuarantine? quarantine;

  final ZeroTrustGatewayPolicyRuleSettingsRedirect? redirect;

  final ZeroTrustGatewayPolicyRuleSettingsResolveDnsInternally?
  resolveDnsInternally;

  final ZeroTrustGatewayPolicyRuleSettingsUntrustedCert? untrustedCert;

  Map<String, Object?> encode() => {
    if (addHeaders != null) 'add_headers': addHeaders!.toTfJson(),
    if (allowChildBypass != null)
      'allow_child_bypass': allowChildBypass!.toTfJson(),
    if (blockPageEnabled != null)
      'block_page_enabled': blockPageEnabled!.toTfJson(),
    if (blockReason != null) 'block_reason': blockReason!.toTfJson(),
    if (bypassParentRule != null)
      'bypass_parent_rule': bypassParentRule!.toTfJson(),
    if (deleteHeaders != null) 'delete_headers': deleteHeaders!.toTfJson(),
    if (ignoreCnameCategoryMatches != null)
      'ignore_cname_category_matches': ignoreCnameCategoryMatches!.toTfJson(),
    if (insecureDisableDnssecValidation != null)
      'insecure_disable_dnssec_validation': insecureDisableDnssecValidation!
          .toTfJson(),
    if (ipCategories != null) 'ip_categories': ipCategories!.toTfJson(),
    if (ipIndicatorFeeds != null)
      'ip_indicator_feeds': ipIndicatorFeeds!.toTfJson(),
    if (overrideHost != null) 'override_host': overrideHost!.toTfJson(),
    if (overrideIps != null) 'override_ips': overrideIps!.toTfJson(),
    if (resolveDnsThroughCloudflare != null)
      'resolve_dns_through_cloudflare': resolveDnsThroughCloudflare!.toTfJson(),
    if (setHeaders != null) 'set_headers': setHeaders!.toTfJson(),
    if (auditSsh != null) 'audit_ssh': auditSsh!.encode(),
    if (bisoAdminControls != null)
      'biso_admin_controls': bisoAdminControls!.encode(),
    if (blockPage != null) 'block_page': blockPage!.encode(),
    if (checkSession != null) 'check_session': checkSession!.encode(),
    if (dnsResolvers != null) 'dns_resolvers': dnsResolvers!.encode(),
    if (egress != null) 'egress': egress!.encode(),
    if (forensicCopy != null) 'forensic_copy': forensicCopy!.encode(),
    if (l4override != null) 'l4override': l4override!.encode(),
    if (notificationSettings != null)
      'notification_settings': notificationSettings!.encode(),
    if (payloadLog != null) 'payload_log': payloadLog!.encode(),
    if (quarantine != null) 'quarantine': quarantine!.encode(),
    if (redirect != null) 'redirect': redirect!.encode(),
    if (resolveDnsInternally != null)
      'resolve_dns_internally': resolveDnsInternally!.encode(),
    if (untrustedCert != null) 'untrusted_cert': untrustedCert!.encode(),
  };
}

/// Typed helper for the `rule_settings.audit_ssh` block of
/// `cloudflare_zero_trust_gateway_policy` (derived from provider schema).
@immutable
final class ZeroTrustGatewayPolicyRuleSettingsAuditSsh {
  const ZeroTrustGatewayPolicyRuleSettingsAuditSsh({this.commandLogging});

  final TfArg<bool>? commandLogging;

  Map<String, Object?> encode() => {
    if (commandLogging != null) 'command_logging': commandLogging!.toTfJson(),
  };
}

/// Typed helper for the `rule_settings.biso_admin_controls` block of
/// `cloudflare_zero_trust_gateway_policy` (derived from provider schema).
@immutable
final class ZeroTrustGatewayPolicyRuleSettingsBisoAdminControls {
  const ZeroTrustGatewayPolicyRuleSettingsBisoAdminControls({
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

  final TfArg<String>? copy;

  final TfArg<bool>? dcp;

  final TfArg<bool>? dd;

  final TfArg<bool>? dk;

  final TfArg<String>? download;

  final TfArg<bool>? dp;

  final TfArg<bool>? du;

  final TfArg<String>? keyboard;

  final TfArg<String>? paste;

  final TfArg<String>? printing;

  final TfArg<String>? upload;

  final TfArg<String>? version;

  final TfArg<String>? wmId;

  Map<String, Object?> encode() => {
    if (copy != null) 'copy': copy!.toTfJson(),
    if (dcp != null) 'dcp': dcp!.toTfJson(),
    if (dd != null) 'dd': dd!.toTfJson(),
    if (dk != null) 'dk': dk!.toTfJson(),
    if (download != null) 'download': download!.toTfJson(),
    if (dp != null) 'dp': dp!.toTfJson(),
    if (du != null) 'du': du!.toTfJson(),
    if (keyboard != null) 'keyboard': keyboard!.toTfJson(),
    if (paste != null) 'paste': paste!.toTfJson(),
    if (printing != null) 'printing': printing!.toTfJson(),
    if (upload != null) 'upload': upload!.toTfJson(),
    if (version != null) 'version': version!.toTfJson(),
    if (wmId != null) 'wm_id': wmId!.toTfJson(),
  };
}

/// Typed helper for the `rule_settings.block_page` block of
/// `cloudflare_zero_trust_gateway_policy` (derived from provider schema).
@immutable
final class ZeroTrustGatewayPolicyRuleSettingsBlockPage {
  const ZeroTrustGatewayPolicyRuleSettingsBlockPage({
    this.includeContext,
    required this.targetUri,
  });

  final TfArg<bool>? includeContext;

  final TfArg<String> targetUri;

  Map<String, Object?> encode() => {
    if (includeContext != null) 'include_context': includeContext!.toTfJson(),
    'target_uri': targetUri.toTfJson(),
  };
}

/// Typed helper for the `rule_settings.check_session` block of
/// `cloudflare_zero_trust_gateway_policy` (derived from provider schema).
@immutable
final class ZeroTrustGatewayPolicyRuleSettingsCheckSession {
  const ZeroTrustGatewayPolicyRuleSettingsCheckSession({
    this.duration,
    this.enforce,
  });

  final TfArg<String>? duration;

  final TfArg<bool>? enforce;

  Map<String, Object?> encode() => {
    if (duration != null) 'duration': duration!.toTfJson(),
    if (enforce != null) 'enforce': enforce!.toTfJson(),
  };
}

/// Typed helper for the `rule_settings.dns_resolvers` block of
/// `cloudflare_zero_trust_gateway_policy` (derived from provider schema).
@immutable
final class ZeroTrustGatewayPolicyRuleSettingsDnsResolvers {
  const ZeroTrustGatewayPolicyRuleSettingsDnsResolvers({this.ipv4, this.ipv6});

  final List<ZeroTrustGatewayPolicyRuleSettingsDnsResolversIpv4>? ipv4;

  final List<ZeroTrustGatewayPolicyRuleSettingsDnsResolversIpv6>? ipv6;

  Map<String, Object?> encode() => {
    if (ipv4 != null) 'ipv4': [for (final e in ipv4!) e.encode()],
    if (ipv6 != null) 'ipv6': [for (final e in ipv6!) e.encode()],
  };
}

/// Typed helper for the `rule_settings.dns_resolvers.ipv4` block of
/// `cloudflare_zero_trust_gateway_policy` (derived from provider schema).
@immutable
final class ZeroTrustGatewayPolicyRuleSettingsDnsResolversIpv4 {
  const ZeroTrustGatewayPolicyRuleSettingsDnsResolversIpv4({
    required this.ip,
    this.port,
    this.routeThroughPrivateNetwork,
    this.vnetId,
  });

  final TfArg<String> ip;

  final TfArg<num>? port;

  final TfArg<bool>? routeThroughPrivateNetwork;

  final TfArg<String>? vnetId;

  Map<String, Object?> encode() => {
    'ip': ip.toTfJson(),
    if (port != null) 'port': port!.toTfJson(),
    if (routeThroughPrivateNetwork != null)
      'route_through_private_network': routeThroughPrivateNetwork!.toTfJson(),
    if (vnetId != null) 'vnet_id': vnetId!.toTfJson(),
  };
}

/// Typed helper for the `rule_settings.dns_resolvers.ipv6` block of
/// `cloudflare_zero_trust_gateway_policy` (derived from provider schema).
@immutable
final class ZeroTrustGatewayPolicyRuleSettingsDnsResolversIpv6 {
  const ZeroTrustGatewayPolicyRuleSettingsDnsResolversIpv6({
    required this.ip,
    this.port,
    this.routeThroughPrivateNetwork,
    this.vnetId,
  });

  final TfArg<String> ip;

  final TfArg<num>? port;

  final TfArg<bool>? routeThroughPrivateNetwork;

  final TfArg<String>? vnetId;

  Map<String, Object?> encode() => {
    'ip': ip.toTfJson(),
    if (port != null) 'port': port!.toTfJson(),
    if (routeThroughPrivateNetwork != null)
      'route_through_private_network': routeThroughPrivateNetwork!.toTfJson(),
    if (vnetId != null) 'vnet_id': vnetId!.toTfJson(),
  };
}

/// Typed helper for the `rule_settings.egress` block of
/// `cloudflare_zero_trust_gateway_policy` (derived from provider schema).
@immutable
final class ZeroTrustGatewayPolicyRuleSettingsEgress {
  const ZeroTrustGatewayPolicyRuleSettingsEgress({
    this.ipv4,
    this.ipv4Fallback,
    this.ipv6,
  });

  final TfArg<String>? ipv4;

  final TfArg<String>? ipv4Fallback;

  final TfArg<String>? ipv6;

  Map<String, Object?> encode() => {
    if (ipv4 != null) 'ipv4': ipv4!.toTfJson(),
    if (ipv4Fallback != null) 'ipv4_fallback': ipv4Fallback!.toTfJson(),
    if (ipv6 != null) 'ipv6': ipv6!.toTfJson(),
  };
}

/// Typed helper for the `rule_settings.forensic_copy` block of
/// `cloudflare_zero_trust_gateway_policy` (derived from provider schema).
@immutable
final class ZeroTrustGatewayPolicyRuleSettingsForensicCopy {
  const ZeroTrustGatewayPolicyRuleSettingsForensicCopy({this.enabled});

  final TfArg<bool>? enabled;

  Map<String, Object?> encode() => {
    if (enabled != null) 'enabled': enabled!.toTfJson(),
  };
}

/// Typed helper for the `rule_settings.l4override` block of
/// `cloudflare_zero_trust_gateway_policy` (derived from provider schema).
@immutable
final class ZeroTrustGatewayPolicyRuleSettingsL4override {
  const ZeroTrustGatewayPolicyRuleSettingsL4override({this.ip, this.port});

  final TfArg<String>? ip;

  final TfArg<num>? port;

  Map<String, Object?> encode() => {
    if (ip != null) 'ip': ip!.toTfJson(),
    if (port != null) 'port': port!.toTfJson(),
  };
}

/// Typed helper for the `rule_settings.notification_settings` block of
/// `cloudflare_zero_trust_gateway_policy` (derived from provider schema).
@immutable
final class ZeroTrustGatewayPolicyRuleSettingsNotificationSettings {
  const ZeroTrustGatewayPolicyRuleSettingsNotificationSettings({
    this.enabled,
    this.includeContext,
    this.msg,
    this.supportUrl,
  });

  final TfArg<bool>? enabled;

  final TfArg<bool>? includeContext;

  final TfArg<String>? msg;

  final TfArg<String>? supportUrl;

  Map<String, Object?> encode() => {
    if (enabled != null) 'enabled': enabled!.toTfJson(),
    if (includeContext != null) 'include_context': includeContext!.toTfJson(),
    if (msg != null) 'msg': msg!.toTfJson(),
    if (supportUrl != null) 'support_url': supportUrl!.toTfJson(),
  };
}

/// Typed helper for the `rule_settings.payload_log` block of
/// `cloudflare_zero_trust_gateway_policy` (derived from provider schema).
@immutable
final class ZeroTrustGatewayPolicyRuleSettingsPayloadLog {
  const ZeroTrustGatewayPolicyRuleSettingsPayloadLog({this.enabled});

  final TfArg<bool>? enabled;

  Map<String, Object?> encode() => {
    if (enabled != null) 'enabled': enabled!.toTfJson(),
  };
}

/// Typed helper for the `rule_settings.quarantine` block of
/// `cloudflare_zero_trust_gateway_policy` (derived from provider schema).
@immutable
final class ZeroTrustGatewayPolicyRuleSettingsQuarantine {
  const ZeroTrustGatewayPolicyRuleSettingsQuarantine({this.fileTypes});

  final TfArg<List<Object?>>? fileTypes;

  Map<String, Object?> encode() => {
    if (fileTypes != null) 'file_types': fileTypes!.toTfJson(),
  };
}

/// Typed helper for the `rule_settings.redirect` block of
/// `cloudflare_zero_trust_gateway_policy` (derived from provider schema).
@immutable
final class ZeroTrustGatewayPolicyRuleSettingsRedirect {
  const ZeroTrustGatewayPolicyRuleSettingsRedirect({
    this.includeContext,
    this.preservePathAndQuery,
    required this.targetUri,
  });

  final TfArg<bool>? includeContext;

  final TfArg<bool>? preservePathAndQuery;

  final TfArg<String> targetUri;

  Map<String, Object?> encode() => {
    if (includeContext != null) 'include_context': includeContext!.toTfJson(),
    if (preservePathAndQuery != null)
      'preserve_path_and_query': preservePathAndQuery!.toTfJson(),
    'target_uri': targetUri.toTfJson(),
  };
}

/// Typed helper for the `rule_settings.resolve_dns_internally` block of
/// `cloudflare_zero_trust_gateway_policy` (derived from provider schema).
@immutable
final class ZeroTrustGatewayPolicyRuleSettingsResolveDnsInternally {
  const ZeroTrustGatewayPolicyRuleSettingsResolveDnsInternally({
    this.fallback,
    this.viewId,
  });

  final TfArg<String>? fallback;

  final TfArg<String>? viewId;

  Map<String, Object?> encode() => {
    if (fallback != null) 'fallback': fallback!.toTfJson(),
    if (viewId != null) 'view_id': viewId!.toTfJson(),
  };
}

/// Typed helper for the `rule_settings.untrusted_cert` block of
/// `cloudflare_zero_trust_gateway_policy` (derived from provider schema).
@immutable
final class ZeroTrustGatewayPolicyRuleSettingsUntrustedCert {
  const ZeroTrustGatewayPolicyRuleSettingsUntrustedCert({this.action});

  final TfArg<String>? action;

  Map<String, Object?> encode() => {
    if (action != null) 'action': action!.toTfJson(),
  };
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

  Map<String, Object?> encode() => {
    if (fri != null) 'fri': fri!.toTfJson(),
    if (mon != null) 'mon': mon!.toTfJson(),
    if (sat != null) 'sat': sat!.toTfJson(),
    if (sun != null) 'sun': sun!.toTfJson(),
    if (thu != null) 'thu': thu!.toTfJson(),
    if (timeZone != null) 'time_zone': timeZone!.toTfJson(),
    if (tue != null) 'tue': tue!.toTfJson(),
    if (wed != null) 'wed': wed!.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_zero_trust_gateway_policy`.
final class CloudflareZeroTrustGatewayPolicy extends Resource {
  static const String tfType = 'cloudflare_zero_trust_gateway_policy';

  CloudflareZeroTrustGatewayPolicy({
    required super.localName,
    required TfArg<String> accountId,
    required TfArg<String> action,
    TfArg<String>? description,
    TfArg<String>? devicePosture,
    TfArg<bool>? enabled,
    TfArg<List<String>>? filters,
    TfArg<String>? identity,
    required TfArg<String> name,
    TfArg<num>? precedence,
    TfArg<String>? traffic,
    ZeroTrustGatewayPolicyExpiration? expiration,
    ZeroTrustGatewayPolicyRuleSettings? ruleSettings,
    ZeroTrustGatewayPolicySchedule? schedule,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           'action': action,
           if (description != null) 'description': description,
           if (devicePosture != null) 'device_posture': devicePosture,
           if (enabled != null) 'enabled': enabled,
           if (filters != null) 'filters': filters,
           if (identity != null) 'identity': identity,
           'name': name,
           if (precedence != null) 'precedence': precedence,
           if (traffic != null) 'traffic': traffic,
           if (expiration != null)
             'expiration': TfArg.literal(expiration.encode()),
           if (ruleSettings != null)
             'rule_settings': TfArg.literal(ruleSettings.encode()),
           if (schedule != null) 'schedule': TfArg.literal(schedule.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareZeroTrustGatewayPolicySensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

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
}

// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_zero_trust_gateway_settings`.
const Set<String> _cloudflareZeroTrustGatewaySettingsSensitive = <String>{};

/// Typed helper for the `settings` block of
/// `cloudflare_zero_trust_gateway_settings` (derived from provider schema).
@immutable
final class ZeroTrustGatewaySettingsSettings {
  const ZeroTrustGatewaySettingsSettings({
    this.maxTtlSecs,
    this.activityLog,
    this.antivirus,
    this.blockPage,
    this.bodyScanning,
    this.browserIsolation,
    this.certificate,
    this.customCertificate,
    this.extendedEmailMatching,
    this.fips,
    this.hostSelector,
    this.inspection,
    this.protocolDetection,
    this.sandbox,
    this.tlsDecrypt,
  });

  final TfArg<num>? maxTtlSecs;

  final ZeroTrustGatewaySettingsSettingsActivityLog? activityLog;

  final ZeroTrustGatewaySettingsSettingsAntivirus? antivirus;

  final ZeroTrustGatewaySettingsSettingsBlockPage? blockPage;

  final ZeroTrustGatewaySettingsSettingsBodyScanning? bodyScanning;

  final ZeroTrustGatewaySettingsSettingsBrowserIsolation? browserIsolation;

  final ZeroTrustGatewaySettingsSettingsCertificate? certificate;

  final ZeroTrustGatewaySettingsSettingsCustomCertificate? customCertificate;

  final ZeroTrustGatewaySettingsSettingsExtendedEmailMatching?
  extendedEmailMatching;

  final ZeroTrustGatewaySettingsSettingsFips? fips;

  final ZeroTrustGatewaySettingsSettingsHostSelector? hostSelector;

  final ZeroTrustGatewaySettingsSettingsInspection? inspection;

  final ZeroTrustGatewaySettingsSettingsProtocolDetection? protocolDetection;

  final ZeroTrustGatewaySettingsSettingsSandbox? sandbox;

  final ZeroTrustGatewaySettingsSettingsTlsDecrypt? tlsDecrypt;

  Map<String, Object?> encode() => {
    if (maxTtlSecs != null) 'max_ttl_secs': maxTtlSecs!.toTfJson(),
    if (activityLog != null) 'activity_log': activityLog!.encode(),
    if (antivirus != null) 'antivirus': antivirus!.encode(),
    if (blockPage != null) 'block_page': blockPage!.encode(),
    if (bodyScanning != null) 'body_scanning': bodyScanning!.encode(),
    if (browserIsolation != null)
      'browser_isolation': browserIsolation!.encode(),
    if (certificate != null) 'certificate': certificate!.encode(),
    if (customCertificate != null)
      'custom_certificate': customCertificate!.encode(),
    if (extendedEmailMatching != null)
      'extended_email_matching': extendedEmailMatching!.encode(),
    if (fips != null) 'fips': fips!.encode(),
    if (hostSelector != null) 'host_selector': hostSelector!.encode(),
    if (inspection != null) 'inspection': inspection!.encode(),
    if (protocolDetection != null)
      'protocol_detection': protocolDetection!.encode(),
    if (sandbox != null) 'sandbox': sandbox!.encode(),
    if (tlsDecrypt != null) 'tls_decrypt': tlsDecrypt!.encode(),
  };
}

/// Typed helper for the `settings.activity_log` block of
/// `cloudflare_zero_trust_gateway_settings` (derived from provider schema).
@immutable
final class ZeroTrustGatewaySettingsSettingsActivityLog {
  const ZeroTrustGatewaySettingsSettingsActivityLog({this.enabled});

  final TfArg<bool>? enabled;

  Map<String, Object?> encode() => {
    if (enabled != null) 'enabled': enabled!.toTfJson(),
  };
}

/// Typed helper for the `settings.antivirus` block of
/// `cloudflare_zero_trust_gateway_settings` (derived from provider schema).
@immutable
final class ZeroTrustGatewaySettingsSettingsAntivirus {
  const ZeroTrustGatewaySettingsSettingsAntivirus({
    this.enabledDownloadPhase,
    this.enabledUploadPhase,
    this.failClosed,
    this.notificationSettings,
  });

  final TfArg<bool>? enabledDownloadPhase;

  final TfArg<bool>? enabledUploadPhase;

  final TfArg<bool>? failClosed;

  final ZeroTrustGatewaySettingsSettingsAntivirusNotificationSettings?
  notificationSettings;

  Map<String, Object?> encode() => {
    if (enabledDownloadPhase != null)
      'enabled_download_phase': enabledDownloadPhase!.toTfJson(),
    if (enabledUploadPhase != null)
      'enabled_upload_phase': enabledUploadPhase!.toTfJson(),
    if (failClosed != null) 'fail_closed': failClosed!.toTfJson(),
    if (notificationSettings != null)
      'notification_settings': notificationSettings!.encode(),
  };
}

/// Typed helper for the `settings.antivirus.notification_settings` block of
/// `cloudflare_zero_trust_gateway_settings` (derived from provider schema).
@immutable
final class ZeroTrustGatewaySettingsSettingsAntivirusNotificationSettings {
  const ZeroTrustGatewaySettingsSettingsAntivirusNotificationSettings({
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

/// Typed helper for the `settings.block_page` block of
/// `cloudflare_zero_trust_gateway_settings` (derived from provider schema).
@immutable
final class ZeroTrustGatewaySettingsSettingsBlockPage {
  const ZeroTrustGatewaySettingsSettingsBlockPage({
    this.backgroundColor,
    this.enabled,
    this.footerText,
    this.headerText,
    this.includeContext,
    this.logoPath,
    this.mailtoAddress,
    this.mailtoSubject,
    this.mode,
    this.name,
    this.readOnly,
    this.sourceAccount,
    this.suppressFooter,
    this.targetUri,
    this.version,
  });

  final TfArg<String>? backgroundColor;

  final TfArg<bool>? enabled;

  final TfArg<String>? footerText;

  final TfArg<String>? headerText;

  final TfArg<bool>? includeContext;

  final TfArg<String>? logoPath;

  final TfArg<String>? mailtoAddress;

  final TfArg<String>? mailtoSubject;

  final TfArg<String>? mode;

  final TfArg<String>? name;

  final TfArg<bool>? readOnly;

  final TfArg<String>? sourceAccount;

  final TfArg<bool>? suppressFooter;

  final TfArg<String>? targetUri;

  final TfArg<num>? version;

  Map<String, Object?> encode() => {
    if (backgroundColor != null)
      'background_color': backgroundColor!.toTfJson(),
    if (enabled != null) 'enabled': enabled!.toTfJson(),
    if (footerText != null) 'footer_text': footerText!.toTfJson(),
    if (headerText != null) 'header_text': headerText!.toTfJson(),
    if (includeContext != null) 'include_context': includeContext!.toTfJson(),
    if (logoPath != null) 'logo_path': logoPath!.toTfJson(),
    if (mailtoAddress != null) 'mailto_address': mailtoAddress!.toTfJson(),
    if (mailtoSubject != null) 'mailto_subject': mailtoSubject!.toTfJson(),
    if (mode != null) 'mode': mode!.toTfJson(),
    if (name != null) 'name': name!.toTfJson(),
    if (readOnly != null) 'read_only': readOnly!.toTfJson(),
    if (sourceAccount != null) 'source_account': sourceAccount!.toTfJson(),
    if (suppressFooter != null) 'suppress_footer': suppressFooter!.toTfJson(),
    if (targetUri != null) 'target_uri': targetUri!.toTfJson(),
    if (version != null) 'version': version!.toTfJson(),
  };
}

/// Typed helper for the `settings.body_scanning` block of
/// `cloudflare_zero_trust_gateway_settings` (derived from provider schema).
@immutable
final class ZeroTrustGatewaySettingsSettingsBodyScanning {
  const ZeroTrustGatewaySettingsSettingsBodyScanning({this.inspectionMode});

  final TfArg<String>? inspectionMode;

  Map<String, Object?> encode() => {
    if (inspectionMode != null) 'inspection_mode': inspectionMode!.toTfJson(),
  };
}

/// Typed helper for the `settings.browser_isolation` block of
/// `cloudflare_zero_trust_gateway_settings` (derived from provider schema).
@immutable
final class ZeroTrustGatewaySettingsSettingsBrowserIsolation {
  const ZeroTrustGatewaySettingsSettingsBrowserIsolation({
    this.nonIdentityEnabled,
    this.urlBrowserIsolationEnabled,
  });

  final TfArg<bool>? nonIdentityEnabled;

  final TfArg<bool>? urlBrowserIsolationEnabled;

  Map<String, Object?> encode() => {
    if (nonIdentityEnabled != null)
      'non_identity_enabled': nonIdentityEnabled!.toTfJson(),
    if (urlBrowserIsolationEnabled != null)
      'url_browser_isolation_enabled': urlBrowserIsolationEnabled!.toTfJson(),
  };
}

/// Typed helper for the `settings.certificate` block of
/// `cloudflare_zero_trust_gateway_settings` (derived from provider schema).
@immutable
final class ZeroTrustGatewaySettingsSettingsCertificate {
  const ZeroTrustGatewaySettingsSettingsCertificate({required this.id});

  final TfArg<String> id;

  Map<String, Object?> encode() => {'id': id.toTfJson()};
}

/// Typed helper for the `settings.custom_certificate` block of
/// `cloudflare_zero_trust_gateway_settings` (derived from provider schema).
@immutable
final class ZeroTrustGatewaySettingsSettingsCustomCertificate {
  const ZeroTrustGatewaySettingsSettingsCustomCertificate({
    this.bindingStatus,
    required this.enabled,
    this.id,
    this.updatedAt,
  });

  final TfArg<String>? bindingStatus;

  final TfArg<bool> enabled;

  final TfArg<String>? id;

  final TfArg<String>? updatedAt;

  Map<String, Object?> encode() => {
    if (bindingStatus != null) 'binding_status': bindingStatus!.toTfJson(),
    'enabled': enabled.toTfJson(),
    if (id != null) 'id': id!.toTfJson(),
    if (updatedAt != null) 'updated_at': updatedAt!.toTfJson(),
  };
}

/// Typed helper for the `settings.extended_email_matching` block of
/// `cloudflare_zero_trust_gateway_settings` (derived from provider schema).
@immutable
final class ZeroTrustGatewaySettingsSettingsExtendedEmailMatching {
  const ZeroTrustGatewaySettingsSettingsExtendedEmailMatching({this.enabled});

  final TfArg<bool>? enabled;

  Map<String, Object?> encode() => {
    if (enabled != null) 'enabled': enabled!.toTfJson(),
  };
}

/// Typed helper for the `settings.fips` block of
/// `cloudflare_zero_trust_gateway_settings` (derived from provider schema).
@immutable
final class ZeroTrustGatewaySettingsSettingsFips {
  const ZeroTrustGatewaySettingsSettingsFips({this.tls});

  final TfArg<bool>? tls;

  Map<String, Object?> encode() => {if (tls != null) 'tls': tls!.toTfJson()};
}

/// Typed helper for the `settings.host_selector` block of
/// `cloudflare_zero_trust_gateway_settings` (derived from provider schema).
@immutable
final class ZeroTrustGatewaySettingsSettingsHostSelector {
  const ZeroTrustGatewaySettingsSettingsHostSelector({this.enabled});

  final TfArg<bool>? enabled;

  Map<String, Object?> encode() => {
    if (enabled != null) 'enabled': enabled!.toTfJson(),
  };
}

/// Typed helper for the `settings.inspection` block of
/// `cloudflare_zero_trust_gateway_settings` (derived from provider schema).
@immutable
final class ZeroTrustGatewaySettingsSettingsInspection {
  const ZeroTrustGatewaySettingsSettingsInspection({this.mode});

  final TfArg<String>? mode;

  Map<String, Object?> encode() => {if (mode != null) 'mode': mode!.toTfJson()};
}

/// Typed helper for the `settings.protocol_detection` block of
/// `cloudflare_zero_trust_gateway_settings` (derived from provider schema).
@immutable
final class ZeroTrustGatewaySettingsSettingsProtocolDetection {
  const ZeroTrustGatewaySettingsSettingsProtocolDetection({this.enabled});

  final TfArg<bool>? enabled;

  Map<String, Object?> encode() => {
    if (enabled != null) 'enabled': enabled!.toTfJson(),
  };
}

/// Typed helper for the `settings.sandbox` block of
/// `cloudflare_zero_trust_gateway_settings` (derived from provider schema).
@immutable
final class ZeroTrustGatewaySettingsSettingsSandbox {
  const ZeroTrustGatewaySettingsSettingsSandbox({
    this.enabled,
    this.fallbackAction,
  });

  final TfArg<bool>? enabled;

  final TfArg<String>? fallbackAction;

  Map<String, Object?> encode() => {
    if (enabled != null) 'enabled': enabled!.toTfJson(),
    if (fallbackAction != null) 'fallback_action': fallbackAction!.toTfJson(),
  };
}

/// Typed helper for the `settings.tls_decrypt` block of
/// `cloudflare_zero_trust_gateway_settings` (derived from provider schema).
@immutable
final class ZeroTrustGatewaySettingsSettingsTlsDecrypt {
  const ZeroTrustGatewaySettingsSettingsTlsDecrypt({this.enabled});

  final TfArg<bool>? enabled;

  Map<String, Object?> encode() => {
    if (enabled != null) 'enabled': enabled!.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_zero_trust_gateway_settings`.
final class CloudflareZeroTrustGatewaySettings extends Resource {
  static const String tfType = 'cloudflare_zero_trust_gateway_settings';

  CloudflareZeroTrustGatewaySettings({
    required super.localName,
    required TfArg<String> accountId,
    ZeroTrustGatewaySettingsSettings? settings,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           if (settings != null) 'settings': TfArg.literal(settings.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustGatewaySettingsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');
}

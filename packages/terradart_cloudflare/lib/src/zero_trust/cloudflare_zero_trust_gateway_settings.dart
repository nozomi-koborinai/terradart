// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_zero_trust_gateway_settings`.
const Set<String> _cloudflareZeroTrustGatewaySettingsSensitive = <String>{};

/// Typed helper for the `settings` block of
/// `cloudflare_zero_trust_gateway_settings` (derived from provider schema).
@immutable
final class ZeroTrustGatewaySettings {
  const ZeroTrustGatewaySettings({
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

  final ZeroTrustGatewaySettingsActivityLog? activityLog;

  final ZeroTrustGatewaySettingsAntivirus? antivirus;

  final ZeroTrustGatewaySettingsBlockPage? blockPage;

  final ZeroTrustGatewaySettingsBodyScanning? bodyScanning;

  final ZeroTrustGatewaySettingsBrowserIsolation? browserIsolation;

  final ZeroTrustGatewaySettingsCertificate? certificate;

  final ZeroTrustGatewaySettingsCustomCertificate? customCertificate;

  final ZeroTrustGatewaySettingsExtendedEmailMatching? extendedEmailMatching;

  final ZeroTrustGatewaySettingsFips? fips;

  final ZeroTrustGatewaySettingsHostSelector? hostSelector;

  final ZeroTrustGatewaySettingsInspection? inspection;

  final ZeroTrustGatewaySettingsProtocolDetection? protocolDetection;

  final ZeroTrustGatewaySettingsSandbox? sandbox;

  final ZeroTrustGatewaySettingsTlsDecrypt? tlsDecrypt;

  Map<String, Object?> encode() => {
    'max_ttl_secs': ?maxTtlSecs?.toTfJson(),
    'activity_log': ?activityLog?.encode(),
    'antivirus': ?antivirus?.encode(),
    'block_page': ?blockPage?.encode(),
    'body_scanning': ?bodyScanning?.encode(),
    'browser_isolation': ?browserIsolation?.encode(),
    'certificate': ?certificate?.encode(),
    'custom_certificate': ?customCertificate?.encode(),
    'extended_email_matching': ?extendedEmailMatching?.encode(),
    'fips': ?fips?.encode(),
    'host_selector': ?hostSelector?.encode(),
    'inspection': ?inspection?.encode(),
    'protocol_detection': ?protocolDetection?.encode(),
    'sandbox': ?sandbox?.encode(),
    'tls_decrypt': ?tlsDecrypt?.encode(),
  };
}

/// Typed helper for the `settings.activity_log` block of
/// `cloudflare_zero_trust_gateway_settings` (derived from provider schema).
@immutable
final class ZeroTrustGatewaySettingsActivityLog {
  const ZeroTrustGatewaySettingsActivityLog({this.enabled});

  final TfArg<bool>? enabled;

  Map<String, Object?> encode() => {'enabled': ?enabled?.toTfJson()};
}

/// Typed helper for the `settings.antivirus` block of
/// `cloudflare_zero_trust_gateway_settings` (derived from provider schema).
@immutable
final class ZeroTrustGatewaySettingsAntivirus {
  const ZeroTrustGatewaySettingsAntivirus({
    this.enabledDownloadPhase,
    this.enabledUploadPhase,
    this.failClosed,
    this.notificationSettings,
  });

  final TfArg<bool>? enabledDownloadPhase;

  final TfArg<bool>? enabledUploadPhase;

  final TfArg<bool>? failClosed;

  final ZeroTrustGatewaySettingsNotificationSettings? notificationSettings;

  Map<String, Object?> encode() => {
    'enabled_download_phase': ?enabledDownloadPhase?.toTfJson(),
    'enabled_upload_phase': ?enabledUploadPhase?.toTfJson(),
    'fail_closed': ?failClosed?.toTfJson(),
    'notification_settings': ?notificationSettings?.encode(),
  };
}

/// Typed helper for the `settings.antivirus.notification_settings` block of
/// `cloudflare_zero_trust_gateway_settings` (derived from provider schema).
@immutable
final class ZeroTrustGatewaySettingsNotificationSettings {
  const ZeroTrustGatewaySettingsNotificationSettings({
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
    'enabled': ?enabled?.toTfJson(),
    'include_context': ?includeContext?.toTfJson(),
    'msg': ?msg?.toTfJson(),
    'support_url': ?supportUrl?.toTfJson(),
  };
}

/// Typed helper for the `settings.block_page` block of
/// `cloudflare_zero_trust_gateway_settings` (derived from provider schema).
@immutable
final class ZeroTrustGatewaySettingsBlockPage {
  const ZeroTrustGatewaySettingsBlockPage({
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

  final TfArg<ZeroTrustGatewaySettingsBlockPageMode>? mode;

  final TfArg<String>? name;

  final TfArg<bool>? readOnly;

  final TfArg<String>? sourceAccount;

  final TfArg<bool>? suppressFooter;

  final TfArg<String>? targetUri;

  final TfArg<num>? version;

  Map<String, Object?> encode() => {
    'background_color': ?backgroundColor?.toTfJson(),
    'enabled': ?enabled?.toTfJson(),
    'footer_text': ?footerText?.toTfJson(),
    'header_text': ?headerText?.toTfJson(),
    'include_context': ?includeContext?.toTfJson(),
    'logo_path': ?logoPath?.toTfJson(),
    'mailto_address': ?mailtoAddress?.toTfJson(),
    'mailto_subject': ?mailtoSubject?.toTfJson(),
    'mode': ?mode?.toTfJson(),
    'name': ?name?.toTfJson(),
    'read_only': ?readOnly?.toTfJson(),
    'source_account': ?sourceAccount?.toTfJson(),
    'suppress_footer': ?suppressFooter?.toTfJson(),
    'target_uri': ?targetUri?.toTfJson(),
    'version': ?version?.toTfJson(),
  };
}

/// `mode` — derived from the provider schema description.
enum ZeroTrustGatewaySettingsBlockPageMode implements TerraformEnum {
  empty(''),
  customizedBlockPage('customized_block_page'),
  redirectUri('redirect_uri');

  const ZeroTrustGatewaySettingsBlockPageMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `settings.body_scanning` block of
/// `cloudflare_zero_trust_gateway_settings` (derived from provider schema).
@immutable
final class ZeroTrustGatewaySettingsBodyScanning {
  const ZeroTrustGatewaySettingsBodyScanning({this.inspectionMode});

  final TfArg<ZeroTrustGatewaySettingsBodyScanningInspectionMode>?
  inspectionMode;

  Map<String, Object?> encode() => {
    'inspection_mode': ?inspectionMode?.toTfJson(),
  };
}

/// `inspection_mode` — derived from the provider schema description.
enum ZeroTrustGatewaySettingsBodyScanningInspectionMode
    implements TerraformEnum {
  deep('deep'),
  shallow('shallow');

  const ZeroTrustGatewaySettingsBodyScanningInspectionMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `settings.browser_isolation` block of
/// `cloudflare_zero_trust_gateway_settings` (derived from provider schema).
@immutable
final class ZeroTrustGatewaySettingsBrowserIsolation {
  const ZeroTrustGatewaySettingsBrowserIsolation({
    this.nonIdentityEnabled,
    this.urlBrowserIsolationEnabled,
  });

  final TfArg<bool>? nonIdentityEnabled;

  final TfArg<bool>? urlBrowserIsolationEnabled;

  Map<String, Object?> encode() => {
    'non_identity_enabled': ?nonIdentityEnabled?.toTfJson(),
    'url_browser_isolation_enabled': ?urlBrowserIsolationEnabled?.toTfJson(),
  };
}

/// Typed helper for the `settings.certificate` block of
/// `cloudflare_zero_trust_gateway_settings` (derived from provider schema).
@immutable
final class ZeroTrustGatewaySettingsCertificate {
  const ZeroTrustGatewaySettingsCertificate({required this.id});

  final TfArg<String> id;

  Map<String, Object?> encode() => {'id': id.toTfJson()};
}

/// Typed helper for the `settings.custom_certificate` block of
/// `cloudflare_zero_trust_gateway_settings` (derived from provider schema).
@immutable
final class ZeroTrustGatewaySettingsCustomCertificate {
  const ZeroTrustGatewaySettingsCustomCertificate({
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
    'binding_status': ?bindingStatus?.toTfJson(),
    'enabled': enabled.toTfJson(),
    'id': ?id?.toTfJson(),
    'updated_at': ?updatedAt?.toTfJson(),
  };
}

/// Typed helper for the `settings.extended_email_matching` block of
/// `cloudflare_zero_trust_gateway_settings` (derived from provider schema).
@immutable
final class ZeroTrustGatewaySettingsExtendedEmailMatching {
  const ZeroTrustGatewaySettingsExtendedEmailMatching({this.enabled});

  final TfArg<bool>? enabled;

  Map<String, Object?> encode() => {'enabled': ?enabled?.toTfJson()};
}

/// Typed helper for the `settings.fips` block of
/// `cloudflare_zero_trust_gateway_settings` (derived from provider schema).
@immutable
final class ZeroTrustGatewaySettingsFips {
  const ZeroTrustGatewaySettingsFips({this.tls});

  final TfArg<bool>? tls;

  Map<String, Object?> encode() => {'tls': ?tls?.toTfJson()};
}

/// Typed helper for the `settings.host_selector` block of
/// `cloudflare_zero_trust_gateway_settings` (derived from provider schema).
@immutable
final class ZeroTrustGatewaySettingsHostSelector {
  const ZeroTrustGatewaySettingsHostSelector({this.enabled});

  final TfArg<bool>? enabled;

  Map<String, Object?> encode() => {'enabled': ?enabled?.toTfJson()};
}

/// Typed helper for the `settings.inspection` block of
/// `cloudflare_zero_trust_gateway_settings` (derived from provider schema).
@immutable
final class ZeroTrustGatewaySettingsInspection {
  const ZeroTrustGatewaySettingsInspection({this.mode});

  final TfArg<ZeroTrustGatewaySettingsSettingsMode>? mode;

  Map<String, Object?> encode() => {'mode': ?mode?.toTfJson()};
}

/// `mode` — derived from the provider schema description.
enum ZeroTrustGatewaySettingsSettingsMode implements TerraformEnum {
  static('static'),
  dynamic('dynamic');

  const ZeroTrustGatewaySettingsSettingsMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `settings.protocol_detection` block of
/// `cloudflare_zero_trust_gateway_settings` (derived from provider schema).
@immutable
final class ZeroTrustGatewaySettingsProtocolDetection {
  const ZeroTrustGatewaySettingsProtocolDetection({this.enabled});

  final TfArg<bool>? enabled;

  Map<String, Object?> encode() => {'enabled': ?enabled?.toTfJson()};
}

/// Typed helper for the `settings.sandbox` block of
/// `cloudflare_zero_trust_gateway_settings` (derived from provider schema).
@immutable
final class ZeroTrustGatewaySettingsSandbox {
  const ZeroTrustGatewaySettingsSandbox({this.enabled, this.fallbackAction});

  final TfArg<bool>? enabled;

  final TfArg<ZeroTrustGatewaySettingsFallbackAction>? fallbackAction;

  Map<String, Object?> encode() => {
    'enabled': ?enabled?.toTfJson(),
    'fallback_action': ?fallbackAction?.toTfJson(),
  };
}

/// `fallback_action` — derived from the provider schema description.
enum ZeroTrustGatewaySettingsFallbackAction implements TerraformEnum {
  allow('allow'),
  block('block');

  const ZeroTrustGatewaySettingsFallbackAction(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `settings.tls_decrypt` block of
/// `cloudflare_zero_trust_gateway_settings` (derived from provider schema).
@immutable
final class ZeroTrustGatewaySettingsTlsDecrypt {
  const ZeroTrustGatewaySettingsTlsDecrypt({this.enabled});

  final TfArg<bool>? enabled;

  Map<String, Object?> encode() => {'enabled': ?enabled?.toTfJson()};
}

/// Factory wrapper for `cloudflare_zero_trust_gateway_settings`.
final class CloudflareZeroTrustGatewaySettings extends Resource {
  static const String tfType = 'cloudflare_zero_trust_gateway_settings';

  CloudflareZeroTrustGatewaySettings({
    required super.localName,
    required RefTo<CloudflareAccount> accountId,
    ZeroTrustGatewaySettings? settings,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           if (settings != null) 'settings': TfArg.literal(settings.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustGatewaySettingsSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareZeroTrustGatewaySettings>`.
  RefTo<CloudflareZeroTrustGatewaySettings> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');
}

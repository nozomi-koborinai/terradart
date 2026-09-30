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
final class ZeroTrustGatewaySettingsSettingsActivityLog {
  const ZeroTrustGatewaySettingsSettingsActivityLog({this.enabled});

  final TfArg<bool>? enabled;

  Map<String, Object?> encode() => {'enabled': ?enabled?.toTfJson()};
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
    'enabled_download_phase': ?enabledDownloadPhase?.toTfJson(),
    'enabled_upload_phase': ?enabledUploadPhase?.toTfJson(),
    'fail_closed': ?failClosed?.toTfJson(),
    'notification_settings': ?notificationSettings?.encode(),
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
    'enabled': ?enabled?.toTfJson(),
    'include_context': ?includeContext?.toTfJson(),
    'msg': ?msg?.toTfJson(),
    'support_url': ?supportUrl?.toTfJson(),
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

  final TfArg<ZeroTrustGatewaySettingsSettingsBlockPageMode>? mode;

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
enum ZeroTrustGatewaySettingsSettingsBlockPageMode implements TerraformEnum {
  empty(''),
  customizedBlockPage('customized_block_page'),
  redirectUri('redirect_uri');

  const ZeroTrustGatewaySettingsSettingsBlockPageMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `settings.body_scanning` block of
/// `cloudflare_zero_trust_gateway_settings` (derived from provider schema).
@immutable
final class ZeroTrustGatewaySettingsSettingsBodyScanning {
  const ZeroTrustGatewaySettingsSettingsBodyScanning({this.inspectionMode});

  final TfArg<ZeroTrustGatewaySettingsSettingsBodyScanningInspectionMode>?
  inspectionMode;

  Map<String, Object?> encode() => {
    'inspection_mode': ?inspectionMode?.toTfJson(),
  };
}

/// `inspection_mode` — derived from the provider schema description.
enum ZeroTrustGatewaySettingsSettingsBodyScanningInspectionMode
    implements TerraformEnum {
  deep('deep'),
  shallow('shallow');

  const ZeroTrustGatewaySettingsSettingsBodyScanningInspectionMode(
    this.terraformValue,
  );
  @override
  final String terraformValue;
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
    'non_identity_enabled': ?nonIdentityEnabled?.toTfJson(),
    'url_browser_isolation_enabled': ?urlBrowserIsolationEnabled?.toTfJson(),
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
    'binding_status': ?bindingStatus?.toTfJson(),
    'enabled': enabled.toTfJson(),
    'id': ?id?.toTfJson(),
    'updated_at': ?updatedAt?.toTfJson(),
  };
}

/// Typed helper for the `settings.extended_email_matching` block of
/// `cloudflare_zero_trust_gateway_settings` (derived from provider schema).
@immutable
final class ZeroTrustGatewaySettingsSettingsExtendedEmailMatching {
  const ZeroTrustGatewaySettingsSettingsExtendedEmailMatching({this.enabled});

  final TfArg<bool>? enabled;

  Map<String, Object?> encode() => {'enabled': ?enabled?.toTfJson()};
}

/// Typed helper for the `settings.fips` block of
/// `cloudflare_zero_trust_gateway_settings` (derived from provider schema).
@immutable
final class ZeroTrustGatewaySettingsSettingsFips {
  const ZeroTrustGatewaySettingsSettingsFips({this.tls});

  final TfArg<bool>? tls;

  Map<String, Object?> encode() => {'tls': ?tls?.toTfJson()};
}

/// Typed helper for the `settings.host_selector` block of
/// `cloudflare_zero_trust_gateway_settings` (derived from provider schema).
@immutable
final class ZeroTrustGatewaySettingsSettingsHostSelector {
  const ZeroTrustGatewaySettingsSettingsHostSelector({this.enabled});

  final TfArg<bool>? enabled;

  Map<String, Object?> encode() => {'enabled': ?enabled?.toTfJson()};
}

/// Typed helper for the `settings.inspection` block of
/// `cloudflare_zero_trust_gateway_settings` (derived from provider schema).
@immutable
final class ZeroTrustGatewaySettingsSettingsInspection {
  const ZeroTrustGatewaySettingsSettingsInspection({this.mode});

  final TfArg<ZeroTrustGatewaySettingsSettingsInspectionMode>? mode;

  Map<String, Object?> encode() => {'mode': ?mode?.toTfJson()};
}

/// `mode` — derived from the provider schema description.
enum ZeroTrustGatewaySettingsSettingsInspectionMode implements TerraformEnum {
  static('static'),
  dynamic('dynamic');

  const ZeroTrustGatewaySettingsSettingsInspectionMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `settings.protocol_detection` block of
/// `cloudflare_zero_trust_gateway_settings` (derived from provider schema).
@immutable
final class ZeroTrustGatewaySettingsSettingsProtocolDetection {
  const ZeroTrustGatewaySettingsSettingsProtocolDetection({this.enabled});

  final TfArg<bool>? enabled;

  Map<String, Object?> encode() => {'enabled': ?enabled?.toTfJson()};
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

  final TfArg<ZeroTrustGatewaySettingsSettingsSandboxFallbackAction>?
  fallbackAction;

  Map<String, Object?> encode() => {
    'enabled': ?enabled?.toTfJson(),
    'fallback_action': ?fallbackAction?.toTfJson(),
  };
}

/// `fallback_action` — derived from the provider schema description.
enum ZeroTrustGatewaySettingsSettingsSandboxFallbackAction
    implements TerraformEnum {
  allow('allow'),
  block('block');

  const ZeroTrustGatewaySettingsSettingsSandboxFallbackAction(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `settings.tls_decrypt` block of
/// `cloudflare_zero_trust_gateway_settings` (derived from provider schema).
@immutable
final class ZeroTrustGatewaySettingsSettingsTlsDecrypt {
  const ZeroTrustGatewaySettingsSettingsTlsDecrypt({this.enabled});

  final TfArg<bool>? enabled;

  Map<String, Object?> encode() => {'enabled': ?enabled?.toTfJson()};
}

/// Factory wrapper for `cloudflare_zero_trust_gateway_settings`.
final class CloudflareZeroTrustGatewaySettings extends Resource {
  static const String tfType = 'cloudflare_zero_trust_gateway_settings';

  CloudflareZeroTrustGatewaySettings({
    required super.localName,
    required RefTo<CloudflareAccount> accountId,
    ZeroTrustGatewaySettingsSettings? settings,
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
  TfRef<String> get accountIdRef => TfRef.attribute<String>(this, 'account_id');
}
